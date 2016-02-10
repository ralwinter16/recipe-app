class RecipeBook < ActiveRecord::Base
  has_attached_file :photo, styles: { medium: "500x500>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/

  belongs_to :user
  has_many :comments
end
