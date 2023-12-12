import 'package:flutter/material.dart';
import 'package:tailwag/Cat/cat.dart';

import '../Dog/dog.dart';

List<Map<String, dynamic>> model1 = [
  {'image': AssetImage('assets/dog.png'), 'title': 'Dog', 'navigate': dog()},
  {'image': AssetImage('assets/cat1.webp'), 'title': 'Cat', 'navigate': cat()},
  {
    'image': AssetImage('assets/perat.png'),
    'title': 'Bird',
  },
  {
    'image': AssetImage('assets/fish.png'),
    'title': 'Fish',
  },
];

List<Map<String, dynamic>> food = [
  {
    'image': AssetImage('assets/food.png'),
    'title': 'Food',
  },
  {
    'image': AssetImage('assets/treats.png'),
    'title': 'Treats',
  },
  {
    'image': AssetImage('assets/health.png'),
    'title': 'Health&Hygiene',
  },
  {
    'image': AssetImage('assets/Accesseries.png'),
    'title': 'Accessories',
  },
];
List<Map<String, dynamic>> dogmodel = [
  {
    'image1': AssetImage('assets/food1.png'),
    'text': '''HUFT Cat mahi fish crunchies-35g''',
    'title': """Dehydrated,slow-cooked,gulten-free cat treats """,
    'subtitle': '199.00',
  },
  {
    'image1': AssetImage('assets/food2.png'),
    'text': """Applas tuna in jelly for kittens wet cat food-70g""",
    'title': """Natural,human-grade,international cat food""",
    'subtitle': '155.00',
  },
  {
    'image1': AssetImage('assets/food3.png'),
    'text': """HUFT Eco-Friendly Litter-10L(10Kg)""",
    'title':
        """chemical-free,flushable,super-absorbant&excelent odour control""",
    'subtitle': '1799.00',
  },
];
List<Map<String, dynamic>> shop = [
  {
    'image2': AssetImage('assets/shopimg.png'),
    'text': 'Bowmeow',
    'subtitle': 'Perinthlmanna,Kerala',
  },
  {
    'image2': AssetImage('assets/shopimg.png'),
    'text': 'Bowmeow',
    'subtitle': 'Perinthlmanna,Kerala',
  },
  {
    'image2': AssetImage('assets/shopimg.png'),
    'text': 'Bowmeow',
    'subtitle': 'Perinthlmanna,Kerala',
  },
  {
    'image2': AssetImage('assets/shopimg.png'),
    'text': 'Bowmeow',
    'subtitle': 'Perinthlmanna,Kerala',
  },
  {
    'image2': AssetImage('assets/shopimg.png'),
    'text': 'Bowmeow',
    'subtitle': 'Perinthlmanna,Kerala',
  },
];

List<Map<String, dynamic>> wetfoods = [
  {
    'image3': AssetImage('assets/dryfoood.png'),
    'text': 'Dry foods',
  },
  {
    'image3': AssetImage('assets/wetfood.png'),
    'text': 'Wet foods',
  },
  {
    'image3': AssetImage('assets/skincarefood.png'),
    'text': 'Skin care foods',
  },
  {
    'image3': AssetImage('assets/Treats2.png'),
    'text': 'Treats',
  },
];
List<Map<String, dynamic>> brands = [
  {
    'image4': AssetImage('assets/royalcanin.png'),
    'text': 'Royal canin',
  },
  {
    'image4': AssetImage('assets/pedigree.png'),
    'text': 'Pedigree',
  },
  {
    'image4': AssetImage('assets/drools.png'),
    'text': 'Drools',
  },
];
List<Map<String, dynamic>> health = [
  {
    'image5': AssetImage('assets/drools2.png'),
    'text': """Drools 100% Vegitarian adult dry dog food""",
    'title': """Gluten-free,crulty-free& preserative-free""",
    'subtitle': 'MRP:'
  },
  {
    'image5': AssetImage('assets/ryal canin 2.png'),
    'text': """Royal canin puppy mini puppy food(1-10kg)-85g packs""",
    'title': """Gluten-free,crulty-free& preserative-free""",
    'subtitle': '115.00',
  },
  {
    'image5': AssetImage('assets/nd foood.png'),
    'text':
        """Farmina N&D Pumpkin Lamb & Blueberry Grain Free Mini Breed Dry Puppy Food""",
    'title': """Gluten-free,crulty-free& preserative-free""",
    'subtitle': 'MRP:',
  },
  {
    'image5': AssetImage('assets/food1.png'),
    'text': """HUFT Cat Mahi Fish Crunchies - 35 g""",
    'title': """Dehydrated, slow-cooked, gluten-free cat treats""",
    'subtitle': '199.00',
  },
  {
    'image5': AssetImage('assets/food2.png'),
    'text': """Applas tuna in jelly for kittens wet cat food-70g""",
    'title': """Natural,human-grade,international cat food""",
    'subtitle': '155.00',
  },
  {
    'image5': AssetImage('assets/food3.png'),
    'text': """HUFT Eco-Friendly Litter-10L(10Kg)""",
    'title':
        """chemical-free,flushable,super-absorbant&excelent odour control""",
    'subtitle': '1799.00',
  },
];

