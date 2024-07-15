// data/theme_cakes.dart
class ThemeCake {
  final String image;
  final String name;
  final double price;
  final List<Cake> cakes; // Add this line

  ThemeCake({
    required this.image,
    required this.name,
    required this.price,
    required this.cakes, // Add this line
  });
}

class Cake {
  final String image;
  final String name;
  final double price;

  Cake({
    required this.image,
    required this.name,
    required this.price,
  });
}

List<ThemeCake> themeCakes = [
  ThemeCake(
    image: 'assets/images/Bday.png',
    name: 'Birthday Cake',
    price: 30.0,
    cakes: [
      Cake(image: 'assets/images/bday_cake1.png', name: 'Choco Delight', price: 5.0),
      Cake(image: 'assets/images/bday_cake2.png', name: 'Vanilla Dream', price: 6.0),
    ],
  ),
  ThemeCake(
    image: 'assets/images/wedding.png',
    name: 'Wedding Cake',
    price: 100.0,
    cakes: [
      Cake(image: 'assets/images/wedding_cake1.png', name: 'Wedding Special', price: 50.0),
      Cake(image: 'assets/images/wedding_cake2.png', name: 'Royal Wedding', price: 70.0),
    ],
  ),
  // Add more theme cakes as needed
];
