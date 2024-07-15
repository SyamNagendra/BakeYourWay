import 'package:flutter/cupertino.dart';
import 'package:uidesign06/core/color.dart';

class Cakes {
  final String id;
  final String name;
  final String flavourl;
  final String flavour;
  final String image;
  final double price;
  final Color bgColor;
  final String description;
  final double rating;
  final String eggOrEggless;
  final bool eggless; 
  final String theme;
  final String weight;
  int quantity;

  Cakes({
    required this.id,
    required this.flavourl,
    required this.name,
    required this.flavour,
    required this.image,
    required this.price,
    required this.bgColor,
    required this.description,
    required this.rating,
    required this.eggOrEggless,
    required this.eggless,
    required this.theme,
    required this.weight,
    this.quantity = 1
  });
}

List<Cakes> cakes = [
  Cakes(
    id: '1',
    name: 'Princess Birthday Cake',
    flavour: 'Creamy',
    price: 250.60,
    image: 'assets/images/Bday.png',
    bgColor: pink01,
    description:
        "Make your little one's dreams come true with our enchanting Princess Birthday Cake! Available in magical flavors like vanilla, chocolate, red velvet, and lemon, this cake is adorned with smooth buttercream, shimmering fondant, and edible glitter. Customizable with princess-themed toppers, intricate fondant designs, and a personalized message, it’s perfect for creating a fairy-tale celebration. Our cakes come in various sizes and offer special options like gluten-free, vegan, and sugar-free. Celebrate royally with our delightful and beautifully crafted Princess Birthday Cake!",
    rating: 4.5,
    eggOrEggless: 'Eggless',
    theme: 'Princess',
    weight: '2kg', flavourl: '', eggless: true,
  ),
  Cakes(
    id: '2',
    name: 'Birthday Cake',
    flavour: 'Creamy',
    image: 'assets/images/02.png',
    price: 220.30,
    bgColor: pink01,
    description:
        'Celebrate your special day with our delightful Birthday Cake! Choose from classic vanilla, rich chocolate, moist red velvet, or zesty lemon flavors, and enjoy smooth buttercream, decadent ganache, or light whipped cream frosting. Customizable with sprinkles, fondant designs, fresh fruit, and a personal message, our cakes come in various sizes to suit any celebration. Special dietary options like gluten-free, vegan, and sugar-free are also available. Make your birthday unforgettable with our delicious and beautifully decorated cake!',
    rating: 4,
    eggOrEggless: 'Egg',
    theme: 'Birthday',
    weight: '1.5kg', flavourl: '', eggless: false,
  ),
  Cakes(
    id: '3',
    name: 'Wedding Cake',
    flavour: 'Creamy',
    price: 250.60,
    image: 'assets/images/03.png',
    bgColor: pink01,
    description:
        'Elevate your special day with our elegant Wedding Cake, designed to be the centerpiece of your celebration. Choose from timeless flavors like vanilla, chocolate, red velvet, or lemon, and enjoy luxurious buttercream, silky fondant, or decadent ganache frosting. Our cakes are beautifully customizable with intricate designs, fresh flowers, and a personalized touch to match your wedding theme. Available in various sizes to serve your guests, we also offer special dietary options including gluten-free, vegan, and sugar-free. Celebrate your love story with our exquisite and delicious Wedding Cake!',
    rating: 2.5,
    eggOrEggless: 'Eggless',
    theme: 'Wedding',
    weight: '5kg', flavourl: '', eggless: true,
  ),
  Cakes(
    id: '4',
    name: 'Cup Cake',
    flavour: 'Creamy',
    image: 'assets/images/04.png',
    price: 850.60,
    bgColor: pink01,
    description:
        'Treat yourself to our delightful Cupcakes, perfect for any occasion! Choose from a variety of delicious flavors including vanilla, chocolate, red velvet, and lemon, topped with smooth buttercream, rich ganache, or fluffy whipped cream. Each cupcake is beautifully decorated with sprinkles, fondant designs, or fresh fruit, and can be customized with a personal message or themed toppers. Available in special dietary options such as gluten-free, vegan, and sugar-free, our cupcakes are perfect for birthdays, weddings, parties, or just a sweet treat. Enjoy a bite-sized delight with our irresistible Cupcakes!',
    rating: 5,
    eggOrEggless: 'Egg',
    theme: 'General',
    weight: '0.2kg', flavourl: '', eggless: true,
  ),
];
