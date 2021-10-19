#!/usr/bin/env ruby

require 'discordrb'
require 'yaml'

bot = Discordrb::Bot.new token: 'OTAwMDUyODgzOTE4MTY0MDkw.YW7tkQ.OmAWMEZyEK0oSFhf69ROZsQ5F74', client_id: '900052883918164090'

puts "This bot's invite URL is #{bot.invite_url}."
puts 'Click on it to invite it to your server.'

deck = <<YAML
---
-
    id: 1
    name: Hidden Moon
    card: 1S
    suns: Grey/Indigo
    url: https://bit.ly/2MMoaP8
-
    id: 2
    name: Incriminating Skull
    card: 5S
    suns: Gold/Silver
    url: https://bit.ly/2BKu4vM
-
    id: 3
    name: Compelling Voice
    card: 2S
    suns: Invisible
    url: https://bit.ly/2P0IdH2
-
    id: 4
    name: Weeping Priest
    card: 5S
    suns: Apprentice
    url: https://bit.ly/2LnN9DF
-
    id: 5
    name: Crowded Tomb
    card: 1S
    suns: Pale/Green
    url: https://bit.ly/2Mtev0p
-
    id: 6
    name: Unknowable Truth
    card: 4S
    suns: Indigo/Grey
    url: https://bit.ly/2NdYl7j
-
    id: 7
    name: Relentless Rumor
    card: 3S
    suns: Green/Pale
    url: https://bit.ly/2o70A1j
-
    id: 8
    name: Mysterious Rune
    card: 9S
    suns: Red/Blue
    url: https://bit.ly/2Ng1rYH
-
    id: 9
    name: Sealed Door
    card: 7S
    suns: Silver/Gold
    url: https://bit.ly/2MLFAet
-
    id: 10
    name: Endless Maze
    card: 3S
    suns: Blue/Red
    url: https://bit.ly/2MTL1s8
-
    id: 11
    name: Raven
    card: 6S
    suns: Companion
    url: https://bit.ly/2P4NkWx
-
    id: 12
    name: Alchemist
    card: 8S
    suns: Adept
    url: https://bit.ly/2MNjIzC
-
    id: 13
    name: Conspirator
    card: 7S
    suns: Defender
    url: https://bit.ly/2wm7QdF
-
    id: 14
    name: Devil
    card: 0S
    suns: Nemesis
    url: https://bit.ly/2P4uEGq
-
    id: 15
    name: Revolutionary
    card: 9S
    suns: Sovereign
    url: https://bit.ly/2ML7MOM
-
    id: 16
    name: Blind Guardian
    card: 2V
    suns: Silver/Gold
    url: https://bit.ly/2P4EsAq
-
    id: 17
    name: Suspicious Hound
    card: 0V
    suns: Indigo/Grey
    url: https://bit.ly/2P4ECI2
-
    id: 18
    name: Whispering Lover
    card: 1V
    suns: Grey/Indigo
    url: https://bit.ly/2LkAT6M
-
    id: 19
    name: Savage Sword
    card: 3V
    suns: Red/Blue
    url: https://bit.ly/2BJEk7x
-
    id: 20
    name: Inevitable Cataclysm
    card: 4V
    suns: Gold/Silver
    url: https://bit.ly/2oaUEnX
-
    id: 21
    name: Questing Knight
    card: 5V
    suns: Apprentice
    url: https://bit.ly/2Ng2jMX
-
    id: 22
    name: Eternal Mountain
    card: 4V
    suns: Green/Pale
    url: https://bit.ly/2o59M6q
-
    id: 23
    name: Elusive Sleep
    card: 6V
    suns: Blue/Red
    url: https://bit.ly/2MzMswr
-
    id: 24
    name: Revealing Knife
    card: 8V
    suns: Pale/Green
    url: https://bit.ly/2MQg9IW
-
    id: 25
    name: Enticing Jewel
    card: 2V
    suns: Invisible
    url: https://bit.ly/2OZ6Pjc
-
    id: 26
    name: Ambassador
    card: 8V
    suns: Adept
    url: https://bit.ly/2BJxIpx
