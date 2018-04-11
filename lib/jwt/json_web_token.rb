class JsonWebToken
  def self.encode(payload)
    JWT.encode(payload, Rails.application.secrets.secret_key_base)
  end

  def self.decode(token)
    auth_token = JWT.decode(token, Rails.application.secrets.secret_key_base)
    return ActionController::Parameters.new(auth_token[0]).permit!
  rescue
    nil
  end
end