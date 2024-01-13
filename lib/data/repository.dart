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

  List<Member> getFiltered(String query) {
    if(query.isEmpty) return getAllMembers();

    return _members
        .where((member) =>
          _stringContains(member.name, query) ||
          member.nicknames.any((nickname) => _stringContains(nickname, query)) ||
          _stringContains(member.fanbase, query) ||
          _stringContains(member.jiko, query)
        ).toList();
  }

  bool _stringContains(String a, String b) {
    return a.toLowerCase().contains(b.toLowerCase());
  }

  static Repository? _instance;
  static Repository getInstance() {
    _instance ??= Repository();
    return _instance!;
  }
}