-
    id: 27
    name: Imperator
    card: 9V
    suns: Sovereign
    url: https://bit.ly/2OZPgQb
-
    id: 28
    name: Swan
    card: 6V
    suns: Companion
    url: https://bit.ly/2LqX8bc
-
    id: 29
    name: Doctor
    card: 0V
    suns: Nemesis
    url: https://bit.ly/2BI4mYU
-
    id: 30
    name: Messiah
    card: 7V
    suns: Defender
    url: https://bit.ly/2NiOz49
-
    id: 31
    name: Looming Shade
    card: 9M
    suns: Grey/Indigo
    url: https://bit.ly/2wr4sxQ
-
    id: 32
    name: Ghostly Presence
    card: 7M
    suns: Pale/Green
    url: https://bit.ly/2MHTqyL
-
    id: 33
    name: Harvesting Spider
    card: 2M
    suns: Red/Blue
    url: https://bit.ly/2MPx5z1
-
    id: 34
    name: Banished Serpent
    card: 3M
    suns: Silver/Gold
    url: https://bit.ly/2w82uDc
-
    id: 35
    name: Forgotten Prisoner
    card: 5M
    suns: Apprentice
    url: https://bit.ly/2LntaVq
-
    id: 36
    name: Untrustworthy Mirror
    card: 4M
    suns: Gold/Silver
    url: https://bit.ly/2OXx0qo
-
    id: 37
    name: Misremembered Dream
    card: 1M
    suns: Blue/Red
    url: https://bit.ly/2w897FY
-
    id: 38
    name: Endless Woods
    card: 3M
    suns: Green/Pale
    url: https://bit.ly/2LnOY36
-
    id: 39
    name: Enveloping Darkness
    card: 5M
    suns: Invisible
    url: https://bit.ly/2P2P3LU
-
    id: 40
    name: Fleeting Moment
    card: 1M
    suns: Indigo/Grey
    url: https://bit.ly/2OXxrkw
-
    id: 41
    name: Jackal
    card: 0M
    suns: Nemesis
    url: https://bit.ly/2BMpsFy
-
    id: 42
    name: Assassin
    card: 8M
    suns: Adept
    url: https://bit.ly/2wv9jOW
-
    id: 43
    name: Rat
    card: 6M
    suns: Companion
    url: https://bit.ly/2Mw6UOx
-
    id: 44
    name: Driver
    card: 7M
    suns: Defender
    url: https://bit.ly/2MSRTWn
-
    id: 45
    name: Watcher
    card: 9M
    suns: Sovereign
    url: https://bit.ly/2MzA13K
-
    id: 46
    name: Lost Star
    card: 8N
    suns: Grey/Indigo
    url: https://bit.ly/2P1ZgrW
-
    id: 47
    name: Misunderstood Beast
    card: 0N
    suns: Green/Pale
    url: https://bit.ly/2NkfP22
-
    id: 48
    name: Golden Ship
    card: 2N
    suns: Gold/Silver
    url: https://bit.ly/2PCA6Br
-
    id: 49
    name: Unwelcome Child
    card: 5N
    suns: Apprentice
    url: https://bit.ly/2PFUT7e
-
    id: 50
    name: Empty Gallows
    card: 3N
    suns: Pale/Green
    url: https://bit.ly/2wti5gh
-
    id: 51
    name: Imprisoning Ice
    card: 4N
    suns: Red/Blue
    url: https://bit.ly/2LnaQff
-
    id: 52
    name: Dangerous Elixir
    card: 1N
    suns: Indigo/Grey
    url: https://bit.ly/2wt9OZs
-
    id: 53
    name: Tyrannical Clock
    card: 6N
    suns: Invisible
    url: https://bit.ly/2wgIlLp
-
    id: 54
    name: Forbidden Game
    card: 2N
    suns: Blue/Red
    url: https://bit.ly/2BVfwt4
-
    id: 55
    name: Lucky Coin
    card: 4N
    suns: Silver/Gold
    url: https://bit.ly/2MAcfnW
-
    id: 56
    name: Monarch
    card: 9N
    suns: Sovereign
    url: https://bit.ly/2weePpu
