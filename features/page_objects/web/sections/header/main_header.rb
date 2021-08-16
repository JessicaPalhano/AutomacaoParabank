module Web
  module Sections
    module Header
      class MainHeader < SitePrism::Section


        elements :list_menu, '.leftmenu li'
        elements :list_btn, '.button li'

        element :input_username, 'input[name="username"]'
        element :input_password, '[name="password"]'
        element :btn_login, '.login .button'


      end
    end
  end
end
