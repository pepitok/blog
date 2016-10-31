class Post < ApplicationRecord
  belongs_to :category
  validates :title, :content, presence: true
  before_create :add_text

  def add_text
    self.title+= " callback"
  end
end
