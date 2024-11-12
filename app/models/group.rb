class Group < ApplicationRecord
  has_one_attached :avatar
  validates_presence_of :title
  has_and_belongs_to_many :users
  has_many :concerts


  def membercount
    return self.users.count
  end

  def add_member(m)
    self.users.each do |u|
      if u.id == m
        errors.add("Member #{u.email} already exists")
        return false
      end
    end
    self.users << User.find(m)
    return true
  end

  def remove_member(id)
    self.users.each do |u|
      if u.id == id
        self.users.delete(u)
        return true
      end
    end
    errors.add("That user is not a member of this group")
    return false
  end
end
