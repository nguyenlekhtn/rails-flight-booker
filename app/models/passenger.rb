class Passenger < ApplicationRecord
  validates_presence_of :name, :email
  validates :name, :email, length: {minimum: 3}
  validates_format_of :email, with: URI::MailTo::EMAIL_REGEXP

  belongs_to :booking
end
