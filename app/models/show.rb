class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  has_many :genres
  belongs_to :network
  
def actors_list
    actors.collect do |actor|
            actor.full_name
    end
end
end