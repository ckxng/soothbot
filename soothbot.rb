#!/usr/bin/env ruby

require 'discordrb'
require 'yaml'

bot = Discordrb::Bot.new token: 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX', client_id: '1111111111111111111'

puts "This bot's invite URL is #{bot.invite_url}."
puts 'Click on it to invite it to your server.'

deck = <<YAML
---
-
    id: '1'
    name: 'Hidden Moon'
    card: 1S
    suns: Grey/Indigo
    url: 'https://bit.ly/2MMoaP8'
-
    id: '2'
    name: 'Incriminating Skull'
    card: 5S
    suns: Gold/Silver
    url: 'https://bit.ly/2BKu4vM'
-
    id: '3'
    name: 'Compelling Voice'
    card: 2S
    suns: Invisible
    url: 'https://bit.ly/2P0IdH2'
-
    id: '4'
    name: 'Weeping Priest'
    card: 5S
    suns: Apprentice
    url: 'https://bit.ly/2LnN9DF'
-
    id: '5'
    name: 'Crowded Tomb'
    card: 1S
    suns: Pale/Green
    url: 'https://bit.ly/2Mtev0p'
-
    id: '6'
    name: 'Unknowable Truth'
    card: 4S
    suns: Indigo/Grey
    url: 'https://bit.ly/2NdYl7j'
-
    id: '7'
    name: 'Relentless Rumor'
    card: 3S
    suns: Green/Pale
    url: 'https://bit.ly/2o70A1j'
-
    id: '8'
    name: 'Mysterious Rune'
    card: 9S
    suns: Red/Blue
    url: 'https://bit.ly/2Ng1rYH'
-
    id: '9'
    name: 'Sealed Door'
    card: 7S
    suns: Silver/Gold
    url: 'https://bit.ly/2MLFAet'
-
    id: '10'
    name: 'Endless Maze'
    card: 3S
    suns: Blue/Red
    url: 'https://bit.ly/2MTL1s8'
-
    id: '11'
    name: Raven
    card: 6S
    suns: Companion
    url: 'https://bit.ly/2P4NkWx'
-
    id: '12'
    name: Alchemist
    card: 8S
    suns: Adept
    url: 'https://bit.ly/2MNjIzC'
-
    id: '13'
    name: Conspirator
    card: 7S
    suns: Defender
    url: 'https://bit.ly/2wm7QdF'
-
    id: '14'
    name: Devil
    card: 0S
    suns: Nemesis
    url: 'https://bit.ly/2P4uEGq'
-
    id: '15'
    name: Revolutionary
    card: 9S
    suns: Sovereign
    url: 'https://bit.ly/2ML7MOM'
-
    id: '16'
    name: 'Blind Guardian'
    card: 2V
    suns: Silver/Gold
    url: 'https://bit.ly/2P4EsAq'
-
    id: '17'
    name: 'Suspicious Hound'
    card: 0V
    suns: Indigo/Grey
    url: 'https://bit.ly/2P4ECI2'
-
    id: '18'
    name: 'Whispering Lover'
    card: 1V
    suns: Grey/Indigo
    url: 'https://bit.ly/2LkAT6M'
-
    id: '19'
    name: 'Savage Sword'
    card: 3V
    suns: Red/Blue
    url: 'https://bit.ly/2BJEk7x'
-
    id: '20'
    name: 'Inevitable Cataclysm'
    card: 4V
    suns: Gold/Silver
    url: 'https://bit.ly/2oaUEnX'
-
    id: '21'
    name: 'Questing Knight'
    card: 5V
    suns: Apprentice
    url: 'https://bit.ly/2Ng2jMX'
-
    id: '22'
    name: 'Eternal Mountain'
    card: 4V
    suns: Green/Pale
    url: 'https://bit.ly/2o59M6q'
-
    id: '23'
    name: 'Elusive Sleep'
    card: 6V
    suns: Blue/Red
    url: 'https://bit.ly/2MzMswr'
-
    id: '24'
    name: 'Revealing Knife'
    card: 8V
    suns: Pale/Green
    url: 'https://bit.ly/2MQg9IW'
-
    id: '25'
    name: 'Enticing Jewel'
    card: 2V
    suns: Invisible
    url: 'https://bit.ly/2OZ6Pjc'
-
    id: '26'
    name: Ambassador
    card: 8V
    suns: Adept
    url: 'https://bit.ly/2BJxIpx'
-
    id: '27'
    name: Imperator
    card: 9V
    suns: Sovereign
    url: 'https://bit.ly/2OZPgQb'
-
    id: '28'
    name: Swan
    card: 6V
    suns: Companion
    url: 'https://bit.ly/2LqX8bc'
-
    id: '29'
    name: Doctor
    card: 0V
    suns: Nemesis
    url: 'https://bit.ly/2BI4mYU'
-
    id: '30'
    name: Messiah
    card: 7V
    suns: Defender
    url: 'https://bit.ly/2NiOz49'
