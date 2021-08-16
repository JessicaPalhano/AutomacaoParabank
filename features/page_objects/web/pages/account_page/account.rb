Dir[File.join(File.dirname(__FILE__), '../../sections/*/*.rb')].sort.each { |file| require file }

module Web
  module Pages
    module Account
      class Account < SitePrism::Page
        set_url '/overview.htm'

        element :message_welcome, '.smallText'

      end
    end
  end
end
