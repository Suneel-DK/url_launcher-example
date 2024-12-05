import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

Future<void>_launchUrl(String url)async{
if(!await launchUrl(Uri.parse(url))){
  throw Exception("Could not launch $url");
}
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("URL Launcher Example"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           const SizedBox(height: 20,),
            ElevatedButton(onPressed: ()=> _launchUrl('https://www.google.com'), 
            child: const Text("Open Web")),
             const SizedBox(height: 20,),
            ElevatedButton(onPressed: ()=> _launchUrl('tel:+1-555-010-999'),
             child: const Text("Open dialer")),
             const SizedBox(height: 20,),
            ElevatedButton(onPressed: ()=> _launchUrl("sms:5550101234"),
             child: const Text("Open sms")),
             const SizedBox(height: 20,),
            ElevatedButton(onPressed: ()=> _launchUrl("mailto:smith@example.org?subject=News&body=New%20plugin"),
             child: const Text("Open gmail")),
          ],
        ),
      ),
    );
     
  }
}