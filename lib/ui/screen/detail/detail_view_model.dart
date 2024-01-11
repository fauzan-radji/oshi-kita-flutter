import 'package:oshi_kita/data/repository.dart';
import 'package:oshi_kita/model/member.dart';

class DetailViewModel {
  final Repository repository;

  DetailViewModel({required this.repository});

  Member getMember(int id) => repository.getMember(id);
}