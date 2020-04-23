require 'faker'

module DataModule

    PHRASES = [
        Array.new(15, Faker::TvShows::TheITCrowd.quote),
        Array.new(15, Faker::TvShows::RickAndMorty.quote),
        Array.new(15, Faker::Movies::Lebowski.quote)
    ]

    PROMPTS = {
        d1: [
            "Oi! Go and empty the [BIN] over there! NOW!",
            "You need to [PUT] those boxes away, STAT!",
            "Far out, the customers are complaining it's too [HOT], turn on the AC!",
            "HEY! Get the swatter and kill that [FLY], it's so annoying everyone!",
            "THROW OUT THAT [OLD] WINE!",
            "You want to keep your [JOB]? MOVE IT!",
            "Would you recommend the [RED] or the white?",
            "Oi, what can I [BUY] in this joint CHAMP?!",
            "Excuse me could you put my [BAG] behind the bar please?",
            "WE NEED MORE [ICE] RIGHT NOW!"
        ],
        d2: [
            "Man, I'v been here for 9 hours, what a [GRIND]!",
            "Who tipped the potplant over? There's [SOIL] everywhere!",
            "This is, without a [DOUBT], the worst bar I've ever been to",
            "[SCAN] the room for glasses would you? We're running low",
            "Oh we heard this bar is all the latest [RAGE] recently!",
            "Could you [TELL] me more about where this wine is from?",
            "Mate, could I grab a [BEER]?",
            "Just a glass of red [WINE] please",
            "Could you get a [SPARE] carton from downstairs?",
            "The amount of cockcroaches in this bar is not [IDEAL]"
        ],
        d3: [
            "Do you do [SENIOR] discounts here?? WHAT?",
            "Please sir, it's my job to make sure you don't drink to [EXCESS]",
            "I just come here every Friday because I'm [LONELY]...",
            "Hi, we booked for 20 people in an hour but we're gonna have to [CANCEL] :)",
            "Look here, CHAMP, let me give you some [ADVICE] on life",
            "It's going to be a mild [MIRACLE] if nothing goes wrong tonight",
            "JUST [ABANDON] WHAT YOU'RE DOING AND HELP ME DANG IT!",
            "Erm, I think we might have a bit of a [PROBLEM] here..",
            "We don't have enough staff to [SUSTAIN] this level of service!",
            "I think the boss is stressed because of the [AUDITOR] coming in :S"
        ],
        d4: [
            "Can you grab that beer, thing, what, [CYLINDER], metal keg thing?",
            "My my aren't you a [TALENTED] young bartender ;)",
            "Drink order [COMPLETE]! oh wait theres another docket...",
            "There is no other word to describe this place at 1am better than [FRAGRANT]",
            "What you will [DISCOVER], is that people simply see you as a drink pouring robot",
            "Don't chat with the weird dude! You'll just [ENCOURAGE] him!",
            "I have a [SUSPICION] that tonight will get harder before it gets easier",
            "Don't worry, our staff shortage is only [TEMPORARY], promis ;)",
            "Tonight can be likened to an [ORCHESTRA] of CHAOS!",
            "You think you're the [EXCEPTION] here? WORK HARDER!"
        ]
    }

    def phrase_select
        return PHRASES.shuffle.first
    end

    def prompt_select(key)
        return PROMPTS[key].shuffle[0,5]
    end

end