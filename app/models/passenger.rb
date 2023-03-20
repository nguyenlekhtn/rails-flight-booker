class Passenger < ApplicationRecord
  validates_presence_of :name, :email
  validates_format_of :email, with: URI::MailTo::EMAIL_REGEXP

  belongs_to :booking
end
