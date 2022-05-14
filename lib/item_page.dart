import 'package:flutter/material.dart';

class ItemPage extends StatefulWidget {
  ItemPage({Key? key}) : super(key: key);

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class CardItem {
  final String url;
  final String title;
  final String price;

  CardItem({
    required this.url,
    required this.title,
    required this.price,
  });
}

class _ItemPageState extends State<ItemPage> {
  List<CardItem> items = [
    CardItem(
        url:
            "https://drive.google.com/uc?export=view&id=1T90CppIKo7ntTbaqU-YTd4Vs2NwW_BWk",
        title: "Jin",
        price: "1000 Kyats"), //1
    CardItem(
        url:
            "https://drive.google.com/uc?export=view&id=15Wuot9YRwd7F7ZCXMcxXiIdb4M0uV4iJ",
        title: "Suga",
        price: "1000 Kyats"), //2
    CardItem(
        url:
            "https://drive.google.com/uc?export=view&id=1gWacFg-o9A45igVVoB6ThLMO0-EqiuXM",
        title: "RM",
        price: "1000 Kyats"), //3
    CardItem(
        url:
            "https://drive.google.com/uc?export=view&id=1HK6uIQJHxyKS4JcQPxmPWQXyT8kHBsoU",
        title: "Jhope",
        price: "1000 Kyats"), //4
    CardItem(
        url:
            "https://drive.google.com/uc?export=view&id=12SwOvGpPajLjAtwjxgcaU7D0vYK2qxcL",
        title: "V",
        price: "1000 Kyats"), //5
    CardItem(
        url:
            "https://drive.google.com/uc?export=view&id=1l2nN57qjY5xz8ZiL7GUKWOXFJWCEmt4q",
        title: "Jimin",
        price: "1000 Kyats"), //6
    CardItem(
        url:
            "https://drive.google.com/uc?export=view&id=1IqLmqnhO15miWeFE1hHLJJWYirSsp-7m",
        title: "JungKook",
        price: "1000 Kyats"), //7
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Co Co Sticker")),
      body: Container(
        height: 280,
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: items.length,
          separatorBuilder: (context, _) => const SizedBox(
            width: 7,
          ),
          itemBuilder: (context, index) => buildItem(items[index]),
          padding: const EdgeInsets.symmetric(horizontal: 7),
        ),
      ),
    );
  }

  Widget buildItem(
    CardItem item,
  ) =>
      Container(
        width: 150,
        child: Column(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  item.url,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              item.title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Text(
              item.price,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.purple),
            )
          ],
        ),
      );
}
