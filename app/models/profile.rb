class Profile < ApplicationRecord
  has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
  validates :username, presence: true, uniqueness: true, length: {minimum: 5, maximum: 20}
  validates :firstname, presence: true, length: {minimum: 2, maximum: 20}
  validates :lastname, presence: true, length: {minimum: 2, maximum: 20}
  validates :age, length: {maximum: 2}
  belongs_to :user, optional: true
end
