module Mti
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path("../../templates", __FILE__)

    def copy_initializer
      template 'mti.rb', 'config/initializers/mti.rb'
    end
  end
end
