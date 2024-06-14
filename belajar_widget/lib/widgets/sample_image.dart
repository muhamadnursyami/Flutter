import 'package:flutter/material.dart';

class SampleImage extends StatelessWidget {
  const SampleImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Belajar Widget Image"),
        ),
        body: Column(
          children: [
            Image.network('https://picsum.photos/200/200'),
            // Container Image NETWORK
            // Container(
            //   margin: const EdgeInsets.all(20),
            //   height: 400,
            //   width: 400,
            //   decoration: BoxDecoration(border: Border.all()),
            //   child: Image.network(
            //     'https://picsum.photos/200/200',
            //     alignment: Alignment.centerRight,
            //     color: Colors.red,
            //     colorBlendMode: BlendMode.darken,
            //     // fit: BoxFit.contain,
            //     repeat: ImageRepeat.repeat,
            //   ),
            // ),
            // Container Image ASSETS
            // Container(
            //   margin: const EdgeInsets.all(20),
            //   height: 400,
            //   width: 400,
            //   decoration: BoxDecoration(border: Border.all()),
            //   child: Image.asset(
            //     'assets/images/sample-image.jpg',
            //     alignment: Alignment.centerRight,
            //     // color: Colors.red,
            //     // colorBlendMode: BlendMode.darken,
            //     fit: BoxFit.contain,
            //     // repeat: ImageRepeat.repeat,
            //   ),
            // ),
            // Untuk  Membuat lingkaran pada gambar KE 1
            const CircleAvatar(
              radius: 50,
              // backgroundImage: NetworkImage('assets/images/sample-image.jpg'),
              backgroundImage: AssetImage('assets/images/sample-image.jpg'),
            ),
            // Untuk membuat Gambar ada border radiusnya
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/images/sample-image.jpg'),
            )
          ],
        ));
  }
}
