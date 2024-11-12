json.extract! group, :id, :title, :contact, :email, :phone, :address, :avatar, :created_at, :updated_at
json.url group_url(group, format: :json)
json.avatar url_for(group.avatar)
