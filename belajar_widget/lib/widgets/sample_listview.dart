import 'package:flutter/material.dart';

class SampleListview extends StatelessWidget {
  SampleListview({super.key});
  final List colorCodes = [900, 800, 700, 600, 500, 400, 300, 200, 100];

  final List data = [
    {
      'photoUrl': 'https://i.pravatar.cc/150?img1',
      'name': 'Saras',
      'address': 'Jepara',
    },
    {
      'photoUrl': 'https://i.pravatar.cc/150?img2',
      'name': 'Budi',
      'address': 'Malang',
    },
    {
      'photoUrl': 'https://i.pravatar.cc/150?img3',
      'name': 'Jeje',
      'address': 'Hanoi',
    },
    {
      'photoUrl': 'https://i.pravatar.cc/150?img4',
      'name': 'Jojo',
      'address': 'Join',
    },
    {
      'photoUrl': 'https://i.pravatar.cc/150?img5',
      'name': 'Prowo',
      'address': 'AFIGAN',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Widget List View'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(20),
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(data[index]['photoUrl']),
            title: Text(data[index]['name']),
            subtitle: Text(data[index]['address']),
            trailing: IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
            tileColor: Colors.grey[400],
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          );
        },
        itemCount: data.length,
        separatorBuilder: (context, index) {
          return const Divider(
            thickness: 2,
            color: Colors.grey,
          );
        },
      ),
    );
  }
}
