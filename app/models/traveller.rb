class Traveller < ApplicationRecord
  include PgSearch::Model
  has_many :locations

  pg_search_scope :search,
                  against: {
                    first_name: 'A',
                    last_name: 'B',
                    about: 'C'
                  },
                  associated_against: {
                    locations: {
                      city: 'B',
                      state: 'B',
                      country: 'A'
                    }
                  },
                  using: {
                    tsearch: { dictionary: 'english', prefix: true }
                  }
end
