# Add seed data here. Seed your database with `rake db:seed`
artist = Artist.create(name: "Adele")
song = Song.create(name: "Hello",artist: artist)
