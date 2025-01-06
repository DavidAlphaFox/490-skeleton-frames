class Post < ApplicationRecord
  has_rich_text :content
  has_one_attached :poster do |blob|
    blob.variant :loader, resize_and_pad: [ 35, 19 ], saver: { quality: 50 }, gaussblur: 1
    blob.variant :thumb, resize_and_pad: [ 350, 185 ], saver: { quality: 100 }
  end
end
