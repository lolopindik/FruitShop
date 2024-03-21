class Product {
  int id;
  String name;
  String pathPhoto;
  double price;
  String description;
  String type;

  Product(this.id, this.name, this.pathPhoto, this.price, this.description, this.type);
}

List<Product> productList = [
  Product(1, 'Манго перу ', 'https://fruitonline.ru/image/cache/catalog/watermark/exotic_fr/kent_orig-420x458.jpg', 15.10, 'Манго из Перу  - самый крупный. Вес одного плода обычно не менее 500г., но может достигать и 750г. Перуанский манго всегда сочный, нежный с минимальным количеством соединительных волокон в мякоти. Косточка отделяется легко', 'Fruit'),
  Product(2, 'Киви золотой', 'https://fruitonline.ru/image/cache/data/kivi_gold-420x458.jpg', 20.99, 'Киви голд купить, цена указана за 1 кг. К заказу доступен любой вес, в том числе дробный. Оригинальный золотой киви поставляется только из Новой Зеландии. Очень сладкий и сочный фрукт, который можно есть даже людям с болезнями жкт.', 'Fruit'),
  Product(3, 'Бананы', 'https://fruitonline.ru/image/cache/data/Banana-420x458.jpeg', 21.89, 'Купить бананы, цена указана за 1 кг. Вес одного фрукта 220 г. Популярный сорт кавендиш. У бананов есть 7 степеней спелости. Мы предлагаем от 4 до 5 го. Поставки налажены из Эквадора.', 'Fruit'),
  Product(4, 'Корень пастернака', 'https://frutsnab.ru/wa-data/public/shop/products/00/webp/78/01/178/images/518/518.518x0.webp', 18.99, 'Корень Пастернак- корень с нежным ароматом свежей петрушки, вкус напоминает морковь, с легкими ореховыми нотками. Прекрасно дополняет блюда из мяса запеченного в духовом шкафу с травами.', 'vegetable'),
];