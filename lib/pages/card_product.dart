import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardProduct extends StatelessWidget {
  const CardProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contoh Stack")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: Card(
                child: Container(
                  height: 200,
                  color: const Color.fromARGB(255, 233, 223, 223),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.all(15),
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: NetworkImage(
                        "https://images.tokopedia.net/img/cache/700/product-1/2021/11/5/3612432/3612432_2d6f3f3e-F4b0-4f5e-8f3a-2f5e3f3e3f3e_700_700.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "Sepatu Sneakers Pria Casual Sporty - Hitam Putih",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 5),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "Rp 199.000",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