-
    id: 57
    name: Cat
    card: 6N
    suns: Companion
    url: https://bit.ly/2PF6DqI
-
    id: 58
    name: Angel
    card: 7N
    suns: Defender
    url: https://bit.ly/2BNYfCc
-
    id: 59
    name: Vizier
    card: 0N
    suns: Nemesis
    url: https://bit.ly/2LrOkSc
-
    id: 60
    name: Hunter
    card: 8N
    suns: Adept
    url: https://bit.ly/2BNWy7F
YAML
cardlookup = YAML.load(deck)
deck = cardlookup[0..-1].shuffle
mishaplookup = [
    '',
    'MISHAPS: 1 (Minor magical flux)',
    'MISHAPS: 2 (Moderate magical flux)',
    'MISHAPS: 3 (Major magical flux)'
]

royaltylookup = {
    'Sovereign'     => '+1 to all actions, +2 if heart matches',
    'Nemesis'       => '-1 to all actions, -2 if heart matches',
    'Defender'      => '+2 to all actions if heart matches',
    'Apprentice'    => '-1 to all actions if heart matches',
    'Companion'     => 'Duplicates the effect of the previous card',
    'Adept'         => '**Play another card on the path**'
}

suitlookup = {
    'S' => 'Secrets',
    'M' => 'Mysteries',
    'V' => 'Visions',
    'N' => 'Notions'
}

suitheartlookup = {
    'S' => 'Galant',
    'M' => 'Stoic',
    'V' => 'Empath',
    'N' => 'Ardent'
}

sunlookup = [
    'Silver',
    'Green',
    'Blue',
    'Indigo',
    'Grey',
    'Pale',
    'Red',
    'Gold',
    'Invisible'
]

path = []
pathindex = 0

puts 'Sooth decks loaded.'

bot.message(content: '!help') do |event|
    help = <<HELP
How to use the SoothBot:
!help - view this message
!roll - Roll a mundane die
!roll2 - Roll a mundane die and one magic die
!roll3 - Roll a mundane die and two magic die
!roll4 - Roll a mundane die and three magic die
!card - show a random card
!draw - deal a random card, removing it from the deck
!path - deal a card onto the path of suns
!shuffle - return all cards to the deck that are not already on the path of suns and shuffle them
!reset - return all cards to the deck and clear the path of suns
HELP
    event.respond help
end

#TODO refactor drawing into a function
#TODO refactor responses into a function
bot.message(content: '!card') do |event|
    card = cardlookup[rand(60)]
    value = card['card'][0]
    suit = card['card'][1]
    event.respond  'A card appears at random.', false, {
        'title': card['name'],
        'url': card['url'],
        'description': "Value: #{ value }  \nSuit: #{ suitlookup[suit] }  \nType: #{ card['suns'] }",
        'image':  {
            'url': "https://app.invisiblesunrpg.com/wpsite/wp-content/uploads/2018/04/56.png"
        }
    }
end

bot.message(content: '!draw') do |event|
    if deck.empty?
        event.respond 'No cards remaining'
        return
    end
    card = deck.shift
    value = card['card'][0]
    suit = card['card'][1]
    puts "Drew card #{ card['id'] }, #{ deck.length } cards remain"

    event.respond  'A card is drawn from the deck.', false, {
        'title': card['name'],
        'url': card['url'],
        'description': "Value: #{ value }  \nSuit: #{ suitlookup[suit] }  \nType: #{ card['suns'] }",
        'image':  {
            'url': "https://app.invisiblesunrpg.com/wpsite/wp-content/uploads/2018/04/56.png"
        }
    }
end

