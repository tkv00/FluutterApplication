class Coffee{
  final String id;//메뉴id
  final String title;//메뉴명
  final String price;//가격ㄱ
  final String imageUrl;//메뉴 기본 이미지
  final String imageUrl2;//아이스버젼

Coffee({
    required this.id,
    required this.title,
    required this.price,
    required this.imageUrl,
    required this.imageUrl2,

});
}

List<Coffee> coffees=[
  Coffee(
      id: "01",
      title: "(1호점)신촌커피",
      price: '6100',
      imageUrl: 'assets/images/coffee01.jpg',
      imageUrl2: 'assets/images/coffee01_ice.jpg'
  ),
  Coffee(
      id: "02",
      title: "아메리카노",
      price: '4500',
      imageUrl: 'assets/images/coffee02.jpg',
      imageUrl2: 'assets/images/coffee02_ice.png'
  ),
  Coffee(
      id: "03",
      title: "키페라떼",
      price: '5000',
      imageUrl: 'assets/images/coffee03.jpg',
      imageUrl2: 'assets/images/coffee03_ice.png'
  ),
  Coffee(
      id: "04",
      title: "바닐라카페라뗴",
      price: '5500',
      imageUrl: 'assets/images/coffee04.png',
      imageUrl2: 'assets/images/coffee04_ice.png'
  ),
];