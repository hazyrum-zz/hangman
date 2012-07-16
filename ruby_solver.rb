class Hangman
  def initialize
    @guess = ARGV[0]
    @wordbank = ["Aardvark", "Abacus", "Abundance", "Ache", "Acupuncture", "Airbrush", "Alien", "Anagram", "Angle", "Amazing", "Ankle", "Alphabet", "Antenna", "Aqua", "Asphalt", "Bacon", "Banana", "Bangles", "Banjo", "Bankrupt", "Bar", "Barracuda", "Basket", "Beluga", "Binder", "Birthday", "Bisect", "Blizzard", "Blunderbuss", "Boa", "Bog", "Bounce", "Broomstick", "Brought", "Bubble", "Budgie", "Bug", "Bug-a-boo", "Bugger", "Buff", "Burst", "Butter", "Buzz", "Cabana", "Cake", "Calculator", "Camera", "Candle", "Carnival", "Carpet", "Casino", "Cashew", "Catfish", "Ceiling", "Celery", "Chalet", "Chalk", "Chart", "Cheddar", "Chesterfield", "Chicken", "Chinchill", "Chocolate", "Chowder", "Coal", "Compass", "Compress", "Computer", "Conduct", "Contents", "Cookie", "Copper", "Corduroy", "Cow", "Cracker", "Crackle", "Croissant", "Cube", "Cupcake", "Curly", "Curtain", "Cushion", "Cuticle", "Daffodil", "Delicious", "Dictionary", "Dimple", "Disk", "Disco Duck", "Dodo", "Dolphin", "Dong", "Donuts", "Dork", "Dracula", "Duct Tape", "Effigy", "Egad", "Elastic", "Elephant", "Encasement", "Erosion", "Eyelash", "Fabulous", "Fantastic", "Feather", "Felafel", "Fetish", "Financial", "Finger", "Finite", "Fish", "Fizzle", "Fizzy", "Flame", "Flash", "Flavour", "Flick", "Flock", "Flour", "Flower", "Foamy", "Foot", "Fork", "Fritter", "Fudge", "Fungus", "Funny", "Fuse", "Fusion", "Fuzzy", "Garlic", "Gelatin", "Gelato", "Ghetto", "Glebe", "Glitter", "Glossy", "Groceries", "Goulashes", "Guacamole", "Gumdrop", "Haberdashery", "Hamster", "Happy", "Highlight", "Hippopotamus", "Hobbit", "Hold", "Hooligan", "Hydrant", "Icicles", "Idiot", "Implode", "Implosion", "Indeed", "Issue", "Itchy", "Jewel", "Jump", "Kabob", "Kasai", "Kite", "Kiwi", "Ketchup", "Knob", "Laces", "Lacy", "Laughter", "Laundry", "Leaflet", "Legacy", "Leprechaun", "Lollypop", "Lumberjack", "Macadamia", "Magenta", "Magic", "Magnanimous", "Mango", "Margarine", "Massimo", "Mechanical", "Medicine", "Meh", "Melon", "Meow", "Mesh", "Metric", "Microphone", "Minnow", "Mitten", "Mozzarella", "Muck", "Mumble", "Mushy", "Mustache", "Nanimo", "Noodle", "Nostril", "Nuggets", "Oatmeal", "Oboe", "Octopus", "Odour", "Ointment", "Olive", "Optic", "Overhead", "Ox", "Oxen", "Pajamas", "Pancake", "Pansy", "Paper", "Paprika", "Parmesan", "Pasta", "Pattern", "Pecan", "Pen", "Pepper", "Pepperoni", "Peppermint", "Perfume", "Periwinkle", "Photograph", "Pie", "Pierce", "Pillow", "Pimple", "Pineapple", "Pistachio", "Plush", "Polish", "Pompom", "Poodle", "Pop", "Popsicle", "Prism", "Prospector", "Prosper", "Pudding", "Puppet", "Puzzle", "Queer", "Query", "Radish", "Rainbow", "Ribbon", "Rotate", "Salami", "Sandwich", "Saturday", "Saturn", "Saxophone", "Scissors", "Scooter", "Scrabbleship", "Scrunchie", "Scuffle", "Shadow", "Sickish", "Silicone", "Slippery", "Smash", "Smooch", "Smut", "Snap", "Snooker", "Socks", "Soya", "Spaghett", "Sparkle", "Spatula", "Spiral", "Splurge", "Spoon", "Sprinkle", "Square", "Squiggle", "Squirrel", "Statistics", "Stuffing", "Sticky", "Sugar", "Sunshine", "Super", "Swirl", "Taffy", "Tangy", "Tape", "Tat", "Teepee", "Telephone", "Television", "Thinkable", "Tip", "Tofu", "Toga", "Trestle", "Tulip", "Turnip", "Turtle", "Tusks", "Ultimate", "Unicycle", "Unique", "Uranus", "Vegetable", "Waddle", "Waffle", "Wallet", "Walnut", "Wagon", "Window", "Whatever", "Whimsical", "Wobbly", "Yellow", "Zap", "Zebra", "Zigzag", "Zip"]
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