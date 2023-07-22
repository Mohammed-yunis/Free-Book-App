import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchToUrl(context,String? url) async {
   if (url!=null) {
      Uri uri = Uri.parse(url);
     if (await canLaunchUrl(uri)) {
       await launchUrl(uri);
     }else{
       ScaffoldMessenger.of(context).showSnackBar(

         const SnackBar(backgroundColor: Colors.red,content: Text('Cannot launch to url'))
       );
     }
   }
}