#TODO refactor this code, high cognitive complexity
#BUG stacking 2+ companion cards does not resolve to the active card
bot.message(content: '!path') do |event|
    if deck.empty?
        event.respond 'No cards remaining'
        return
    end
    card = deck.shift
    value = card['card'][0]
    suit = card['card'][1]
    puts "Drew card #{ card['id'] }, #{ deck.length } cards remain"

    path[pathindex%sunlookup.length] = card

    response = "A card is drawn from the deck and placed on the #{ sunlookup[pathindex%sunlookup.length] } Sun.\n"

    effectmessage = "\nActive effects:\n"

    path.each_with_index do |c, i|
        value = c['card'][0]
        suit = c['card'][1]

        nextcard = nil
        nextindex = (i+1)%sunlookup.length
        if path[nextindex] and (nextindex==8 or nextindex==pathindex%sunlookup.length)
            nextcard = path[nextindex]['suns']
        end

        if i==pathindex%sunlookup.length or i==8 or nextcard == 'Companion'
            response += "**#{ sunlookup[i] }**"

            if royaltylookup.has_key? c['suns']
                effectmessage += "*#{ c['suns'] } effect: #{ royaltylookup[c['suns']] }"

                if c['suns'] != 'Companion' and c['suns'] != 'Adept'
                    effectmessage += " (#{ suitheartlookup[suit] })"
                end

                effectmessage += "*\n"
            else
                enhdim = "#{ c['suns'].split('/')[0] } #{ c['suns'].split('/')[0]==sunlookup[i] ? '**+2**' : '+1' }"

                if c['suns'] != 'Invisible'
                    enhdim += ", #{ c['suns'].split('/')[1] } #{ c['suns'].split('/')[1]==sunlookup[i] ? '**-2**' : '-1' }"
                end

                effectmessage += "*#{ c['suns'] } effect: #{ enhdim }*\n"
            end
        else
            response += sunlookup[i]
        end

        response += ": #{ c['name'] } (#{ value } #{ suitlookup[suit] } #{ c['suns'] })\n"
    end

    pathindex += 1

    event.respond  response+effectmessage, false, {
        'title': card['name'],
        'url': card['url'],
        'description': "Value: #{ value }  \nSuit: #{ suitlookup[suit] }  \nType: #{ card['suns'] }",
        'image':  {
            'url': "https://app.invisiblesunrpg.com/wpsite/wp-content/uploads/2018/04/#{ "%02d" % card['id'] }.png"
        }
    }
end

bot.message(content: '!shuffle') do |event|
    deck = cardlookup[0..-1].shuffle
    sortedpath = path[0..-1].sort_by { |v| v['id'] }
    sortedpath.reverse.each { |card| deck.slice!(card['id'] - 1) }
    puts "Reset the deck and removed cards still on the path, #{ deck.length } cards remain"
    event.respond "The path of suns has been reset, and #{ deck.length } cards have been returned and shuffled"
end

bot.message(content: '!reset') do |event|
    deck = cardlookup[0..-1].shuffle
    path = []
    pathindex = 0
    puts "Reset the path and deck, #{ deck.length } cards remain"
    event.respond "The path of suns has been reset, and #{ deck.length } cards have been returned and shuffled"
end

bot.message(content: '!roll') do |event|
    result = rand(10)
    event.respond "Mundane: [ #{ result } ]"
end

bot.message(content: '!roll2') do |event|
    result = rand(10)
    magic = rand(10)
    mishaps = magic == 0 ? 1 : 0
    event.respond  "Mundane: [ #{ result } ] Magical: [ #{ magic } ] #{ mishaplookup[mishaps] }"
end

bot.message(content: '!roll3') do |event|
    result = rand(10)
    magic = rand(10)
    mishaps = magic == 0 ? 1 : 0
    magic2 = rand(10)
    mishaps += 1 if magic2 == 0
    event.respond "Mundane: [ #{ result } ] Magical: [ #{ magic } ] [ #{ magic2 } ] #{ mishaplookup[mishaps] }"

end

bot.message(content: '!roll4') do |event|
    result = rand(10)
    magic = rand(10)
    mishaps = magic == 0 ? 1 : 0
    magic2 = rand(10)
    mishaps += 1 if magic2 == 0
    magic3 = rand(10)
    mishaps += 1 if magic3 == 0
    event.respond "Mundane: [ #{ result } ] Magical: [ #{ magic } ] [ #{ magic2 } ] [ #{ magic3 } ] #{ mishaplookup[mishaps] }"
end

bot.run
