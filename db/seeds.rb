# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name: "みー",
			image: File.open("./app/assets/images/users/3.jpeg"),
			email: "1@1",
			password: "111111", password_confirmation: "111111")

User.create!(name: "検証用ユーザー",
			image: File.open("./app/assets/images/users/1.jpeg"),
			email: "2@2",
			password: "222222", password_confirmation: "222222")

User.create!(name: "おまけ",
			image: File.open("./app/assets/images/users/2.png"),
			email: "3@3",
			password: "333333", password_confirmation: "333333")

Character.create!(user_id:1,
				image: File.open("./app/assets/images/characters/1.jpeg"),
				name: "日吉若",
				age:"２年",
				nickname:"アグレッシブベースライナー",
				personality:"冷静沈着で他人に流されない",
				weakness:"少し神経質な面がある",
				strength:"常に前向きで、虎視淡々と正レギュラーを狙っている",
    			birthday:"12月5日",
    			bload_type:"4",
			    race:"人類",
			    profile:"日吉若。2年。アグレッシブベースライナー。
			    		　性格は冷静沈着で他人に流されない
			    		少し神経質な面もあるが、常に前向きで
			    		虎視淡々と正レギュラーを狙っていたようだ。
			    		誕生日は１２月5日、血液型はAB型、好きな言葉は・・・・・・",
			    comment:"好きな言葉は「下克上」です",)

Character.create!(user_id:1,
				image: File.open("./app/assets/images/characters/2.jpg"),
				name: "匂宮蛍",
				age:"17",
				nickname:"ホタル",
				personality:"基本的に何事にもやる気がなさそうでありながら、目的のためなら手段を選ばない冷徹さを持つ",
				weakness:"クソ雑魚メンタル",
				strength:"高いINT",
    			birthday:"２月３日",
    			bload_type:"4",
			    race:"人類",
			    from:"日本",
			    profile:"ストレンジハイスクール六話で廃人となり入院中",
			    comment:"鳴子が大好き",)

Character.create!(user_id:1,
				image: File.open("./app/assets/images/characters/3.jpg"),
				name: "匂宮蛍",
				age:"17",
				nickname:"ホタル",
				personality:"もはや手段を選ばず",
				weakness:"クソ雑魚メンタル",
				strength:"高いINT",
    			birthday:"２月３日",
    			bload_type:"4",
			    race:"人類",
			    from:"日本",
			    profile:"第六話仕様なので拳銃装備",
			    comment:"鳴子のために",)

Character.create!(user_id:2,
				image: File.open("./app/assets/images/characters/5.jpeg"),
				name: "グランツ公",
				age:"400くらい",
				nickname:"美麗公",
				personality:"多分すぐ脱ぐ",
				weakness:"美しすぎる",
				strength:"美しすぎる",
    			birthday:"不明",
    			bload_type:"4",
			    race:"騎士",
			    from:"常夜国",
			    profile:"英雄らしい",
			    comment:"フリー素材？",)

Character.create!(user_id:2,
				image: File.open("./app/assets/images/characters/6.jpeg"),
				name: "美麗公",
				age:"400くらい",
				nickname:"美麗公",
				personality:"多分すぐ脱ぐ",
				weakness:"美しすぎる",
				strength:"美しすぎる",
    			birthday:"不明",
    			bload_type:"4",
			    race:"騎士",
			    from:"常夜国",
			    profile:"英雄らしい",
			    comment:"フリー素材？",)

Character.create!(user_id:2,
				image: File.open("./app/assets/images/characters/7.jpeg"),
				name: "ローゼンブルク公",
				age:"400くらい",
				nickname:"美麗公",
				personality:"多分すぐ脱ぐ",
				weakness:"美しすぎる",
				strength:"美しすぎる",
    			birthday:"不明",
    			bload_type:"4",
			    race:"騎士",
			    from:"常夜国",
			    profile:"英雄らしい",
			    comment:"フリー素材？",)

Character.create!(user_id:3,
				image: File.open("./app/assets/images/characters/5.jpeg"),
				name: "グランツ公",
				age:"400くらい",
				nickname:"美麗公",
				personality:"多分すぐ脱ぐ",
				weakness:"美しすぎる",
				strength:"美しすぎる",
    			birthday:"不明",
    			bload_type:"4",
			    race:"騎士",
			    from:"常夜国",
			    profile:"英雄らしい",
			    comment:"フリー素材？",)

