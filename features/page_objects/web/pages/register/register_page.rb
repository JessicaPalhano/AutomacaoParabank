Dir[File.join(File.dirname(__FILE__), '../../sections/*/*.rb')].sort.each { |file| require file }

module Web
  module Pages
    module Register
      class Register < SitePrism::Page
        set_url '/register.htm'

        element :input_first_name, '[name="customer.firstName"]'
        element :input_last_name, '[name="customer.lastName"]'
        element :input_address, '[name="customer.address.street"]'
        element :input_city, '[name="customer.address.city"]'
        element :input_state, '[name="customer.address.state"]'
        element :input_zip_code, '[name="customer.address.zipCode"]'
        element :input_phone, '[name="customer.phoneNumber"]'
        element :input_ssn, '[name="customer.ssn"]'
        element :input_username, '[name="customer.username"]'
        element :input_password, '[name="customer.password"]'
        element :input_corfirm_password, '[name="repeatedPassword"]'
        element :btn_register, 'input[value="Register"]'
        element :message_erro, '.form2 .error'

        def cadastrar_usuario(usuario_valido)
          input_first_name.set usuario_valido[:first_name]
          input_last_name.set usuario_valido[:last_name]
          input_address.set usuario_valido[:adress]
          input_city.set usuario_valido[:city]
          input_state.set usuario_valido[:state]
          input_zip_code.set usuario_valido[:zip_code]
          input_phone.set usuario_valido[:phone]
          input_ssn.set usuario_valido[:ssn]
          input_username.set usuario_valido[:username]
          input_password.set usuario_valido[:password]
          input_corfirm_password.set usuario_valido[:confirm_password]
          btn_register.click
        end

        def cadastro_invalido(usuario_invalido)
          input_first_name.set usuario_invalido["first_name"]
          input_last_name.set usuario_invalido["last_name"]
          input_address.set usuario_invalido["address"]
          input_city.set usuario_invalido["city"]
          input_state.set usuario_invalido["state"]
          input_zip_code.set usuario_invalido["zip_code"]
          input_phone.set usuario_invalido["phone"]
          input_ssn.set usuario_invalido["ssn"]
          input_username.set usuario_invalido["username"]
          input_password.set usuario_invalido["password"]
          input_corfirm_password.set usuario_invalido["confirm_password"]
          btn_register.click
        end

      end
    end
  end
end
