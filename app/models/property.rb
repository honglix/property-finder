class Property < ApplicationRecord
  mount_uploader :photo, ImageUploader
  belongs_to :account

  scope :latest, -> { order created_at: :desc }

  def first_name
    "David"
  end

  def email
    "david@gmail.com"
  end
end
