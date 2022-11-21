import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialog Box'),
      ),
      body: Center(
        child: ElevatedButton(
          child:const Text('Show Dialogbox'),
          onPressed: (){
              showDialog(context: context, builder: (context){
                return Container(
                  child: AlertDialog(
                    title:const Text('Sent Email'),
                    content:TextField(
                      // onChanged: (value){
                      // },
                      decoration: InputDecoration(
                        hintText: 'Enter your email'
                      ),
                    ) ,
                    actions: [
                      TextButton(onPressed: (){
                        Navigator.pop(context);
                      }, child: Text('OK'))
                    ],
                  ),
                );
              });
          },
        ),
      ),
    );
  }
}

