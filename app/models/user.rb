class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # has_many :uploads, dependent: :destroy
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: [:create , :update] }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,:validatable, :omniauthable#, :omniauth_providers => [:facebook]
  has_many :identities, :dependent => :destroy
  has_many :uploads, :dependent => :destroy
  has_many :messages, :dependent => :destroy
  # def update_with_password(params={})
  #   if params[:password].blank?
  #     params.delete(:password)
  #     params.delete(:password_confirmation) if params[:password_confirmation].blank?
  #   end
  #   update_attributes(params)
  # end
  # validates_presence_of   :email
  # validates_uniqueness_of :email, allow_blank: true, if: :email_changed?
  # validates_format_of     :email, with: Devise.email_regexp, allow_blank: true, if: :email_changed?
  # def self.from_omniauth(auth)
  #   where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
  #     user.email = auth.info.email
  #     user.password = Devise.friendly_token[0,20]
  #     # user.name = auth.info.name   # assuming the user model has a name
  #     # user.image = auth.info.image # assuming the user model has an image
  #   end
  # end

  def self.find_for_oauth(auth, signed_in_resource = nil)
    identity = Identity.find_for_oauth(auth)
    user = signed_in_resource ? signed_in_resource : identity.user
    if user.nil?
      name=auth.info.name
      email = auth.info.email
      user = User.where(:email => email).first if email
      if user.nil?
        user = User.new(
            name:auth.info.name,
            email: auth.info.email,
            password: Devise.friendly_token[0,20]

        )
        user.save!
      end
    end

    if identity.user != user
      identity.user = user
      identity.save!
    end
    user
  end

end
