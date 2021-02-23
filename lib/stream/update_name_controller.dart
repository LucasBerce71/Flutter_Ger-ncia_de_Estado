import 'dart:async';

import 'package:gerencia_de_estado/stream/update_name_state.dart';

class UpdateNameController {
  
  final _controller = StreamController<UpdateNameState>();

  Stream<UpdateNameState> get outUpdateName => _controller.stream;

  UpdateNameController() {
    _controller.add(UpdateNameState(loading: false, name: 'Lucas'));
  }

  void updateName() async {
    _controller.add(UpdateNameState(loading: true, name: 'Lucas'));
    await Future.delayed(Duration(seconds: 2));
    _controller.add(UpdateNameState(loading: false, name: 'Lucas Bercê de Jesus'));
  }

  void dispose() {
    _controller.close();
  }

}