
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:s5_info/compilation_tp01/cubit/tp01States.dart';

import '../tp01NewPage.dart';

class tp01Cubit extends Cubit<tp01States>{
  tp01Cubit() : super(tp01InitialState());
  static tp01Cubit get(context) => BlocProvider.of(context) ;

  TextEditingController ? textController = TextEditingController();
  void changeController(String text){
    textController!.text = text;
    print('-------------> ${textController!.text}');
    emit(tp01ChangeTextState());
  }

  String ? gg ;
  /*void changePage(context,String text){
    textController!.text = text;
    gg = text ;
    print('-------------> ${textController!.text}');
    emit(tp01ChangeTextState());

    emit(tp01NavigateNewPageState());
  }*/

}