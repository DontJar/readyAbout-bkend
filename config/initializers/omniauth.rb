OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '1020525534277-nvd2ljrljsaq2571ueeebfjl09qf6ngf.apps.googleusercontent.com', 'RLnHJUTAXniiBS5UaUlKFG_O', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end
