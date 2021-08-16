Dir[File.join(File.dirname(__FILE__), 'page_objects/web/pages/*.rb')].sort.each { |file| require file }

module Web
  module Pages
    class WebPages
      class << self
        def home
          Web::Pages::Home::Home.new
        end

        def account
          Web::Pages::Account::Account.new
        end

        def register
          Web::Pages::Register::Register.new
        end

      end
    end
  end
end