-
    id: '31'
    name: 'Looming Shade'
    card: 9M
    suns: Grey/Indigo
    url: 'https://bit.ly/2wr4sxQ'
-
    id: '32'
    name: 'Ghostly Presence'
    card: 7M
    suns: Pale/Green
    url: 'https://bit.ly/2MHTqyL'
-
    id: '33'
    name: 'Harvesting Spider'
    card: 2M
    suns: Red/Blue
    url: 'https://bit.ly/2MPx5z1'
-
    id: '34'
    name: 'Banished Serpent'
    card: 3M
    suns: Silver/Gold
    url: 'https://bit.ly/2w82uDc'
-
    id: '35'
    name: 'Forgotten Prisoner'
    card: 5M
    suns: Apprentice
    url: 'https://bit.ly/2LntaVq'
-
    id: '36'
    name: 'Untrustworthy Mirror'
    card: 4M
    suns: Gold/Silver
    url: 'https://bit.ly/2OXx0qo'
-
    id: '37'
    name: 'Misremembered Dream'
    card: 1M
    suns: Blue/Red
    url: 'https://bit.ly/2w897FY'
-
    id: '38'
    name: 'Endless Woods'
    card: 3M
    suns: Green/Pale
    url: 'https://bit.ly/2LnOY36'
-
    id: '39'
    name: 'Enveloping Darkness'
    card: 5M
    suns: Invisible
    url: 'https://bit.ly/2P2P3LU'
-
    id: '40'
    name: 'Fleeting Moment'
    card: 1M
    suns: Indigo/Grey
    url: 'https://bit.ly/2OXxrkw'
-
    id: '41'
    name: Jackal
    card: 0M
    suns: Nemesis
    url: 'https://bit.ly/2BMpsFy'
-
    id: '42'
    name: Assassin
    card: 8M
    suns: Adept
    url: 'https://bit.ly/2wv9jOW'
-
    id: '43'
    name: Rat
    card: 6M
    suns: Companion
    url: 'https://bit.ly/2Mw6UOx'
-
    id: '44'
    name: Driver
    card: 7M
    suns: Defender
    url: 'https://bit.ly/2MSRTWn'
-
    id: '45'
    name: Watcher
    card: 9M
    suns: Sovereign
    url: 'https://bit.ly/2MzA13K'
-
    id: '46'
    name: 'Lost Star'
    card: 8N
    suns: Grey/Indigo
    url: 'https://bit.ly/2P1ZgrW'
-
    id: '47'
    name: 'Misunderstood Beast'
    card: 0N
    suns: Green/Pale
    url: 'https://bit.ly/2NkfP22'
-
    id: '48'
    name: 'Golden Ship'
    card: 2N
    suns: Gold/Silver
    url: 'https://bit.ly/2PCA6Br'
-
    id: '49'
    name: 'Unwelcome Child'
    card: 5N
    suns: Apprentice
    url: 'https://bit.ly/2PFUT7e'
-
    id: '50'
    name: 'Empty Gallows'
    card: 3N
    suns: Pale/Green
    url: 'https://bit.ly/2wti5gh'
-
    id: '51'
    name: 'Imprisoning Ice'
    card: 4N
    suns: Red/Blue
    url: 'https://bit.ly/2LnaQff'
-
    id: '52'
    name: 'Dangerous Elixir'
    card: 1N
    suns: Indigo/Grey
    url: 'https://bit.ly/2wt9OZs'
-
    id: '53'
    name: 'Tyrannical Clock'
    card: 6N
    suns: Invisible
    url: 'https://bit.ly/2wgIlLp'
-
    id: '54'
    name: 'Forbidden Game'
    card: 2N
    suns: Blue/Red
    url: 'https://bit.ly/2BVfwt4'
-
    id: '55'
    name: 'Lucky Coin'
    card: 4N
    suns: Silver/Gold
    url: 'https://bit.ly/2MAcfnW'
-
    id: '56'
    name: Monarch
    card: 9N
    suns: Sovereign
    url: 'https://bit.ly/2weePpu'
-
    id: '57'
    name: Cat
    card: 6N
    suns: Companion
    url: 'https://bit.ly/2PF6DqI'
-
    id: '58'
    name: Angel
    card: 7N
    suns: Defender
    url: 'https://bit.ly/2BNYfCc'
-
    id: '59'
    name: Vizier
    card: 0N
    suns: Nemesis
    url: 'https://bit.ly/2LrOkSc'
-
    id: '60'
    name: Hunter
    card: 8N
    suns: Adept
    url: 'https://bit.ly/2BNWy7F'
YAML
ydeck = YAML.load(deck)

puts 'Sooth deck loaded.'

bot.message(content: 'SoothDeal') do |event|
  card = ydeck[rand(60)]
  event.respond "You drew the #{ card['name'] } (#{ card['card'] } #{ card['suns'] }) - #{ card['url'] }"
end

bot.run
