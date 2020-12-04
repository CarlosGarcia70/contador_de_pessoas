import 'package:get/get.dart';

class HomeController extends GetxController {

  int pessoas = 0;
  String mensagem = '';

  void entra() {
    pessoas++;
    _atualizaMensagem();
    update();
  }

  void sai() {
    pessoas--;
    _atualizaMensagem();
    update();
  }

  void _atualizaMensagem() {
    if (pessoas < 0) {
      mensagem = 'Nasceu alguém aí dentro!';
    } else {
      if (pessoas <= 20) {
        mensagem = 'Pode entrar!!!';
  } else {
        mensagem = 'Está lotado!!!';
  }
  }
  }
}