class Product {
  int id;
  String name;
  String pathPhoto;
  double price;
  String description;

  Product(this.id, this.name, this.pathPhoto, this.price, this.description);
}

List<Product> productList = [
  Product(1, 'МАНГО ПЕРУ ', 'https://fruitonline.ru/image/cache/catalog/watermark/exotic_fr/kent_orig-420x458.jpg', 15, 'Манго из Перу  - самый крупный. Вес одного плода обычно не менее 500г., но может достигать и 750г. Перуанский манго всегда сочный, нежный с минимальным количеством соединительных волокон в мякоти. Косточка отделяется легко'),
  Product(2, 'КИВИ ЗОЛОТОЙ', 'https://fruitonline.ru/image/cache/data/kivi_gold-420x458.jpg', 20, 'Киви голд купить, цена указана за 1 кг. К заказу доступен любой вес, в том числе дробный. Оригинальный золотой киви поставляется только из Новой Зеландии. Очень сладкий и сочный фрукт, который можно есть даже людям с болезнями жкт.'),
  Product(3, 'БАНАНЫ', 'https://fruitonline.ru/image/cache/data/Banana-420x458.jpeg', 21, 'Купить бананы, цена указана за 1 кг. Вес одного фрукта 220 г. Популярный сорт кавендиш. У бананов есть 7 степеней спелости. Мы предлагаем от 4 до 5 го. Поставки налажены из Эквадора.'),
  Product(4, 'АНАНАС DOLE', 'https://fruitonline.ru/image/cache/catalog/dole_pineapple-420x458.jpeg', 19, 'Коническая форма, утолщенное основание, сужающееся к макушке. Ромбики кожуры имеют зелено-желто-коричневый окрас. На вкус сладкий с кислинкой, имеет легкий аромат. '),
];