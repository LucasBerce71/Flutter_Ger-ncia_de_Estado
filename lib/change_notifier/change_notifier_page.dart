import 'package:flutter/material.dart';
import 'package:gerencia_de_estado/change_notifier/change_notifier_state.dart';
import 'package:provider/provider.dart';

class ChangeNotifierPage extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: Text('Change Notifier'),),
           body: ChangeNotifierProvider(
             create: (_) => ChangeNotifierState(),
             child: ChangeNotifierContent(),
           ),
       );
  }
}

class ChangeNotifierContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var state = Provider.of<ChangeNotifierState>(context, listen: false);

    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Atualizando com Change Notifier'),
          SizedBox(height: 20),
          Container(
            child: Consumer<ChangeNotifierState>(
              builder: (_, changeNotifierState, __) {
                return Text(changeNotifierState.name);
              }
            ),
          ),
          RaisedButton(
            onPressed: () {
              state.changeName();
            },
            child: Text('Alterar nome')
          ),
          RaisedButton(
            onPressed: () {
              state.resetName();
            },
            child: Text('Resetar nome'),
          ), 
        ],
      ),
    );
  }
}