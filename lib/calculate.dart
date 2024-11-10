import 'package:advbmi/bmi.dart';
import 'package:flutter/material.dart';
class newpage extends StatefulWidget {
  final String bmi;
  final String result;
  final String advice;
  newpage({required this.bmi,
  required this.result,
    required this.advice
});

  @override
  State<newpage> createState() => _newpageState();
}

class _newpageState extends State<newpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        body: Column(children: [
          SizedBox(height: 30,),
            Text('Your result',style: TextStyle(fontSize: 25,color: Colors.white),),
          SizedBox(height: 60,),
          Container(
              width: 300,
              height: 50,
              color: Color.fromARGB(255, 230, 20, 73),
              child: MaterialButton(onPressed: (){},
                child: Text(widget.bmi,
                  style: TextStyle(color: Colors.white,fontSize: 40),),)),
          SizedBox(height: 20,),
          Text(widget.result,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
          Text(widget.advice,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
          SizedBox(height: 100,),
    Container(
    width: double.infinity,
    height: 50,
    color: Color.fromARGB(255, 230, 20, 73),
    child: MaterialButton(onPressed: (){
      Navigator.pop(context,MaterialPageRoute(builder: (context) =>bmiapp()));
    },
      child:const Text('RECALCULATE',style: TextStyle(color: Colors.white,fontSize: 20),),)),
        ])
    );
  }
}
