module BasicContent
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../../../../app/views/basic_content', __FILE__)

      desc "Copies views and migrations to your application."

      def copy_views
        filename_pattern = File.join self.class.source_root, "*.html.erb"
        Dir.glob(filename_pattern).map {|f| File.basename f}.each do |f|
          copy_file f, "app/views/pages/content/#{f}"
        end
      end

      #def copy_migrations
        #rake("content_text:install:migrations")
      #end
    end
  end
end
