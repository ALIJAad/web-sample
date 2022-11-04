

class Product {
  final String image, title;
  final int id;

  Product({
    required this.id,
    required this.image,
    required this.title,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "Big sandwich bamburger",
    image: "images/error.png",
  ),
  Product(
    id: 2,
    title: "Chicken pizza with pepper",
    image: "images/error.png",
  ),
  Product(
    id: 3,
    title: "Crispy fish nuggets",
    image: "images/error.png",
  ),
  Product(
    id: 4,
    title: "Chicken prawn cheese fish",
    image:
        "images/error.png",
  ),
  Product(
    id: 5,
    title: "French fries",
    image: "images/error.png",
  ),
  Product(
    id: 6,
    title: "Specky burger",
    image: "images/error.png",
  ),
];