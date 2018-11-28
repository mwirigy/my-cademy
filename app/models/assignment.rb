class Assignment < ApplicationRecord
  belongs_to :user

  def self.by_id(user_id)
    user = User.find(user_id)
    user.assignments
  end

end
