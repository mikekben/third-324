#Citation: some validation operations found at https://guides.rubyonrails.org/active_record_validations.html
#Regular expressions tested with https://regex101.com/

class Airport < ApplicationRecord
    validates :iata, format: {with: /[A-Z]{3}/}
    validates :icao, format: {with: /[A-Z][A-Z0-9]{3}/}
    validates :region, presence: true, format: {with: /([A-Z][A-Z]-\w{1,3})|([A-Z][A-Z])/}
    validates :airport_name, presence: true
    validates :city, presence: true
    validates :lat, presence: true, numericality: true
    validates :lon, presence: true, numericality: true
end