List<Map<String, dynamic>> maintenance = [
  {
    'image6': AssetImage('assets/dog bowl.webp'),
    'text': 'Dog bowl',
    'title': '199.00',
  },
  {
    'image6': AssetImage('assets/DOG_BED.webp'),
    'text': 'Dog sleeping bed',
    'title': '220.00',
  },
  {
    'image6': AssetImage('assets/dogbelt.jpg'),
    'text': 'Dog belt',
    'title': '159.00',
  },
  {
    'image6': AssetImage('assets/dog jacket.webp'),
    'text': 'Dog jacket',
    'title': '399.00',
  },
  {
    'image6': AssetImage('assets/dog break collar.webp'),
    'text': 'Break collar',
    'title': '1999.00',
  },
  {
    'image6': AssetImage('assets/dog boots.webp'),
    'text': 'Dog boots',
    'title': '999.00',
  },
  {
    'image6': AssetImage('assets/pet tracker.webp'),
    'text': 'Pet Tracker',
    'title': '799.00',
  },
  {
    'image6': AssetImage('assets/dog food bowl.jpg'),
    'text': 'dinner Bowl',
    'title': '1099.00',
  },
];

List<Map<String, dynamic>> babycat = [
  {
    'image7': AssetImage('assets/mother&baby.png'),
    'text': 'Mother',
  },
  {
    'image7': AssetImage('assets/kitten bg.png'),
    'text': 'Kitten',
  },
  {
    'image7': AssetImage('assets/adult bg.png'),
    'text': 'Adult',
  },
];
List<Map<String, dynamic>> rpd = [
  {
    'image8': AssetImage('assets/cat royal canin.webp'),
    'text': 'Royal canin',
  },
  {
    'image8': AssetImage('assets/cat pedigree.png'),
    'text': 'Pedigree',
  },
  {
    'image8': AssetImage('assets/cat drools.png'),
    'text': 'Drools',
  },
];
List<Map<String, dynamic>> cathyginix = [
  {
    'image5': AssetImage('assets/cat drools.png'),
    'text': """Drools 100% Vegitarian adult dry cat food""",
    'title': """Gluten-free,crulty-free& preserative-free""",
    'subtitle': 'MRP:'
  },
  {
    'image5': AssetImage('assets/cat royal canin.webp'),
    'text': """Royal canin cat mini puppy  food(1-10kg)-85g packs""",
    'title': """Gluten-free,crulty-free& preserative-free""",
    'subtitle': '115.00',
  },
  {
    'image5': AssetImage('assets/cat pedigree.png'),
    'text':
        """PEDIGREE Whiskas Milk, Chicken 0.6 kg (2x0.3 kg) Wet Young Cat Food Price in India - Buy PEDIGREE""",
    'title': """Gluten-free,crulty-free& preserative-free""",
    'subtitle': 'MRP:',
  },
  {
    'image5': AssetImage('assets/food1.png'),
    'text': """HUFT Cat Mahi Fish Crunchies - 35 g""",
    'title': """Dehydrated, slow-cooked, gluten-free cat treats""",
    'subtitle': '199.00',
  },
  {
    'image5': AssetImage('assets/kitten bg.png'),
    'text': """Applas tuna in jelly for kittens wet cat food-70g""",
    'title': """Natural,human-grade,international cat food""",
    'subtitle': '155.00',
  },
  {
    'image5': AssetImage('assets/kittibless.jpeg'),
    'text': """HUFT Eco-Friendly Litter-10L(10Kg)""",
    'title':
        """chemical-free,flushable,super-absorbant&excelent odour control""",
    'subtitle': '1799.00',
  },
];

