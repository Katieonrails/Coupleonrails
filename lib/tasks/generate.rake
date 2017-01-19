namespace :generate do
  desc 'Generate fake locations for selectors.'
  task locations: :environment do
	if State.count < 30  
		30.times do
				State.create(:name => Faker::Address.state)
		end
	else 
		p "Not creating states, already exist. (State count is #{State.count})"
	end

	if City.count < 120 
		120.times do
				City.create(:name => Faker::Address.city, :state_id => State.all.to_a.sample.id)
		end
	else 
		p "Not creating cities, already exist. (City count is #{City.count})"
	end
  end
end