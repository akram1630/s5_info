import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:s5_info/compilation_tp01/cubit/tp01Cubit.dart';
import 'package:s5_info/compilation_tp01/cubit/tp01States.dart';
import 'package:s5_info/compilation_tp01/tp01NewPage.dart';


class tp01HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<tp01Cubit ,tp01States>(
      listener: (context  , tp01States state){},
      builder: (BuildContext context , state){
        /////////////////////////////////////////////////////
        tp01Cubit cubit = tp01Cubit.get(context);
        TextEditingController ? inputController = TextEditingController();
        return Scaffold(
          appBar: AppBar(
            title: Text('TP_01 COMPILATION'),
            centerTitle: true,
            backgroundColor: Colors.teal,
          ),
          body: Padding(
            padding: EdgeInsets.all(50.0),
            child: Column(
              children: [
                TextFormField(
                  controller: inputController,
                    cursorColor: Colors.red,
                    decoration: InputDecoration(
                      labelText: 'Enter Your Text',
                      labelStyle: TextStyle(color: Colors.black),
                      enabledBorder: OutlineInputBorder( // border without click
                          borderSide: BorderSide(
                              color: Colors.yellow
                          )
                      ),

                      focusedBorder: OutlineInputBorder( // border with click
                        borderSide: BorderSide(
                          color: Colors.purple
                        )
                      )
                    )
                ),
                SizedBox(height: 20,),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: TextButton(
                      onPressed: (){
                        cubit.changeController(inputController.text);
                          Navigator.push(context,
                              MaterialPageRoute(
                                builder: (context) => tp01NewPage(),
                              )
                          );
                      },
                      child: Text('click',style: TextStyle(color: Colors.white),),
                    )
                )
              ],
            ),
          ),
        );
      }
    );
  }
}
