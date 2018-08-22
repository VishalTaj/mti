module Mti
  extend ActiveSupport::Concern

  included do
    attr_accessor :mti_models

    def self.has_subclass table
      @mti_models ||= []
      
      table_columns = table.to_s.camelize.constantize.column_names
                      .reject {|col| ["id", "#{self.to_s.underscore}_id"].include? col }
                      .compact

      @mti_models << table

      has_one table, autosave: true, dependent: :destroy
      
      table_columns.each do |col|
        delegate col.to_sym, "#{col}=".to_sym, to: table, allow_nil: true
      end
    end

    def self.create(attributes = nil, options = {}, &block)
      if attributes.is_a?(Array)
        attributes.collect { |attr| create(attr, options, &block) }
      else
        object = new(attributes, options)
        @mti_models.map {|model|
          mti_model_column = model.to_s.camelize.constantize.column_names 
          object.send("build_#{model.to_s}", attributes.reject {|key, val| val unless mti_model_column.include? key.to_s}) 
        }
        yield(object) if block_given?
        object.save
        object
      end
    end
  end
end
