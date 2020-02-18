# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Product.destroy_all
Article.destroy_all
Technic.destroy_all
Option.destroy_all

user = []
product = []
article = []
technic = []
option = []

user_first_name = ["Pol-Erwan","Scaphoil","Hugo","Sharkeye","Gwen","Jean","René","Milo","Léon","Paul"]
user_last_name = ["kite"]
user_email = ["polo@mail.com","scaphoilmag@gmail.com","hugo@kitesurfmag.com","reloadprod34@gmail.com","gwen@mail.com","jean@mail.com","rene@mail.com","milo@mail.com","leon@mail.com","paul@mail.com"]
user_password = ["polomo","polomo","sharkeye","shakeye","polomo","polomo","polomo","polomo","polomo","polomo"]
user_is_admin = ["true","true","true","true","false","false","false","false","false","false"]


kite_name = ["Bandit","Boost II","GTS","RPM","Torch","Chaos","Razor","Vegas","Reo","FS"]
brand = ["F-One","Flysurfer","Core","Slingshot","Naish","Cabrinha","Airush","Duotone","Ozone","Eleveight"]
category = ["kite","board","surfboard","foil"]
kite_description = ["Inutile de présenter la fameuse Bandit dont c'est la 12e édition
et qui est toujours plus performante que jamais. C'est difficile de
toujours rester au top quand on connait le succès mais la Bandit
2019 a réussi à se hisser parmi les meilleurs kites du marché.
Son shape évolue peu mais on note une différence sur les
points d'attache du bridage arrière et toujours plus de rigidité
dans le kite. Ne cherchez pas un kite plus polyvalent et performant
que la Bandit, surtout la 8 qui a une plage d'utilisation
énorme, presque sans limite.
La 6 mais surtout la 5 sont des armes pour le surf strapless avec
une sensation de maitrise parfaite et une réactivité inégalée.
Le tour de force est de proposer un kite qui soit aussi agréable
pour un rider en progression que pour une pilote averti et la 8
relève le défi car on un gros depower et du confort à revendre
mais surtout un énorme lift pour envoyer en Big Air. On apprécie
son loop et sa ressource surtout quand on est bien toilé.
Le redécollage est une formalité. On peut pousser la Bandit en
déhooké sans problème mais surtout garder un seul kite pour
tout faire et le faire avec brio. F-ONE réussit le tour de force une
fois encore de faire évoluer son kite juste ce qu'il faut pour être
parmi les plus plébiscités. Chacun y va de son éloge : précis,
performant, maniable, facile, confortable. Bref, on est tous sous
le charme.
La 6 et la 8 Bandit sont mes kites préférés des tests. Sains et performants
pour progresser rapidement et se faire plaisir.  "] 
board_name = ["trax","wtf","monarch","royaume","asylum","select","gambler","custom","master","motion"]
surfboard_name = ["custom","go to","mitu pro","Sleece","global","squad","compact","stallion","skater","Whip"]

youtube = ["https://www.youtube.com/embed/ZhDjjSTaDcQ"]

variable = 0

10.times do

	user << User.create(first_name: user_first_name[variable], last_name: user_last_name[0],email: user_email[variable], password: user_password[variable], is_admin: user_is_admin[variable])

	product << Product.create(name: kite_name[variable], brand: brand[variable], category: category[0], domain: "freestyle", description: kite_description[0], favorite: "#freeride", testsize: "10", youtube: youtube[0], link: "https://fr.f-one.world/produit/bandit-2020/", price: rand(1200..1600), year: "2020")

	product << Product.create(name: board_name[variable], brand: brand[variable], category: category[1], domain: "freestyle", description: kite_description[0], favorite: "pop", testsize: "135x42", youtube: youtube[0], link: "https://fr.f-one.world/produit/bandit-2020/", price: rand(400..800), year: "2020")

	product << Product.create(name: surfboard_name[variable], brand: brand[variable], category: category[2], domain: "freestyle", description: kite_description[0], favorite: "son pads", testsize: "6'4", youtube: youtube[0], link: "https://fr.f-one.world/produit/bandit-2020/", price: rand(500..1000), year: "2020")

	article << Article.create(title:"freestyle session", title2:"pures conditions", author:"Hugo", link:"assets/article/article.jpg" )

	technic << Technic.create(wave: rand(0..5),bigair: rand(0..5),freeride: rand(0..5),freestyle: rand(0..5), maniability: rand(0..5), feeling: rand(0..5), control: rand(0..5), progression: rand(0..5),courbes: rand(0..5),wind: rand(0..5),sideshore: rand(0..5),onshore: rand(0..5), strap: rand(0..5),strapless: rand(0..5), transitions: rand(0..5), wing: rand(1200..1800), pad: rand(0..5))

	option << Option.create(detail:"section detail", size:"7 / 9 / 11 /13", bridle: "no poulies", fin: "3,5cm", width: rand(33..38),stance: "62cm / 65cm / 68cm",champs: "HRD", weigh: rand(3.2..4.8), carene: "channel", flex:"medium", length: rand(150..180), maitrebau: rand(40..50), thickness:rand(5.5..6.8), volum:rand(22..26), trim:"sangle", twist:"devrilleur",line: rand(20..27), v: "V", velcros: rand(1..4), box:"futures fins", strut: rand(0..5))

variable = variable + 1

end

