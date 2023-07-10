import 'package:threads/data/model/thread.dart';
import 'package:threads/data/senddata/data.dart';

abstract class Ithread {
  List<thread> getThread();
}

class threadRemoteDatasource extends Ithread {
  @override
  List<thread> getThread() {
    return listThear()
        .map((jsonObject) => thread.formJson(jsonObject))
        .toList();
  }
}
