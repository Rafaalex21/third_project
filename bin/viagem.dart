import 'transporte.dart';

class Viajar {
  transporte locomocao;

  int visitas = 0;
  static int viagens = 0;

  Viajar({required this.locomocao});
  void visitar() {
    visitas++;
    viagens++;
    print(
        'Você visitou esse lugar $visitas vezes \n Você já fez um total de $viagens viagens \n');
  }
}
