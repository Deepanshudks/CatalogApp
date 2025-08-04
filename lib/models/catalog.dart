class CatalogModel {
  static List<Item> get all => Products.products;
}

class Item {
  final num id;
  final String name;
  final String desc;
  final num price;
  final String imageUrl;
  final String color;

  const Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.imageUrl,
    required this.color,
  });
}

class Products {
  static const List<Item> products = [
    Item(
      id: 1,
      name: "iPhone 15 Pro",
      price: 1199,
      color: "#1c1c1e",
      imageUrl: "https://via.placeholder.com/150?text=iPhone+15+Pro",
      desc: "Apple's latest flagship with A17 chip and titanium body.",
    ),
    Item(
      id: 2,
      name: "Samsung Galaxy S24 Ultra",
      price: 1299,
      color: "#6e6e6e",
      imageUrl: "https://via.placeholder.com/150?text=Galaxy+S24+Ultra",
      desc: "High-end Android with 200MP camera and S Pen support.",
    ),
    Item(
      id: 3,
      name: "MacBook Air M3",
      price: 999,
      color: "#1e1e1e",
      imageUrl: "https://via.placeholder.com/150?text=MacBook+Air+M3",
      desc: "Lightweight laptop with Apple Silicon M3 chip.",
    ),
    Item(
      id: 4,
      name: "Dell XPS 13",
      price: 1099,
      color: "#c0c0c0",
      imageUrl: "https://via.placeholder.com/150?text=Dell+XPS+13",
      desc: "Compact premium ultrabook with InfinityEdge display.",
    ),
    Item(
      id: 5,
      name: "iPad Pro 12.9",
      price: 1299,
      color: "#dcdcdc",
      imageUrl: "https://via.placeholder.com/150?text=iPad+Pro",
      desc: "Powerful tablet with M2 chip and Liquid Retina XDR display.",
    ),
    Item(
      id: 6,
      name: "Sony WH-1000XM5",
      price: 399,
      color: "#000000",
      imageUrl: "https://via.placeholder.com/150?text=Sony+XM5",
      desc: "Industry-leading noise-canceling wireless headphones.",
    ),
    Item(
      id: 7,
      name: "Apple Watch Ultra 2",
      price: 799,
      color: "#d4c4b7",
      imageUrl: "https://via.placeholder.com/150?text=Watch+Ultra+2",
      desc: "Rugged smartwatch for extreme sports and fitness.",
    ),
    Item(
      id: 8,
      name: "Google Pixel 8 Pro",
      price: 999,
      color: "#1e1e1e",
      imageUrl: "https://via.placeholder.com/150?text=Pixel+8+Pro",
      desc: "Flagship Android with advanced AI features.",
    ),
    Item(
      id: 9,
      name: "Microsoft Surface Pro 9",
      price: 1099,
      color: "#406d96",
      imageUrl: "https://via.placeholder.com/150?text=Surface+Pro+9",
      desc: "2-in-1 laptop/tablet with detachable keyboard.",
    ),
    Item(
      id: 10,
      name: "Bose QuietComfort Ultra",
      price: 349,
      color: "#f5f5f5",
      imageUrl: "https://via.placeholder.com/150?text=Bose+QC+Ultra",
      desc: "Comfortable headphones with adaptive noise canceling.",
    ),
    Item(
      id: 11,
      name: "OnePlus 12",
      price: 799,
      color: "#50c878",
      imageUrl: "https://via.placeholder.com/150?text=OnePlus+12",
      desc: "High-performance smartphone with fast charging.",
    ),
    Item(
      id: 12,
      name: "Asus ROG Phone 8",
      price: 1199,
      color: "#1a1a1a",
      imageUrl: "https://via.placeholder.com/150?text=ROG+Phone+8",
      desc: "Gaming smartphone with cooling system and RGB lights.",
    ),
    Item(
      id: 13,
      name: "Canon EOS R7",
      price: 1499,
      color: "#000000",
      imageUrl: "https://via.placeholder.com/150?text=Canon+R7",
      desc: "APS-C mirrorless camera with 4K60 video.",
    ),
    Item(
      id: 14,
      name: "DJI Mini 4 Pro",
      price: 759,
      color: "#808080",
      imageUrl: "https://via.placeholder.com/150?text=DJI+Mini+4+Pro",
      desc: "Compact drone with 4K HDR video and obstacle avoidance.",
    ),
    Item(
      id: 15,
      name: "Nintendo Switch OLED",
      price: 349,
      color: "#ffffff",
      imageUrl: "https://via.placeholder.com/150?text=Switch+OLED",
      desc: "Hybrid gaming console with OLED display.",
    ),
    Item(
      id: 16,
      name: "GoPro HERO12 Black",
      price: 399,
      color: "#000000",
      imageUrl: "https://via.placeholder.com/150?text=GoPro+HERO12",
      desc: "Action camera with high dynamic range and 5.3K video.",
    ),
    Item(
      id: 17,
      name: "HP Spectre x360",
      price: 1299,
      color: "#1b365d",
      imageUrl: "https://via.placeholder.com/150?text=HP+Spectre+x360",
      desc: "Convertible laptop with touchscreen and pen support.",
    ),
    Item(
      id: 18,
      name: "Lenovo Legion 7i",
      price: 1799,
      color: "#4b4b4b",
      imageUrl: "https://via.placeholder.com/150?text=Legion+7i",
      desc: "High-end gaming laptop with RTX graphics.",
    ),
    Item(
      id: 19,
      name: "Samsung Galaxy Tab S9 Ultra",
      price: 1199,
      color: "#2f2f2f",
      imageUrl: "https://via.placeholder.com/150?text=Galaxy+Tab+S9+Ultra",
      desc: "Large Android tablet with AMOLED display and S Pen.",
    ),
    Item(
      id: 20,
      name: "Beats Studio Pro",
      price: 349,
      color: "#000080",
      imageUrl: "https://via.placeholder.com/150?text=Beats+Studio+Pro",
      desc: "Stylish headphones with active noise cancellation.",
    ),
  ];
}
