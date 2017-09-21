class Book < ApplicationRecord
  belongs_to :user

  validates :title, :author, :description, :URL, :presence => true
end
