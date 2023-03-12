class DashboardModel {
  List<dataModel> images = [
    dataModel(
        name: 'Peperomia', image: "assets/dashboard/flower.png", price: '1200'),
    dataModel(
        name: 'Croton Petra',
        image: "assets/dashboard/flower2.png",
        price: '1350'),
    dataModel(
        name: 'Bird’s Nest Fern',
        image: "assets/dashboard/flower3.png",
        price: '2050'),
    dataModel(
        name: 'Aloe Vera',
        image: "assets/dashboard/flower4.png",
        price: '1960'),
    dataModel(
        name: 'Watermelon',
        image: "assets/dashboard/flower5.png",
        price: '2100'),
    dataModel(
        name: 'Cactus', image: "assets/dashboard/flower6.png", price: '1000'),
  ];
}

class dataModel {
  dataModel({this.name, this.image, this.price});

  String? name;
  String? image;
  String? price;
}
