import 'package:flutter/material.dart';

class Product {
  final String image, weight, title, description;
  final num price, id;
  final Color color;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.weight,
    this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Caseinato de Cálcio",
      price: 76.50,
      weight: "1kg",
      description: dummyText,
      image: "assets/images/08-prot.png",
      color: Color(0xFF00BCD4)),
  // FF3D82AE
  Product(
      id: 2,
      title: "Whey Protein Isolado",
      price: 139.50,
      weight: "1kg",
      description: dummyText,
      image: "assets/images/02-prot.png",
      color: Color(0xFFFF5722)),
  // FFD3A984
  Product(
      id: 3,
      title: "Albumina",
      price: 59.40,
      weight: "1kg",
      description: dummyText,
      image: "assets/images/03-prot.png",
      color: Color(0xFFFFCA28)),
  // FF989493
  Product(
      id: 4,
      title: "Barra de proteína",
      price: 2.34,
      weight: "30g",
      description: dummyText,
      image: "assets/images/07-prot.png",
      color: Color(0xFF212121)),
  // FFE6B398
  Product(
      id: 5,
      title: "Medium Whey Protein",
      price: 17.10,
      weight: "1kg",
      description: dummyText,
      image: "assets/images/05-prot.png",
      color: Color(0xFF00BCD4)),
  // FFFB7883
  Product(
    id: 6,
    title: "Soy Protein",
    price: 39.60,
    weight: "1kg",
    description: dummyText,
    image: "assets/images/06-prot.png",
    color: Color(0xFFFFE082),
  ),
  // FFAEAEAE
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
