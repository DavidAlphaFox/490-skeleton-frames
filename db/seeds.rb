require "open-uri"

def attach_random_poster(post, image)
  file = File.open(image)
  post.poster.attach(io: file, filename: File.basename(image), content_type: 'image/png')
end

puts "Seeding blog posts..."

9.times do |i|
  post = Post.create!(
    name: Faker::Book.title,
    content: 6.times.map { Faker::Lorem.paragraph(sentence_count: 64) }.join("<br><br>")
  )
  image_path = Rails.root.join("db", "images", "image_#{i}.jpeg")
  attach_random_poster(post, image_path)
end

puts "Seeding complete!"
