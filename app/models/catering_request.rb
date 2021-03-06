class CateringRequest
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :name, :email, :phone, :company, :event_date, :order_type,
                :delivery_address, :delivery_time, :pickup_location, :pickup_time,
                :satori_quantity, :geishas_kiss_quantity, :salmon_samba_quantity,
                :sumo_crunch_quantity, :porkivore_quantity, :bonsai_salad_quantity,
                :lava_nachos_quantity, :diablo_sauce_quantity, :mayan_dragon_quantity,
                :caballero_quantity, :buddha_belly_quantity, :honeypot

  validates :name, presence: true, length: { maximum: 30 }
  validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates :phone, presence: true, length: { :minimum => 10, :maximum => 15 }
  validates :event_date, presence: true
  validates :order_type, presence: true
  validates :delivery_address, presence: true, :if => 'order_type == "delivery"'
  validates :delivery_time, presence: true, :if => 'order_type == "delivery"'
  validates :pickup_location, presence: true, :if => 'order_type == "pickup"'
  validates :pickup_time, presence: true, :if => 'order_type == "pickup"'
  validates :honeypot, presence: false
  validates :satori_quantity,  numericality: true, allow_blank: true
  validates :geishas_kiss_quantity,  numericality: true, allow_blank: true
  validates :salmon_samba_quantity,  numericality: true, allow_blank: true
  validates :sumo_crunch_quantity,  numericality: true, allow_blank: true
  validates :porkivore_quantity,  numericality: true, allow_blank: true
  validates :bonsai_salad_quantity,  numericality: true, allow_blank: true
  validates :lava_nachos_quantity,  numericality: true, allow_blank: true
  validates :diablo_sauce_quantity,  numericality: true, allow_blank: true
  validates :buddha_belly_quantity,  numericality: true, allow_blank: true
  validates :caballero_quantity,  numericality: true, allow_blank: true
  validates :mayan_dragon_quantity,  numericality: true, allow_blank: true

  def initialize(params={})
    @name = params[:name]
    @email = params[:email]
    @phone = params[:phone]
    @company = params[:company]
    @event_date = params[:event_date]
    @order_type = params[:order_type]
    @delivery_address = params[:delivery_address]
    @delivery_time = params[:delivery_time]
    @pickup_location = params[:pickup_location]
    @pickup_time = params[:pickup_time]
    @satori_quantity = params[:satori_quantity]
    @geishas_kiss_quantity = params[:geishas_kiss_quantity]
    @salmon_samba_quantity = params[:salmon_samba_quantity]
    @sumo_crunch_quantity = params[:sumo_crunch_quantity]
    @porkivore_quantity = params[:porkivore_quantity]
    @bonsai_salad_quantity = params[:bonsai_salad_quantity]
    @lava_nachos_quantity = params[:lava_nachos_quantity]
    @diablo_sauce_quantity = params[:diablo_sauce_quantity]
    @buddha_belly_quantity = params[:buddha_belly_quantity]
    @caballero_quantity = params[:caballero_quantity]
    @mayan_dragon_quantity = params[:mayan_dragon_quantity]
    @honeypot = params[:honeypot]
  end

  def persisted?
    false
  end
end