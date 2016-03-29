# Nice job here! 
Course.destroy_all
Gym.destroy_all

earthtreks = Gym.create(name: "Earth Treks", location: "Rockville, MD")
sportrock = Gym.create(name: "Sport Rock", location: "Alexandria, VA")
verticalrock = Gym.create(name: "Vertical Rock", location: "Manassas, VA")

witnessprotection = Course.create(title: "Witness Protection", difficulty: "5.11a", setter: "Jordan", set_date: "01-07-2016", gym: earthtreks)
paradigmshift = Course.create(title: "Paradigm Shift", difficulty: "5.12d", setter: "Kyle B", set_date: "02-09-2016", gym: earthtreks)
airupthere = Course.create(title: "Air Up There", difficulty: "5.9", setter: "Jordan", set_date: "02-25-2016", gym: earthtreks)

orangecrush = Course.create(title: "Orange Crush", difficulty: "5.8", setter: "David", set_date: "01-13-2016", gym: sportrock)
thebeesknees = Course.create(title: "The Bees Knees", difficulty: "5.7", setter: "Seth", set_date: "03-11-2016", gym: sportrock)
thequickening = Course.create(title: "The Quickening", difficulty: "5.10a", setter: "Andy", set_date: "12-09-2015", gym: sportrock)

snowzilla = Course.create(title: "Snowzilla", difficulty: "5.11c", setter: "Ethan", set_date: "01-27-2016", gym: verticalrock)
avocadosmoothie = Course.create(title: "Avocado Smoothie", difficulty: "5.5", setter: "Ari", set_date: "01-27-2016", gym: verticalrock)
sense = Course.create(title: "Sense", difficulty: "5.10c", setter: "Ethan", set_date: "03-14-2016", gym: verticalrock)
