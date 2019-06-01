class AttractionsController < ApplicationController
	
	def index
		@attractions = Attraction.all
	end

	def new 

	end

	def show 
		@attraction = Attraction.find(params[:id])
	end

	def create

	end

	def edit

	end

	def destroy

	end

	private 

		def attraction_params
			params.require(:attraction).permit(:name, :tickets, :nausea_rating, :happiness_rating, :min_height)
		end
end

#FOR SHOW PAGE 

# <% unless current_user.admin %>
# <%= form_tag attractions_ride_path do %>
# <%= hidden_field_tag :user_id, current_user.id %>
# <%= hidden_field_tag :attraction_id, @attraction.id %>
# <%= submit_tag 'Go on this ride' %>
# <% end %>
# <% end %>
# <%= link_to 'Edit Attraction', edit_attraction_path(@attraction) if current_user.admin %><br />
# <%= link_to 'Back', attractions_path %> 

# <%= form_tag @attraction do %>
# <p><%= radio_button_tag "Go on this ride", @attraction.go_on_ride%></p>
# <% end %> 