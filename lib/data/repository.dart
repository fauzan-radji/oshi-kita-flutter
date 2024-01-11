import 'package:oshi_kita/data/fake_data_source.dart';
import 'package:oshi_kita/model/member.dart';

class Repository {

  List<Member> _members = List.empty(growable: true);

  Repository() {
    if(_members.isEmpty) {
      _members = FakeDataSource.members;
    }
  }
  
  List<Member> getAllMembers() => _members;
  
  Member getMember(id) => _members.firstWhere((member) => member.id == id);
  
  static Repository? _instance;
  static Repository getInstance() {
    _instance ??= Repository();
    return _instance!;
  }
}