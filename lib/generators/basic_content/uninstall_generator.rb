module BasicContent
  module Generators
    class UninstallGenerator < Rails::Generators::Base
      desc "Remove views from your application."

      def remove_views
        %w{image_text text web}.each do |f|
          file = f.concat ".html.erb"
          remove_file "app/views/pages/content/_#{file}"
        end
      end
    end
  end
end
