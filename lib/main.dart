import 'package:flutter/material.dart';


void main(List<String> args) {
  runApp(MaterialApp(

    home: HomeState(),
 ));
}
class Home extends StatelessWidget {
const Home ({super.key});

   @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
 title: Text ('Frases do Dia'),
 backgroundColor: Colors.green,

    ),
    body: Padding(
      padding: EdgeInsets.all(16),
      child: Text("corpo do app"),
       ),
       bottomNavigationBar: BottomAppBar(
        color: Colors.lightGreen,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            children: [
              Text("teste 1"),
              Text("teste 2")

                ],
             ),
         ),
       ),
    );
  }
}

class HomeState extends StatefulWidget {
  const HomeState({super.key});

  @override
  State<HomeState> createState() => _HomeStateState();
}

class _HomeStateState extends State<HomeState> {
  var _texto = "Pedro";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
 title: Text ('Frases do Dia'),
 backgroundColor: Colors.green,

    ),
    body:Container(
      child: Column(
        children: [
          ElevatedButton(onPressed: (){
            setState(() {
              _texto = "sei la";
            });
          }, 
          child: Text("Clique")),
          Text(_texto)
          ],

      ),
    ),
       bottomNavigationBar: BottomAppBar(
        color: Colors.lightGreen,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            children: [
              Text("teste 1"),
              Text("teste 2")

                ],
             ),
         ),
       ),
    );
  }
}