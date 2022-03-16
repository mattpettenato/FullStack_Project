class Review < ApplicationRecord
  validates :rating, :body, :author_id, :business_id, :name, presence: true
  validates :rating, inclusion:{in: (0..5)}
  
  belongs_to :business,
    primary_key: :id,
    foreign_key: :business_id,
    class_name: :Business
  
  belongs_to :user,
    primary_key: :id,
    foreign_key: :author_id,
    class_name: :User
end