System.create!(	image: 		File.open("./app/assets/images/books/2.jpg"),
				title: 		"常夜国騎士譚ドラクルージュ",
				text: 	"基本ルールブック",
				official: 	true,)

System.create!(	image: 		File.open("./app/assets/images/books/5.jpg"),
				title: 		"銀剣のステラナイツ",
				text: 	"基本ルールブック",
				official: 	true,)

System.create!(	image: 		File.open("./app/assets/images/books/11.jpg"),
				title: 		"ブラッドパス",
				text: 	"基本ルールブック",
				official: 	true,)

System.create!(	image: 		File.open("./app/assets/images/books/10.jpg"),
				title: 		"フタリソウサ",
				text: 	"基本ルールブック",
				official: 	true,)

Like.create!( name:"悪友",)
Like.create!( name:"犬猿",)
Like.create!( name:"仇敵",)
Like.create!( name:"村焼き",)
Like.create!( name:"世界崩壊",)
Like.create!( name:"実験生物",)
Like.create!( name:"パートナー",)
Like.create!( name:"偽善",)
Like.create!( name:"貴族",)

UserSkill.create!(name:"PL",)
UserSkill.create!(name:"GM",)
UserSkill.create!(name:"動画作成",)
UserSkill.create!(name:"小説",)
UserSkill.create!(name:"SS",)
UserSkill.create!(name:"シナリオ作成",)
UserSkill.create!(name:"立ち絵作成",)
UserSkill.create!(name:"音響作成",)
UserSkill.create!(name:"部屋作成",)

# Book.create!(	image: 		File.open("./app/assets/images/books/2.jpg"),
# 				system_id: 1,
# 				title: 		"ヘレティカノワール",
# 				official: 	true)

# Book.create!(	image: 		File.open("./app/assets/images/books/3.jpg"),
# 				system_id: 1,
# 				title: 	"ノブレスストーリア",
# 				official: 	true)

# Book.create!(	image: 		File.open("./app/assets/images/books/4.jpg"),
# 				system_id: 1,
# 				title: 	"サングトラヴェリア",
# 				official: 	true)

# Book.create!(	image: 		File.open("./app/assets/images/books/9.jpg"),
# 				system_id: 1,
# 				title: 		"常夜国騎士譚ドラクルージュ",
# 				supple: 	"紅月のミンネザング",
# 				official: 	false)

# Book.create!(	image: 		File.open("./app/assets/images/books/6.jpg"),
# 				system_id: 2,
# 				title: 	"霧と桜のマルジナリア",
# 				official: 	true)
# Book.create!(	image: 		File.open("./app/assets/images/books/7.jpg"),
# 				system_id: 2,
# 				title: 	"紫弾のオルトリヴート",
# 				official: 	false)
# Book.create!(	image: 		File.open("./app/assets/images/books/8.jpg"),
# 				system_id: 2,
# 				title: 	"灰壁のフォートヴラッド",
# 				official: 	false)


#ユーザーを30人作成
30.times do
name = Faker::Name.name
email = Faker::Internet.email
password = "password"
User.create!(name: name,
			email: email,
			password: password,
			password_confirmation: password)
end

#最初の30名のユーザーにキャラクターを作成
users = User.order(:created_at).take(30)
1.times do
name 		= Faker::Movies::StarWars.character
nickname 	= Faker::Movies::StarWars.call_number
race		= Faker::Movies::StarWars.specie
comment		= Faker::Movies::StarWars.specie
from		= Faker::Movies::StarWars.planet
users.each { |user| user.characters.create!(name: name,nickname: nickname, race: race,from: from ) }
end

1.times do
name 		= Faker::Movies::StarWars.character
nickname 	= Faker::Movies::StarWars.call_number
race		= Faker::Movies::StarWars.specie
comment		= Faker::Movies::StarWars.specie
from		= Faker::Movies::StarWars.planet
users.each { |user| user.characters.create!(name: name,nickname: nickname, race: race,from: from ) }
end

# フォロイーとフォロワーを作成
users = User.all
skills = UserSkill.all
systems = System.all
likes = Like.all

user = users.first
following = users[2..30] 
followers = users[3..30]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }

skill = skills.first
system = systems.first
like = likes.first

user.follow_skill(skill)
user.follow_system(system)
user.follow_like(like)
