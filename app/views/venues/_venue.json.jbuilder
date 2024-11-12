json.extract! venue, :id, :name, :contact, :email, :phone, :address, :avatar, :created_at, :updated_at
json.url venue_url(venue, format: :json)
json.avatar url_for(venue.avatar)
