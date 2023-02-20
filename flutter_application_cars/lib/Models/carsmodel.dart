class CarsModels {
  String name;
  String location;
  String image;
  String speed;
  String color;
  String brand;
  String description;
  String price;

  CarsModels({
    required this.name,
    required this.location,
    required this.image,
    required this.speed,
    required this.color,
    required this.brand,
    required this.description,
    required this.price,
  });
}

List<CarsModels> carinfo = [
  CarsModels(
      name: "FORD",
      location: "USA",
      image: "assets/images/ford.jpg",
      speed: "280",
      color: "BLACK",
      brand: "FORD",
      description:
          "Ford Motor Company is an American multinational automobile company based in Dearborn, Michigan, a suburb of Detroit. This company was founded by Henry Ford on June 16, 1903, and today, in addition to Ford cars and trucks, it also produces luxury cars with the Lincoln brand.",
      price: "7000"),
  CarsModels(
      name: "GENESIS",
      location: "KOREA",
      image: "assets/images/genesis.jpg",
      speed: "300",
      color: "BLACK",
      brand: "HYUNDAY",
      description:
          "Genesis Motor is a Korean automobile company that produces luxury cars. In 2009, Hyundai launched the first Genesis, this car manufacturer was able to offer a car with many features and an affordable price.",
      price: "10000"),
  CarsModels(
      name: "MASERATI",
      location: "ITALYA",
      image: "assets/images/maserati.jpg",
      speed: "350",
      color: "RED",
      brand: "MASERATI",
      description:
          "Maserati is an Italian automobile company that produces luxury and sports cars, which was founded on December 1, 1914 by the Maserati brothers in Bologna. The Maserati company is owned by Stellantis and its headquarters and main production plant are located in the city of Modena, Emilia-Romagna, Italy.",
      price: "12000"),
  CarsModels(
      name: "BENZ",
      location: "GERMANY",
      image: "assets/images/benz.jpg",
      speed: "360",
      color: "BLACK",
      brand: "BENZ",
      description:
          "Mercedes-Benz is an Italian automobile company and a subsidiary of the Mercedes-Benz Group, which designs and manufactures all kinds of luxury cars, as well as providing financial services and car repair. The main factory and headquarters of Mercedes-Benz is located in Stuttgart.",
      price: "15000"),
];
