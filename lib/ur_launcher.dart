import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Url extends StatefulWidget {
  const Url({Key? key}) : super(key: key);

  @override
  State<Url> createState() => _UrlState();
}

class _UrlState extends State<Url> {
  final _uri = Uri.parse('https://flutter.dev');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              onPressed: () async {
                if (!await canLaunchUrl(_uri)) throw "could not launch $_uri";
              },
              child: const Text("Google"))),
    );
  }
}
