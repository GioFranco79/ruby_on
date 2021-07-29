class Post < ApplicationRecord
  belongs_to :blog
  validates :titulo, :contenido, presence: true
end
