module Mongoid
  module Generators
    class DeviseGoogleAuthenticatorGenerator < Rails::Generators::NamedBase
      TEMPLATE='  # google_authenticator fields
  field  :gauth_secret, :type => String
  field  :gauth_enabled, :type => String, :default => "f"
  field  :gauth_tmp, :type => String
  field  :gauth_tmp_datetime, :type => Time

'
      PATTERN = "include Mongoid::Document\n"

      def copy_devise_migration

        path = File.join("app","models","#{file_path}.rb")
        inject_into_file(path, TEMPLATE, :after => PATTERN) if File.exists?(path)

  
  

      end
    end
  end
end
