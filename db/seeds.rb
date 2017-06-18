# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



User.destroy_all

u1 = User.create name: "Dysphemic", email: "julian@dysphemic.com", website: "http://www.dysphemic.com" , image: "http://dysphemic.com/wp-content/uploads/2014/11/Dysphemic_Logo2-1.jpg", is_admin: true, password_digest: "chicken"

Sound.destroy_all

s1 = Sound.create sound: "http://sep800.mine.nu/files/sounds/slap.wav", title: "Test sound", description: "Slap sound effect",
image: "http://res.cloudinary.com/demo/video/upload/h_200,w_500,fl_waveform,co_black,b_white/bumblebee.png"

s2 = Sound.create sound: "http://www.garrens.com/xanacreations/czero/sound/misc/slap.wav", title: "Slap sound", description: "The sound of your face getting schlapped."

u1.sounds << s1 << s2

Tag.destroy_all

t1 = Tag.create name: "snare"
t2 = Tag.create name: "dubstep"
t3 = Tag.create name: "sound effect"


s1.tags << t1 << t2
s2.tags << t3
