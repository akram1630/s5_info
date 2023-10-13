import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/tp01Cubit.dart';
import 'cubit/tp01States.dart';

class tp01NewPage  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<tp01Cubit, tp01States>(
        listener: (context, tp01States state) {},
        builder: (BuildContext context, state) {
          tp01Cubit cubit = tp01Cubit.get(context);
          return Scaffold(
            appBar: AppBar(),
            body: Center(
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Text(
                    cubit.textController!.text.length == 0 ? 'no context !' :
                    cubit.textController!.text,
                    style: TextStyle(
                      fontSize: 25,
                    ),
                    maxLines: 1,
                  )
              )

            ),
          );
        }
    );
  }

}
