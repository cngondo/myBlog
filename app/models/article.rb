class Article < ActiveRecord::Base
  # validations
  validates :title, :body, presence: true
end
