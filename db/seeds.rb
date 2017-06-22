# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



User.destroy_all

u1 = User.create name: "Dysphemic", email: "julian@dysphemic.com", website: "http://www.dysphemic.com" , image: "http://dysphemic.com/wp-content/uploads/2014/11/Dysphemic_Logo2-1.jpg", is_admin: true, password: "chicken"

u2 = User.create name: "Random guy", email: "random@random.com", website: "http://www.random.com" , image: "https://img-vidivodo.mncdn.com/vidivodo/vidservers/server01/videos/2012/02/16/21/v201202162120510854941.mp4.jpg", is_admin: true, password: "chicken"


Sound.destroy_all

s1 = Sound.create sound: "slap1_zvfjzc", title: "The first sound ever uploaded. Schlap!", description: "Slap sound effect",image: "slap1_zvfjzc", plays: 20

s2 = Sound.create sound: "slap2_ywxs2a", title: "Crappy Slap sound", description: "The sound of your face getting schlapped.",image: "slap2_ywxs2a", plays:0

s3 = Sound.create sound: "slap3_irsdu8", title: "Misc Slap ", description: "Yet again another slap sound.",image: "slap3_irsdu8", plays:0

s4 = Sound.create sound: "808bass", title: "808", description: "Dirty 808 sample",image: "808bass", plays:0

s5 = Sound.create sound: "Guitar_Stab", title: "Guitar Stab", description: "Acoustic flamenco guitar stab ",image: "Guitar_Stab", plays:0

s6 = Sound.create sound: "Kick_Verb_qjvydb", title: "Reverb Kick", description: "Random kick with reverb",image: "Kick_Verb_qjvydb", plays:0

s7 = Sound.create sound: "B_-_Neuro_Bass_1_dpwqq4", title: "Neuro Bass", description: "Distorted and filtered bass synth",image: "B_-_Neuro_Bass_1_dpwqq4", plays:0

s8 = Sound.create sound: "E_-_Kick_Bass_1_khtlks", title: "Punchy Bass", description: "Punchy reese with kick drum envelope",image: "E_-_Kick_Bass_1_khtlks", plays:0

s9 = Sound.create sound: "Tasty_Snare_fmayzc", title: "Tasty Snare", description: "A nice well rounded snare drum",image: "Tasty_Snare_fmayzc", plays:0

s10 = Sound.create sound: "Assassin_Snare_vgy4of", title: "Assassin Snare", description: "Dubstep snare",image: "Assassin_Snare_vgy4of", plays:0

s11 = Sound.create sound: "100_-_A_-_Wah_Wah_vnuam0", title: "Wah Wah Guitar", description: "Electric funk guitar",image: "100_-_A_-_Wah_Wah_vnuam0", plays:0

u1.sounds << s1 << s2 << s3 << s4 << s8 << s9 << s10

u2.sounds << s5 << s6 << s7 << s11

Tag.destroy_all

t1 = Tag.create name: "snare"
t2 = Tag.create name: "dubstep"
t3 = Tag.create name: "sound effect"
t4 = Tag.create name: "slap"
t5 = Tag.create name: "bass"
t6 = Tag.create name: "guitar"
t7 = Tag.create name: "kick"

s1.tags << t4 << t3
s2.tags << t4
s3.tags << t4
s4.tags << t5
s5.tags << t6
s6.tags << t7
s7.tags << t5
s8.tags << t5
s9.tags << t1
s10.tags << t1
s5.tags << t6
