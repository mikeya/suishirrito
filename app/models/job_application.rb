class JobApplication
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :name, :email, :phone, :address, :position, :location, :experience, :honeypot

  validates :name, presence: true, length: { maximum: 30 }
  validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates :phone, presence: true, length: { :minimum => 10, :maximum => 15 }
  validates :address, presence: true
  validates :position, presence: true
  validates :location, presence: true
  validates :experience, presence: true
  validates :honeypot, presence: false

  def initialize(params={})
    @name = params[:name]
    @email = params[:email]
    @phone = params[:phone]
    @address = params[:address]
    @position = params[:position]
    @location = params[:location]
    @experience = params[:experience]
    @honeypot = params[:honeypot]
  end

  def persisted?
    false
  end
end