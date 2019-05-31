class Ride < ActiveRecord::Base
	belongs_to :user
	belongs_to :attraction

	def take_ride
		if is_tall_enough? && has_enough_tickets?
			#adjust happiness and nausea

			go_on_ride
			"Thank you for riding #{self.attraction.name}"

		elsif is_tall_enough? && !has_enough_tickets?

			"Sorry. You do not have enough tickets to ride the #{self.attraction.name}."

		elsif !is_tall_enough? &&has_enough_tickets?

			"Sorry. You are not tall enough to ride the #{self.attraction.name}."
				
		else
			"Sorry. You do not have enough tickets to ride the Roller Coaster. You are not tall enough to ride the Roller Coaster."
		end
		
	end

	def is_tall_enough?
		self.user.height > self.attraction.min_height
	end

	def has_enough_tickets?
		 self.user.tickets >= self.attraction.tickets
	end

	def go_on_ride
		
		user.update(:tickets =>(user.tickets-attraction.tickets), :nausea =>(user.nausea + attraction.nausea_rating), :happiness =>(user.happiness + attraction.happiness_rating))
	end

end
