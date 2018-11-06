require './my_marketplace.rb'

# adding data
mazzyb ||= User.create(username: 'MazzyB')
mazzyb.cats.create(catname: 'Tizzy', description: 'Grouchy without sleep. Adorable stalker.')
mazzyb.cats.create(catname: 'Tigga', description: 'Squeaky and adorable.')
mazzyb.cats.create(catname: 'Taffy', description: 'Clever mummy cat')
mazzyb.cats.create(catname: 'Tinny', description: 'Fighter umit')
igor ||= User.create(username: 'Igor')
igor.cats.create(catname: 'Tussi', description: 'Dribble and kneading central!')
elena ||= User.create(username: 'Elena')
elena.cats.create(catname: 'Teddy', description: 'Slippery Snek')

binding.pry
