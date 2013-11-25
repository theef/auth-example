class User

  # Mongoid
  include Mongoid::Document
  include Mongoid::Timestamps

  field :email,     type: String
  field :username,  type: String

  field :encrypted_password,      type: String, default: ""
  field :reset_password_token,    type: String
  field :reset_password_sent_at,  type: Time

  # Devise
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable
  
  
  # Validations
  validates :email, presence: true
  validates :username, presence: true
end
