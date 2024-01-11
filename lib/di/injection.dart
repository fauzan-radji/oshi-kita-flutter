import 'package:oshi_kita/data/repository.dart';

class Injection {
  static Repository provideRepository() => Repository.getInstance();
}