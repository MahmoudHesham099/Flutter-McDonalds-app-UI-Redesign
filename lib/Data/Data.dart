class MenuItem {
  String image;
  String name;
  String description;
  double price;
  int carbohydrate;
  int protein;
  int calories;
  int fats;

  MenuItem(
      {this.image,
      this.name,
      this.description,
      this.price,
      this.carbohydrate,
      this.protein,
      this.calories,
      this.fats});
}

final List<MenuItem> menu = [
  MenuItem(
    image: 'assets/doubleBigTaste.png',
    name: 'Double Big Tasty',
    description:
        'When one Big Tasty just isn’t enough, go for the Double Big Tasty. It\'s not only one but two juicy beef patties smothered between slices of emmental cheese, topped with sliced tomato, shredded lettuce, onions and that special Big Tasty sauce.',
    price: 5.12,
    fats: 74,
    protein: 75,
    calories: 1186,
    carbohydrate: 53,
  ),
  MenuItem(
    image: 'assets/bigMac.png',
    name: 'Big Mac',
    description:
        'Mouthwatering perfection is all about two 100% beef patties, that unbeatably tasty Big Mac sauce, melting signature cheese, crisp shredded lettuce, onions, pickles and a bun in the middle all between a toasted sesame seed bun. You know you want to.',
    price: 4.11,
    fats: 30,
    protein: 31,
    calories: 604,
    carbohydrate: 52,
  ),
  MenuItem(
    image: 'assets/grandChicken.png',
    name: 'Grand Chicken',
    description:
        'A deliciously grand chicken patty topped with our special deluxe sauce, two fresh tomato slices, crispy lettuce, two slices of Emmental cheese and a piece of chicken roll served in a 5 inch bun.',
    price: 5.10,
    fats: 39,
    protein: 41,
    calories: 788,
    carbohydrate: 67,
  ),
  MenuItem(
    image: 'assets/ChickenMACDO.png',
    name: 'Chicken MACDO',
    description:
        'A breaded chicken patty garnished with freshly cut lettuce, one slice of melty cheese, a fresh tomato slice and mayonnaise all wrapped in a freshly baked bun. ',
    price: 3.30,
    fats: 21,
    protein: 17,
    calories: 405,
    carbohydrate: 36,
  ),
  MenuItem(
    image: 'assets/DoubleFOF.png',
    name: 'Double Filet-O-Fish',
    description:
        'Dive in and enjoy our delicious gently spiced breaded fish filet with tartar sauce and melty cheese served in a steamed bun.',
    price: 3.50,
    fats: 28,
    protein: 33,
    calories: 595,
    carbohydrate: 53,
  ),
  MenuItem(
    image: 'assets/FiletOFish.png',
    name: 'Filet-O-Fish',
    description:
        'Catch a delicious Filet-O-Fish. Delicious breaded fish filet with tartar sauce and melty cheese served in a steamed bun.',
    price: 2.75,
    fats: 18,
    protein: 20,
    calories: 401,
    carbohydrate: 41,
  ),
];
