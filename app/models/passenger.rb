class Passenger < ApplicationRecord
  validates_presence_of :name, :email
  validates_format_of :email, with: EMAIL_REGEX
end
