# frozen_string_literal: true

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

user = User.new(
  id: 1,
  name: 'Vitalii Shevchenko',
  email: 'vshevchenko12@gmail.com',
  password: '12345678',
  password_confirmation: '12345678'
)
user.save!

user2 = User.new(
  id: 2,
  name: 'Test',
  email: 'test@example.com',
  password: '12345678',
  password_confirmation: '12345678'
)
user2.save!

Painting.create!([{
                   title: 'Blue Ukrainian Map',
                   size: '12 in x 12 in',
                   materials: 'Acrylic painting, High-quality canvas for acrylic paints',
                   description: 'I paint all my artwork on high-quality canvas, using acrylic paint, brushes and handmade brushes "Koshachka".
                    Ukrainian Petrykivka art is a UNESCO World Heritage.',
                   price: '100',
                   image: Rails.root.join('app/assets/images/blue_ukr_map.jpg').open,
                   user_id: user.id
                 },
                  {
                    title: 'Red Malpe Leaf',
                    size: '12 in x 12 in',
                    materials: 'Acrylic painting, High-quality canvas for acrylic paints',
                    description: 'I paint all my artwork on high-quality canvas, using acrylic paint, brushes and handmade brushes "Koshachka".
                    Ukrainian Petrykivka art is a UNESCO World Heritage.',
                    price: '100',
                    image: Rails.root.join('app/assets/images/red_leaf.jpg').open,
                    user_id: user.id
                  }, {
                    title: 'Ukrainian twins. Blue one',
                    size: '12 in x 12 in',
                    materials: 'Acrylic painting, High-quality canvas for acrylic paints',
                    description: 'Collection: Ukrainian twins. Blue one. A Pair of the 2 canvas.
                    I paint all my artwork on high-quality canvas, using acrylic paint, brushes and handmade brushes "Koshachka".
                    Ukrainian Petrykivka art is a UNESCO World Heritage.',
                    price: '100',
                    image: Rails.root.join('app/assets/images/blue.jpg').open,
                    user_id: user.id
                  }, {
                    title: 'Ukrainian twins. Yellow one',
                    size: '12 in x 12 in',
                    materials: 'Acrylic painting, High-quality canvas for acrylic paints',
                    description: 'Collection: Ukrainian twins. Blue one. A Pair of the 2 canvas.
                    I paint all my artwork on high-quality canvas, using acrylic paint, brushes and handmade brushes "Koshachka".
                    Ukrainian Petrykivka art is a UNESCO World Heritage.',
                    price: '100',
                    image: Rails.root.join('app/assets/images/yellow.jpg').open,
                    user_id: user.id
                  }, {
                    title: 'Ukrainian Maple Leaf. Petrykivka Folk Art Style',
                    size: '12 in x 12 in',
                    materials: 'Acrylic painting, High quality paper for acrylic paints, 300gm',
                    description: 'Collection: Blue & Yellow.
                    I am deeply in love with this folk style, it reflects the Ukrainian soul and our traditions. I paint all my artwork on high-quality paper, using acrylic paint, brushes and handmade brushes "Koshachka".
                    Ukrainian Petrykivka art is a UNESCO World Heritage.',
                    price: '80',
                    image: Rails.root.join('app/assets/images/maple-leaf.jpg').open,
                    user_id: user.id
                  }, {
                    title: 'Ukrainian heart. Petrykivka Folk Art Style',
                    size: '12 in x 12 in',
                    materials: 'Acrylic painting, High quality paper for acrylic paints, 300gm',
                    description: 'Collection: Blue & Yellow.
                    I am deeply in love with this folk style, it reflects the Ukrainian soul and our traditions. I paint all my artwork on high-quality paper, using acrylic paint, brushes and handmade brushes "Koshachka".
                    Ukrainian Petrykivka art is a UNESCO World Heritage.',
                    price: '80',
                    image: Rails.root.join('app/assets/images/heart.jpg').open,
                    user_id: user.id
                  }, {
                    title: 'Love inside. Petrykivka Folk Art Style',
                    size: '12 in x 12 in',
                    materials: 'Acrylic painting, High quality paper for acrylic paints, 300gm',
                    description: 'Collection: Blue & Yellow.
                   I am deeply in love with this folk style, it reflects the Ukrainian soul and our traditions. I paint all my artwork on high-quality paper, using acrylic paint, brushes and handmade brushes "Koshachka".
                   Ukrainian Petrykivka art is a UNESCO World Heritage.',
                    price: '80',
                    image: Rails.root.join('app/assets/images/circle.jpg').open,
                    user_id: user.id
                  }])