List<Map<String, dynamic>> maintenance2 = [
  {
    'image8': AssetImage('assets/cat coller.webp'),
    'text': ' Elastic Collar',
    'title': '1199.00',
  },
  {
    'image8': AssetImage('assets/cat bowl.webp'),
    'text': 'Cat Bowl',
    'title': '175.00',
  },
  {
    'image8': AssetImage('assets/running toy vat.webp'),
    'text': 'Cat running toy',
    'title': '1795.00',
  },
  {
    'image8': AssetImage('assets/cat dress.webp'),
    'text': 'cat Raincot',
    'title': '1033.00',
  },
  {
    'image8': AssetImage('assets/cat tree.webp'),
    'text': 'Cat baby bed',
    'title': '1299.00',
  },
  {
    'image8': AssetImage('assets/cat ,ouse oy.webp'),
    'text': 'Mouse toy',
    'title': '199.00',
  },
  {
    'image8': AssetImage('assets/cat mat.webp'),
    'text': 'Wiping Cloth',
    'title': '499.00',
  },
  {
    'image8': AssetImage('assets/cat shampoo.webp'),
    'text': 'Cat shampoo',
    'title': '348.00',
  },
];
List<Map<String, dynamic>> sitter = [
  {
    'image9': AssetImage('assets/image1.png'),
    'text': 'Julia Martina',
    'tittle': 'perinthalmanna kerala',
  },
  {
    'image9': AssetImage('assets/image2.png'),
    'text': 'Elizabath',
    'tittle': 'perinthalmanna kerala',
  },
  {
    'image9': AssetImage('assets/image3.png'),
    'text': 'Wiz Khalifa',
    'tittle': 'perinthalmanna kerala',
  },
  {
    'image9': AssetImage('assets/image4.png'),
    'text': 'james',
    'tittle': 'perinthalmanna kerala',
  },
  {
    'image9': AssetImage('assets/image5.png'),
    'text': 'Juliy',
    'tittle': 'perinthalmanna kerala',
  },
  {
    'image9': AssetImage('assets/image6.png'),
    'text': 'Rabecca',
    'tittle': 'perinthalmanna kerala',
  },
  {
    'image9': AssetImage('assets/image7.jpg'),
    'text': 'Will smith',
    'tittle': 'perinthalmanna kerala',
  },
  {
    'image9': AssetImage('assets/rock.webp'),
    'text': 'Rock',
    'tittle': 'perinthalmanna kerala',
  },
  {
    'image9': AssetImage('assets/image8.webp'),
    'text': 'Kate winslet',
    'tittle': 'perinthalmanna kerala',
  },
  {
    'image9': AssetImage('assets/image9.jpeg'),
    'text': 'Emma weston',
    'tittle': 'perinthalmanna kerala',
  },
];
List<Map<String, dynamic>> sitters2 = [
  {
         'image10': AssetImage('assets/petwalking.jpg'),
         'text': 'Pet wlking'
  },
  {
    'image10': AssetImage('assets/petwalking.jpg'),
    'text': 'Pet wlking'
  },
  {
    'image10': AssetImage('assets/petwalking.jpg'),
    'text': 'Pet wlking'
  },
  {
    'image10': AssetImage('assets/petwalking.jpg'),
    'text': 'Pet wlking'
  },
  {
    'image10': AssetImage('assets/petwalking.jpg'),
    'text': 'Pet wlking'
  },
  {
    'image10': AssetImage('assets/petwalking.jpg'),
    'text': 'Pet wlking'
  },
  {
    'image10': AssetImage('assets/petwalking.jpg'),
    'text': 'Pet wlking'
  },
  {
    'image10': AssetImage('assets/petwalking.jpg'),
    'text': 'Pet wlking'
  },
];
