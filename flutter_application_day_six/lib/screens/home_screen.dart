import 'package:flutter/material.dart';
import 'package:flutter_application_day_six/screens/sites_screen.dart';
import '../models/site.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  var sites = [
    Site(
        name: 'أبراج الكويت',
        imgURL:
            'https://user-images.githubusercontent.com/24327781/188260105-52be6a2e-a6d3-4ceb-86c0-ddc83e0aa5b6.jpeg',
        description:
            'These are three landmark buildings belonging in the Kuwaiti skyline.'),
    Site(
        name: 'برج التحرير',
        imgURL:
            'https://user-images.githubusercontent.com/24327781/188260123-28de85b4-d272-4ebb-b2ad-22a9582079bf.jpeg',
        description:
            'This used to be the one of the tallest buildings in Kuwait for the longest time.'),
    Site(
        name: 'المسجد الكبير',
        imgURL:
            'https://user-images.githubusercontent.com/24327781/188260137-021d865a-625e-4941-ad75-6427c690e0cf.jpeg',
        description: 'One of the biggest mosques in Kuwait.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: ListView.builder(
        itemCount: sites.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 6,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SiteScreen(
                      site: sites[index],
                    ),
                  ),
                );
              },
              child: Row(
                children: [
                  Image.network(
                    sites[index].imgURL,
                    width: 150,
                    height: 150,
                  ),
                  Container(
                    padding: EdgeInsets.all(40),
                    child: Text(
                      sites[index].name,
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
