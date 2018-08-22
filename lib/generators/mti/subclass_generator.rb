require 'rails/generators/active_record'

module Mti
  class Subclass < Rails::Generators::Base
    include Rails::Generators::Migration

    source_root File.expand_path('../../templates', __FILE__)

    def self.next_migration_number(path)
      ActiveRecord::Generators::Base.next_migration_number(path)
    end


    argument :scope, required: true
    argument :parent, required: true

    def create_migration_file
      @scope_prefix = scope.pluralize
      @parent_prefix = parent.underscore
      migration_template 'subclass_migration.rb', "db/migrate/create_#{@scope_prefix.underscore}_.rb"
    end

  end
end

