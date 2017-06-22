# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



User.destroy_all

u1 = User.create name: "Dysphemic", email: "julian@dysphemic.com", website: "http://www.dysphemic.com" , image: "http://dysphemic.com/wp-content/uploads/2014/11/Dysphemic_Logo2-1.jpg", is_admin: true, password: "chicken"

Sound.destroy_all

s1 = Sound.create sound: "slap1_zvfjzc", title: "The first sound ever uploaded. Schlap!", description: "Slap sound effect",image: "slap1_zvfjzc", plays: 20

s2 = Sound.create sound: "slap2_ywxs2a", title: "Crappy Slap sound", description: "The sound of your face getting schlapped.",image: "slap2_ywxs2a", plays:0

s3 = Sound.create sound: "slap3_irsdu8", title: "Misc Slap ", description: "Yet again another slap sound.",image: "slap3_irsdu8", plays:0

s4 = Sound.create sound: "808bass", title: "808", description: "Dirty 808 sample",image: "808bass", plays:0

u1.sounds << s1 << s2 << s3 << s4

Tag.destroy_all

t1 = Tag.create name: "snare"
t2 = Tag.create name: "dubstep"
t3 = Tag.create name: "sound effect"
t4 = Tag.create name: "slap"
t5 = Tag.create name: "bass"

Comment.destroy_all
#
c1 = Comment.create name: "Dysphemic", body: "This sound is awesome yo"

# s1.comments << c1

s1.tags << t4 << t3
s2.tags << t4
s3.tags << t4
s4.tags << t5
