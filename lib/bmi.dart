import 'package:advbmi/calculate.dart';
import 'package:advbmi/new.dart';
import 'package:flutter/material.dart';
import 'calculate.dart';
class bmiapp extends StatefulWidget {
  const bmiapp({Key? key}) : super(key: key);

  @override
  State<bmiapp> createState() => _bmiappState();
}

class _bmiappState extends State<bmiapp> {
  bool isMale=true;
  int height=180;
  int weight=40;
  int age=18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('BMINDEX',style: TextStyle(fontStyle: FontStyle.normal,fontSize: 20,color: Colors.white),),
      ),
      body:
        Column(children: [
          Expanded(child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
               Expanded(child:GestureDetector(
                 onTap: (){
                   setState(() {
                     isMale=true;
                   });
                 },
                 child:
                    Container(
                    child: Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(onPressed: (){}, child: Icon(Icons.male,size: 50,color: Colors.white,),),
                          SizedBox(
                            height: 2,
                          ),
                          Text('MALE',style: TextStyle(fontSize: 15,color: Colors.white.withOpacity(0.8)),)
                        ],
                      ),
                    ),decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 16, 19, 35),
                    ),
                  ),
                ),),
                Expanded(
                    child:GestureDetector(
                    onTap: (){
                      setState(() {
                        isMale=true;
                      });
    },
                    child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(onPressed: (){}, child: Icon(Icons.female,size: 50,color: Colors.white,),) ,
                      SizedBox(
                        height: 2,
                      ),
                      Text('FEMALE',style: TextStyle(fontSize: 15,color: Colors.white.withOpacity(0.8)),)
                    ],
                  ),decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  color:Color.fromARGB(255, 16, 19, 35),
                ),
                ))
                )        ],
            ),
          )),
          //height
          Expanded(child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Color.fromARGB(255, 16, 19, 35)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,children: [
              Text(height.toString()),
                Text('HEIGHT',style: TextStyle(
                  fontSize: 15,
                  color: Colors.white.withOpacity(0.8),
                ),),
              Row(crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('${height.round()}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w900,
                  ),
                  ),
                  SizedBox(width: 5,),
                  Text('CM',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
                ],
              ),
              Slider(value: height.toDouble(),
                  min: 80,
                  max: 220,
                  activeColor: Color.fromARGB(255, 230, 20, 73),
                  onChanged: (value){
                setState(() {
                  height=value.toDouble().round();
                });
                  }),
            ],
            ),
          )),Expanded(child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Expanded(child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [SizedBox(
                      height: 2,
                      width: 5,
                    ),
                      Text(weight.toString()),
                      Text('WEIGHT',style: TextStyle(fontSize: 20,color: Colors.white.withOpacity(0.8)),),
                      Text('${weight.round()}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(onPressed: (){
                            setState(() {
                              weight--;
                            });
                          },
                            heroTag: 'Weight-',
                            mini: true,backgroundColor: Color.fromARGB(255, 230, 20, 73),
                            child: const Icon(
                              Icons.remove,
                            ),
                          ),
                          FloatingActionButton(onPressed: (){
                            setState(() {
                              weight++;
                            });
                          },
                            heroTag: 'Weight+',
                            mini: true,backgroundColor: Color.fromARGB(255, 230, 20, 73),
                            child: const Icon(
                                Icons.add,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 16, 19, 35),
                  ),
                )),
                SizedBox(
                  width: 20,
                ),
                Expanded(child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 2,
                        width: 5,
                      ),
                      Text(age.toString()),
                      Text('AGE',style: TextStyle(fontSize: 15,color: Colors.white.withOpacity(0.8)),),
                      Text('${age}',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w900) ,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(onPressed: (){
                            setState(() {
                              age--;
                            });
                          },
                            heroTag: 'Age-',
                            mini: true,backgroundColor: Color.fromARGB(255, 230, 20, 73),
                            child: const Icon(
                              Icons.remove,
                            ),
                          ),
                          FloatingActionButton(onPressed: (){
                            setState(() {
                              age++;
                            });
                          },
                            heroTag: 'Age+',
                            mini: true,backgroundColor: Color.fromARGB(255, 230, 20, 73),
                            child: const Icon(
                                Icons.add,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 16, 19, 35),
                ),
                ))
              ],
            ),
          )),
          Container(
            width: double.infinity,
            height: 50,
            color: Color.fromARGB(255, 230, 20, 73),
            child: MaterialButton(
              onPressed: (){
                Calculate calculateBmi= Calculate(height: height, weight: weight);
                Navigator.push(context,MaterialPageRoute(builder: (context) =>newpage(
                  bmi: calculateBmi.result(),
                  result:calculateBmi.getText(),
                  advice:calculateBmi.getAdvice(),
                )),);

              },
              child: const Text('CALCULATE',style: TextStyle(color: Colors.white,fontSize: 20),),
            ),
          ),
        ],),
    );
  }

}
