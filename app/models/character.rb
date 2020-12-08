class Character < ActiveRecord::Base
  belongs_to :actor 
  belongs_to :show
  
  def say_that_thing_you_say 
    Actor.find_by(id: self.actor_id).full_name
  end 
  
end