# == Schema Information
#
# Table name: artists
#
#  id          :bigint           not null, primary key
#  artist_name :string           not null
#  bio         :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Artist < ApplicationRecord
  validates :artist_name, presence: true

  has_many :albums,
  foreign_key: :artist_id,
  class_name: :Album

  has_many :songs,
  through: :albums,
  source: :songs
  
end
