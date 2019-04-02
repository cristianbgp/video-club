class Cassette < ApplicationRecord
  belongs_to :movie
  belongs_to :formato
end
