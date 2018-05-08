# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# User.delete_all
max = User.new(username: 'maximus')
mitch = User.new(username: 'mitchimus')
mike = User.new(username: 'mikimus')

# Artwork.delete_all
work1 = Artwork.new(title: 'max_first', image_url: 'www.art.com/1', artist_id: max.id )
work2 = Artwork.new(title: 'mitch_first', image_url: 'www.art.com/2', artist_id: mitch.id )

# ArtworkShare.delete_all
share1 = ArtworkShare.new(artwork_id: work1.id, viewer_id: mike.id)
share2 = ArtworkShare.new(artwork_id: work2.id, viewer_id: mike.id)
