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
Compare.destroy_all

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
category = ["kite","board","surfboard","accessory","foil"]
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
bar_name = ["lynx bar", "lynx freestyle bar","foil bar","kitebar diablo","click bar","lynx bar", "lynx freestyle bar","foil bar","kitebar diablo","click bar"]
pads_name = ["platinium","apex","entity","luxury","vario","platinium","apex","entity","luxury","vario"]
youtube = ["https://www.youtube.com/embed/ZhDjjSTaDcQ"]
wetsuit_name = ["meteor","magma","E-Bomb","cypher","hammer","meteor","magma","E-Bomb","cypher","hammer"]
wetsuit_brand = ["Manera","Manera","Rip Curl","Quiksilver","O'neill","Manera","Manera","Rip Curl","Quiksilver","O'neill"]
harness_name = ["Eclipse","union","exo","hadlow pro","Kl pro","Eclipse","union","exo","hadlow pro","Kl pro"]
harness_brand = ["Manera","Manera","Manera","Pro-Limit","naish","ride Engine","Manera","Manera","Pro-Limit","naish"]
kitedomain = ["Freestyle","Wave","Foil","Freestyle","Wave","Foil","Freestyle","Wave","Foil","Freestyle","Wave","Foil"]
surfdomain = ["Freestyle","Wave","Freestyle","Wave","Freestyle","Wave","Freestyle","Wave","Freestyle","Wave"]
content = ["Ce n'est plus un secret, North kiteboarding a la
ferme intention de (re)venir sur le marché international.
La marque annonce qu'elle sera prête avec
une collection complète pour le milieu de saison.
On sait également que les majors ont développé
une partie matos mais également une collection
d'accessoires. C'est le cas pour Duotone avec
ION, F-ONE avec Manera par exemple. Mystic faisait
cavalier seul et il faut énormément de temps et
des ressources pour créer une marque mais également
avoir la place sur un marché concurrentiel.
Vous voyez où je veux en venir ? Quoi de plus logique
que le rapprochement entre North et Mystic…
c'est officiel, Mystic a été absorbée par North
et cette annonce bouscule beaucoup de choses
dans le milieu pour l'avenir. Les riders sont également
directement concernés, ce qui nous donne
un mouvement assez particulier que l'on a connu
quand Best a voulu revenir sur le marché. Avec
cette nouvelle union, il était logique que les riders
emblématiques Mystic 'migrent' vers…North ! On
voit donc rider Jesse Richman sous les couleurs
de North (avec des prototypes), il quitte l'écurie
Naish pour de nouvelles aventures. Bruna Kajiya a
annoncé son départ de chez Airush, on s'est laissé
dire également que Jalou Langeree mettait fin à
sa collaboration avec Naish. Dernièrement, c'est
Annabel Van Westerop qui postait sa collaboaration
avec North. Un solide team North/Mystic est en
préparation. On l'avait annoncé il y a quelques
mois sur nos réseaux sociaux, Nick Jacobsen fait
partie de North au poste de team manager et
metteur au point. Les deux compères ont d'ailleurs
couru pendant le KOTA avec des kites North."]
variable = 0

10.times do

	my_user = User.create(first_name: user_first_name[variable], last_name: user_last_name[0],email: user_email[variable], password: user_password[variable], is_admin: user_is_admin[variable],is_pro: user_is_admin[variable])


my_article = Article.new(title:"Mercato", content: content[0], intro:"North est Mystic", link:"assets/article/article.jpg", domain: "news")
my_article.user = my_user
my_article.save
print my_user.first_name .yellow
print " "
print my_article.title .yellow
print " Id n°" .yellow
puts my_user.id

my_article = Article.new(title:"Lord Of TRam", content: content[0], intro:"Red Bull King Of The Air à la française", link:"https://www.facebook.com/lords.of.tram/", domain: "event")
my_article.user = my_user
my_article.save
print my_user.first_name .yellow
print " "
print my_article.title .yellow
print " Id n°" .yellow
puts my_user.id

my_portfolio = Article.create(title: user_first_name[variable], title2:"portfolio",domain: "portfolio",title3: "Spot: plage sud", link:"assets/article/article.jpg" )
my_portfolio.user = my_user
my_portfolio.save
print my_portfolio.title2 .yellow
print " Id n°" .yellow
puts my_article.id


my_kite = Product.create(name: kite_name[variable], brand: brand[variable], category: category[0], domain: kitedomain[variable], description: kite_description[0], favorite: "#freeride", testsize: "10", youtube: youtube[0], link: "https://fr.f-one.world/produit/bandit-2020/", price: rand(1200..1600), year: "2020")
my_technic = Technic.create(wave: rand(0..5),bigair: rand(0..5),freeride: rand(0..5),freestyle: rand(0..5), maniability: rand(0..5), feeling: rand(0..5))
my_option = Option.create(detail:"spi quad-tex super costaud", range:"5 / 6 / 7 / 8 / 9 / 10 / 11 / 12 / 14", bridle: "no poulies", strut: rand(0..5), line: rand(4..5))
my_kite.technic = my_technic
my_kite.option = my_option
my_kite.save
my_option.product = my_kite
my_option.save
my_technic.product = my_kite
my_technic.save
print my_kite.name .green
print " Id n°" .green
puts my_kite.id 

my_kite = Product.create(name: kite_name[variable], brand: brand[variable], category: category[0], domain: kitedomain[variable], description: kite_description[0], favorite: "#freeride", testsize: "10", youtube: youtube[0], link: "https://fr.f-one.world/produit/bandit-2020/", price: rand(1200..1600), year: "2018")
my_technic = Technic.create(wave: rand(0..5),bigair: rand(0..5),freeride: rand(0..5),freestyle: rand(0..5), maniability: rand(0..5), feeling: rand(0..5))
my_option = Option.create(detail:"spi quad-tex super costaud", range:"5 / 6 / 7 / 8 / 9 / 10 / 11 / 12 / 14", bridle: "no poulies", strut: rand(0..5), line: rand(4..5))
my_kite.technic = my_technic
my_kite.option = my_option
my_kite.save
my_option.product = my_kite
my_option.save
my_technic.product = my_kite
my_technic.save
print my_kite.name .green
print " Id n°" .green
puts my_kite.id 

my_bar = Product.create(name: bar_name[variable], brand: brand[variable], category: category[3], domain: "bar", description: "des barres de rire cette barre", favorite: "#son grip", testsize: "40-45", youtube: youtube[0], link: "https://fr.f-one.world/produit/bandit-2020/", price: rand(400..600), year: "2020")
my_technic = Technic.create(grip: rand(1..5))
my_option = Option.create(detail:"secu réenclenchable automatiquement", range:"40-45 / 45-50", trim:"sangle", twist:"automatique et sur le chicken",line: rand(20..27), v: "V")
my_bar.option = my_option
my_bar.save
my_option.product = my_bar
my_option.save
my_technic.product = my_bar
my_technic.save
print my_bar.name .green
print " Id n°" .green
puts my_bar.id

my_board = Product.create(name: board_name[variable], brand: brand[variable], category: category[1], domain: "freestyle", description: kite_description[0], favorite: "pop", testsize: "135x42", youtube: youtube[0], link: "https://fr.f-one.world/produit/bandit-2020/", price: rand(400..800), year: "2020")
my_technic = Technic.create(freeride: rand(0..5),freestyle: rand(0..5), maniability: rand(0..5), control: rand(0..5), progression: rand(0..5))
my_option = Option.create(detail:"noyau bois", range:"134x41 / 136x42 / 138x43", fin: "3,5cm",width: rand(38..45), stance: "62cm / 65cm / 68cm",champs: "HRD", weigh: rand(3..5), carene: "channel", flex:"medium", velcros: rand(1..4))
my_board.technic = my_technic
my_board.option = my_option
my_board.save
my_option.product = my_board
my_option.save
my_technic.product = my_board
my_technic.save

print my_board.name .red
print " ID n°" .red
puts my_board.id

my_pads = Product.create(name: pads_name[variable], brand: brand[variable], category: category[3], domain: "pads", description: "une bonne grosse pantoufle", favorite: "les scratchs", youtube: youtube[0], link: "https://fr.f-one.world/produit/bandit-2020/", price: rand(140..300), year: "2020")
my_technic = Technic.create(pad: rand(1..5), strap: rand(1..5))
my_option = Option.create(detail:"top pour les petits pieds", weigh: rand(3..5),velcros: rand(1..4))
my_pads.technic = my_technic
my_pads.option = my_option
my_pads.save
my_option.product = my_pads
my_option.save
my_technic.product = my_pads
my_technic.save
print my_pads.name .red
print " ID n°" .red
puts my_pads.id

my_surf = Product.create(name: surfboard_name[variable], brand: brand[variable], category: category[2], domain: surfdomain[variable], description: kite_description[0], favorite: "son pads", testsize: "6'4", youtube: youtube[0], link: "https://fr.f-one.world/produit/bandit-2020/", price: rand(500..1000), year: "2020")
my_technic = Technic.create(wave: rand(0..5),freestyle: rand(0..5), courbes: rand(0..5),wind: rand(0..5),sideshore: rand(0..5),onshore: rand(0..5), strap: rand(0..5),strapless: rand(0..5), transitions: rand(0..5))
my_option = Option.create(detail:"construction bambou", range:"6'2 / 6'4 / 7'2", fin: "3,5cm", width: rand(33..38), weigh: rand(3.2..4.8), length: rand(150..180), maitrebau: rand(40..50), thickness:rand(5.5..6.8), volum:rand(22..26), box:"futures fins", carene: "concave 3mm")
my_surf.technic = my_technic
my_surf.option = my_option
my_surf.save
my_option.product = my_surf
my_option.save
my_technic.product = my_surf
my_technic.save
print my_surf.name .blue
print " Id n°" .blue
puts my_surf.id

my_wetsuit = Product.create(name: wetsuit_name[variable], brand: wetsuit_brand[variable], category: category[3], domain: "wetsuit", description: "souple et chaud", favorite: "son front-zip", youtube: youtube[0], link: "https://fr.f-one.world/produit/bandit-2020/", price: rand(300..600), year: "2020")
my_option = Option.create(detail:"neoprene vraiment souple", range:"S / M / XL / XXL", thickness: "3/2 - 4/3 - 5/4", flex: "stretch", velcros:"yes", zip: "front")
my_wetsuit.option = my_option
my_wetsuit.save
my_option.product = my_wetsuit
my_option.save
print my_wetsuit.name .white
print " Id n°" .white
puts my_wetsuit.id

my_harness = Product.create(name: harness_name[variable], brand: harness_brand[variable], category: category[3], domain: "harness", description: "maintient bien le dos", favorite: "sa boucle", youtube: youtube[0], link: "https://fr.f-one.world/produit/bandit-2020/", price: rand(120..400), year: "2020")
my_option = Option.create(detail:"attache leash à l'avant", range:"S / M / XL / XXL", bar: "vague / foil / freestyle", flex: "medium", velcros:"2", zip: "ceinture", trim: "à clip")
my_harness.option = my_option
my_harness.save
my_option.product = my_harness
my_option.save
print my_harness.name .white
print " Id n°" .white
puts my_harness.id

my_foil = Product.create(name: "le foil", brand: brand[variable], category: category[4], domain: "Freeride", description: kite_description[0], favorite: "sa vitesse", testsize: "80", youtube: youtube[0], link: "https://fr.f-one.world/produit/bandit-2020/", price: rand(1200..1600), year: "2020")
my_technic = Technic.create(wave: rand(0..5), freeride: rand(0..5),freestyle: rand(0..5), feeling: rand(0..5))
my_option = Option.create(detail:"la déco ! En plus il n'y a que ça de bien", range:"60 / 80 / 10", weigh: rand(3..5), thickness:rand(5.5..6.8), volum:rand(22..26),length: "120x45",fin: "800", box:"futures fins")
my_foil.technic = my_technic
my_foil.option = my_option
my_foil.save
my_option.product = my_foil
my_option.save
my_technic.product = my_foil
my_technic.save
print my_foil.name .blue
print " Id n°" .blue
puts my_foil.id 

my_wing = Product.create(name: "wing", brand: brand[variable], category: category[4], domain: "wingfoil", description: kite_description[0], favorite: "son shape", testsize: "5", youtube: youtube[0], link: "https://fr.f-one.world/produit/bandit-2020/", price: rand(400..600), year: "2020")
my_technic = Technic.create(wave: rand(0..5), freeride: rand(0..5),freestyle: rand(0..5), feeling: rand(0..5), maniability: rand(0..5))
my_option = Option.create(detail:"les poignées trop confort", range:"3,5 / 5 / 6", weigh: rand(1..3),length: "120x45", velcros: "oui", strut: rand(1..2))
my_wing.technic = my_technic
my_wing.option = my_option
my_wing.save
my_option.product = my_wing
my_option.save
my_technic.product = my_wing
my_technic.save
print my_wing.name .green
print " Id n°" .green
puts my_wing.id
 
my_compare = Compare.create(product: my_kite, user: my_user, same: false)
my_compare = Compare.create(product: my_board, user: my_user, same: false)
my_compare = Compare.create(product: my_surf, user: my_user, same: false)
my_compare = Compare.create(product: my_harness, user: my_user, same: false)

variable = variable + 1

end

