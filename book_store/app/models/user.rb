class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable,
         :authentication_keys => [:email]
   #validation for the new user details
  has_many :books, dependent: :destroy
  #attr_accessor :login
  #attr_accessor :email, :password
  before_save   :downcase_email
  #before_create :create_confirmation_token
	validates :first_name,  presence: true, length: {maximum: 20}
	validates :last_name,  presence: true, length: {maximum: 20}
  VALID_EMAIL_REGEX = /\A[a-z\-]+@[a-z]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 50}, format: {with: VALID_EMAIL_REGEX}, uniqueness: { case_sensitive: false }
  #has_secure_password
  validates :password, presence: true, length: {is: 8}, format: {with: /\A(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[[:^alnum:]])/x, message: "it should have one lowercase letter,one upper case letter, a symbol and one number"}
  # Returns the hash digest of the given string.
  #def User.digest(string)
  #  cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
  #                                                BCrypt::Engine.cost
  #  BCrypt::Password.create(string, cost: cost)
  #end

  # Returns a random token.
  #def User.new_token
   # SecureRandom.urlsafe_base64
  #end 

   # Returns true if the given token matches the digest.
  #def authenticated?(attribute, token)
  #  digest = send("#{attribute}_digest")
  #  return false if digest.nil?
  #  BCrypt::Password.new(digest).is_password?(token)
  #end 	
#attributes of user activate and activated at are updated
  #def activate
  #  update_attribute(:confirmed,    true)
  #  update_attribute(:confirmed_at, Time.zone.now)
  #end

  # Sends activation email.
  #def send_activation_email
   #UserMailer.account_activation(self).deliver_now
  #end
  #def login=(login)
  #  @login = login
  #end

  #def login
  #  @login || self.email
  #end

  private

    # Converts email to all lower-case.
    def downcase_email
      self.email = email.downcase
    end

    # Creates and assigns the activation token and digest.
   # def create_confirmation_token
    #  self.confirmation_token   = User.new_token
     # self.confirmation_sent_at = Time.zone.now 
    #end

 # def confirm_by_token(confirmation_token)
 #   original_token     = confirmation_token
 #   confirmation_token = Devise.token_generator.digest(self, :confirmation_token)
 #   confirmable = find_or_initialize_with_error_by(:confirmation_token, original_token)
 #   confirmable.confirm! if confirmable.persisted?
 #   confirmable.confirmation_token = original_token
 #   confirmable
  #end

end
