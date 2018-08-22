class Create<%= @scope_prefix %> < ActiveRecord::Migration
  def change
    create_table :<%= @scope_prefix.underscore %> do |t|
      t.references <%= @parent_prefix.to_sym %>, index: true
    end
  end
end