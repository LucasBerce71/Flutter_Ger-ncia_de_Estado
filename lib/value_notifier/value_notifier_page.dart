import 'package:flutter/material.dart';

class ValueNotifierPage extends StatelessWidget {

  ValueNotifier<String> name = ValueNotifier('Lucas');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Value Notifier'),
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Atualizando com ValueNotifier'),
              SizedBox(
                height: 30,
              ),
              ValueListenableBuilder(
                valueListenable: name, 
                builder: (_, nameValue, __) {
                  return Text(nameValue);
                }
              ),
              RaisedButton(
                onPressed: () {
                  switch (name.value) {
                    case 'Lucas':
                      name.value = 'Lucas Bercê';
                      break;
                    case 'Lucas Bercê':
                      name.value = 'Lucas Bercê de Jesus';
                      break;
                    default:
                      name.value = 'Lucas';
                      break;
                  }
                },
                child: Text('Atualizar nome'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
