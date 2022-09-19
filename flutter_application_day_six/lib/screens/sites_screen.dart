import 'package:flutter/material.dart';

import '../models/site.dart';

class SiteScreen extends StatelessWidget {
  const SiteScreen({Key? key, required this.site}) : super(key: key);

  final Site site;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(site.name),
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(
              site.imgURL,
              height: 100,
              width: 100,
            ),
            Text(site.description)
          ],
        ),
      ),
    );
  }
}
