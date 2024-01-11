import 'package:oshi_kita/data/repository.dart';
import 'package:oshi_kita/model/member.dart';

class HomeViewModel {
  final Repository repository;

  const HomeViewModel({required this.repository});

  List<Member> getAllMembers() => repository.getAllMembers();
}