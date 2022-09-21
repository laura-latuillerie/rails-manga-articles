# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"
Comment.destroy_all
p '🟢 Comment destroyed'
Article.destroy_all
p '🟢 Articles destroyed'
Manga.destroy_all
p '🟢 Mangas destroyed'
User.destroy_all
p '🟢 Users destroyed'

# USERS

laura_file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1655708276/flpuxxozbaolhgvsimuv.jpg")
laura = User.new(nickname: "dimsumOG", email: "laura@otakuz.com", password: '123456')
laura.photo.attach(io: laura_file, filename: "laura.jpg", content_type: "image/jpg")
laura.save!

p '🆕 Users created'

# MANGAS

onepiece_file = URI.open("https://www.comboinfinito.com.br/principal/wp-content/uploads/2019/01/One-Piece.jpg")
onepiece = Manga.new(title: "One Piece")
onepiece.photo.attach(io: onepiece_file, filename: "onepiece.jpg", content_type: "image/jpg")
onepiece.save!

slamdunk_file = URI.open("https://pbs.twimg.com/media/EfTi0BrVAAMyh8y.jpg")
slamdunk = Manga.new(title: "Slam Dunk")
slamdunk.photo.attach(io: slamdunk_file, filename: "slamdunk.jpg", content_type: "image/jpg")
slamdunk.save!

demonslayer_file = URI.open("https://focus.telerama.fr/2022/03/10/0/0/1920/1080/1200/0/60/0/44e52a1_446864906-1733449.jpg")
demonslayer = Manga.new(title: "Demon Slayer")
demonslayer.photo.attach(io: demonslayer_file, filename: "demonslayer.jpg", content_type: "image/jpg")
demonslayer.save!

p '🆕 Mangas created'

# ARTICLES

article_op = Article.new(
  title: "One Piece, Volume 1",
  content: "The main character of the series, Monkey D. Luffy, is introduced as a child, with his role model, Shanks. After Shanks comes into conflict with a mountain bandit at a bar, it is revealed that Luffy accidentally ate a Devil Fruit, the Gomu Gomu no Mi. Later on, after Luffy provokes Higuma, he is taken hostage.
  Shanks and his crew show up and defeat Higuma's bandits, but Higuma escapes, taking Luffy on a boat. After Higuma kicks Luffy into the water, a Sea King appears and eats Higuma, and Shanks arrives just in time to save Luffy's life. Shanks scares away the Sea King by using Haki, but loses his arm in the process.
  Because Shanks sacrificed his left arm in order to save him, Luffy becomes even more determined to become a pirate. Before Shanks leaves, he gives Luffy his straw hat. Ten years later, Luffy officially sets sail as a pirate and begins the adventure to fulfill his dream of becoming the Pirate King.",
  user_id: User.last.id,
  manga_id: Manga.find_by_title('One Piece').id)
article_op.save!

article_sd = Article.new(
  title: "Slam Dunk, Volume 1",
  content: "Teenager Hanamichi Sakuragi is unpopular with girls, and begins hating basketball in middle school, when his latest crush is in love with a basketball player. However, in high school he suddenly falls in love with Haruko Akagi who notes that he could be a remarkable basketball player after teaching him how to slam dunk. While listening to Haruko's explanations, Sakuragi's gang comes to suspect that she might be in love with a basketball player named Kaede Rukawa. Haruko confesses this to Sakuragi, which depresses him once again.
  A group of third year students challenge Sakuragi and his gang to a fight, but just when they are about to face them Sakuragi finds them defeated singlehandedly by Rukawa. Haruko sees a wounded Rukawa next to Sakuragi and blames the latter for Rukawa's injuries. Once again depressed, Sakuragi gets into a fight with the Shohoku basketball team captain, Takenori Akagi, who challenges him to a basketball game, in which Sakuragi has to make one basket before Akagi makes ten.
  With Sakuragi down nine to zero, he notices Haruko has come to watch along with the rest of the school, and is able to score with an improvised slam dunk. Afterwards, Sakuragi learns that Akagi is Haruko's older brother and decides to join the basketball team to get closer to Haruko and surpass Rukawa. Sakuragi's persistence earns him a spot on the team, but he is forced to learn the basics as he has no prior playing experience. After a week of this, Sakuragi confronts Akagi in frustration, but Akagi is adamant that he continue his instruction. Unable to accept this, Sakuragi decides to quit the team.",
  user_id: User.last.id,
  manga_id: Manga.find_by_title('Slam Dunk').id)

article_sd.save!

article_ds = Article.new(
  title: "Demon Slayer, Volume 1",
  content: "In Taisho-era Japan, kindhearted Tanjiro Kamado makes a living selling charcoal. But his peaceful life is shattered when a demon slaughters his entire family. His little sister Nezuko is the only survivor, but she has been transformed into a demon herself! Tanjiro sets out on a dangerous journey to find a way to return his sister to normal and destroy the demon who ruined his life.
  Learning to destroy demons won’t be easy, and Tanjiro barely knows where to start. The surprise appearance of another boy named Giyu, who seems to know what’s going on, might provide some answers—but only if Tanjiro can stop Giyu from killing his sister first!",
  user_id: User.last.id,
  manga_id: Manga.find_by_title('Demon Slayer').id)
  
article_ds.save!

p '🆕 Articles created'

p '🆕 Seeds finished'