import 'package:flutter/material.dart';

class DetailGrid extends StatelessWidget {
  final Map<String, dynamic> movieDetails;

  const DetailGrid(this.movieDetails);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movieDetails['judul']),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("gambar/${movieDetails["gambar"]}"),
            SizedBox(height: 20),
            Text(
              "${movieDetails["judul"]}",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              "Rp. ${movieDetails["harga"]}",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PageCustomeGrid extends StatefulWidget {
  const PageCustomeGrid({key}) : super(key: key);

  @override
  State<PageCustomeGrid> createState() => _PageCustomeGridState();
}

class _PageCustomeGridState extends State<PageCustomeGrid> {
  List<Map<String, dynamic>> listMovie = [
    {
      "judul": "Fast X",
      "gambar": "film1.jpg",
      "harga": 45000,
    },
    {
      "judul": "Avatar",
      "gambar": "film2.jpg",
      "harga": 35000,
    },
    {
      "judul": "Ngeri Ngeri Sedap",
      "gambar": "film3.jpg",
      "harga": 50000,
    },
    {
      "judul": "Imperfect",
      "gambar": "film4.jpg",
      "harga": 45000,
    },
    {
      "judul": "Hello Gost",
      "gambar": "film5.jpg",
      "harga": 35000,
    },
    {
      "judul": "Miracle in Cell No.7",
      "gambar": "film6.jpg",
      "harga": 45000,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom Grid"),
        backgroundColor: Colors.green,
      ),
      body: GridView.builder(
        itemCount: listMovie.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DetailGrid(listMovie[index]),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridTile(
                footer: Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1, color: Colors.black),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "${listMovie[index]["judul"]}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text("Rp. ${listMovie[index]["harga"]}"),
                    ],
                  ),
                ),
                child: Image.asset("gambar/${listMovie[index]["gambar"]}"),
              ),
            ),
          );
        },
      ),
    );
  }
}