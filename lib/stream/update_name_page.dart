import 'package:flutter/material.dart';
import 'package:gerencia_de_estado/stream/update_name_controller.dart';
import 'package:gerencia_de_estado/stream/update_name_state.dart';

class UpdateNamePage extends StatefulWidget {
  @override
  _UpdateNamePageState createState() => _UpdateNamePageState();
}

class _UpdateNamePageState extends State<UpdateNamePage> {

  final UpdateNameController _controller = UpdateNameController();

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: Text('Streams'),),
           body: Container(
             width: MediaQuery.of(context).size.width,
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 Text('Atualizando nome por Stream'), 
                 SizedBox(height: 20), 
                 StreamBuilder<UpdateNameState>(
                   stream: _controller.outUpdateName,
                   builder: (_, snapshot) {
                     if (snapshot.hasData) {
                       final data = snapshot.data;
                       if (data.loading) {
                         return Center(
                           child: CircularProgressIndicator(),
                         );
                       }

                       return Text(data.name);
                     }

                     return Container();
                   }
                  ),
                  RaisedButton(
                    onPressed: () => _controller.updateName(),
                    child: Text('Atualizar nome'),
                  ),
               ],
             ),
           ),
       );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}