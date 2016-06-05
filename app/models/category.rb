class Category < ActiveRecord::Base
    validates :title, presence: true, uniqueness: true, length: { minimum: 2}
end
