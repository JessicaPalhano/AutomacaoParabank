Dir[File.join(File.dirname(__FILE__), '../../sections/*/*.rb')].sort.each { |file| require file }

module Web
  module Pages
    module Home
      class Home < SitePrism::Page
        set_url '/'

        section :header, Web::Sections::Header::MainHeader, '#mainPanel'
        section :footer, Web::Sections::Footer::Footer, '#footerPanel '

        def realizar_login(username, password)
          header.input_username.set username
          header.input_password.set password
          header.btn_login.click
        end

      end
    end
  end
end
