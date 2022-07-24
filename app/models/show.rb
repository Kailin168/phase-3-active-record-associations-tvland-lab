class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

  def actors_list
    self.characters.collect do |s|
      s.actor.full_name 
      # this is calling the actor.rb's method full_name thats why it is actor.full_name
    end
  end

end