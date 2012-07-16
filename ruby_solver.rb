class Hangman
  def initialize
    @guess = ARGV[0]
    @wordbank = ["aardvark", "abacus", "abundance", "ache", "acupuncture", "airbrush", "alien", "anagram", "angle", "amazing", "ankle", "alphabet", "antenna", "aqua", "asphalt", "bacon", "banana", "bangles", "banjo", "bankrupt", "bar", "barracuda", "basket", "beluga", "binder", "birthday", "bisect", "blizzard", "blunderbuss", "boa", "bog", "bounce", "broomstick", "brought", "bubble", "budgie", "bug", "bug-a-boo", "bugger", "buff", "burst", "butter", "buzz", "cabana", "cake", "calculator", "camera", "candle", "carnival", "carpet", "casino", "cashew", "catfish", "ceiling", "celery", "chalet", "chalk", "chart", "cheddar", "chesterfield", "chicken", "chinchill", "chocolate", "chowder", "coal", "compass", "compress", "computer", "conduct", "contents", "cookie", "copper", "corduroy", "cow", "cracker", "crackle", "croissant", "cube", "cupcake", "curly", "curtain", "cushion", "cuticle", "daffodil", "delicious", "dictionary", "dimple", "disk", "disco duck", "dodo", "dolphin", "dong", "donuts", "dork", "dracula", "duct tape", "effigy", "egad", "elastic", "elephant", "encasement", "erosion", "eyelash", "fabulous", "fantastic", "feather", "felafel", "fetish", "financial", "finger", "finite", "fish", "fizzle", "fizzy", "flame", "flash", "flavour", "flick", "flock", "flour", "flower", "foamy", "foot", "fork", "fritter", "fudge", "fungus", "funny", "fuse", "fusion", "fuzzy", "garlic", "gelatin", "gelato", "ghetto", "glebe", "glitter", "glossy", "groceries", "goulashes", "guacamole", "gumdrop", "haberdashery", "hamster", "happy", "highlight", "hippopotamus", "hobbit", "hold", "hooligan", "hydrant", "icicles", "idiot", "implode", "implosion", "indeed", "issue", "itchy", "jewel", "jump", "kabob", "kasai", "kite", "kiwi", "ketchup", "knob", "laces", "lacy", "laughter", "laundry", "leaflet", "legacy", "leprechaun", "lollypop", "lumberjack", "macadamia", "magenta", "magic", "magnanimous", "mango", "margarine", "massimo", "mechanical", "medicine", "meh", "melon", "meow", "mesh", "metric", "microphone", "minnow", "mitten", "mozzarella", "muck", "mumble", "mushy", "mustache", "nanimo", "noodle", "nostril", "nuggets", "oatmeal", "oboe", "octopus", "odour", "ointment", "olive", "optic", "overhead", "ox", "oxen", "pajamas", "pancake", "pansy", "paper", "paprika", "parmesan", "pasta", "pattern", "pecan", "pen", "pepper", "pepperoni", "peppermint", "perfume", "periwinkle", "photograph", "pie", "pierce", "pillow", "pimple", "pineapple", "pistachio", "plush", "polish", "pompom", "poodle", "pop", "popsicle", "prism", "prospector", "prosper", "pudding", "puppet", "puzzle", "queer", "query", "radish", "rainbow", "ribbon", "rotate", "salami", "sandwich", "saturday", "saturn", "saxophone", "scissors", "scooter", "scrabbleship", "scrunchie", "scuffle", "shadow", "sickish", "silicone", "slippery", "smash", "smooch", "smut", "snap", "snooker", "socks", "soya", "spaghett", "sparkle", "spatula", "spiral", "splurge", "spoon", "sprinkle", "square", "squiggle", "squirrel", "statistics", "stuffing", "sticky", "sugar", "sunshine", "super", "swirl", "taffy", "tangy", "tape", "tat", "teepee", "telephone", "television", "thinkable", "tip", "tofu", "toga", "trestle", "tulip", "turnip", "turtle", "tusks", "ultimate", "unicycle", "unique", "uranus", "vegetable", "waddle", "waffle", "wallet", "walnut", "wagon", "window", "whatever", "whimsical", "wobbly", "yellow", "zap", "zebra", "zigzag", "zip"]
  end
  
  def validate
    @matching_words = []
    @guess_by_char = @guess.split('')

    @wordbank.each do |word|
      @index = 0
      word_match = true
      word.each_char do |char|
        if @guess_by_char[@index] != char
          word_match = false
          break
        else
          @index += 1
        end
      end
      @matching_words << word if word_match
    end
  end
  
  def output
    p @matching_words
  end
end


new_game = Hangman.new
new_game.validate
new_game.output
