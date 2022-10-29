import 'package:ceosi_app/repositories/ceosiApp_repository_interface.dart';

class CeosiAppRepository implements CeosiAppRepositoryInterface {
  @override
  Future<Map<String, dynamic>?> getAnnouncementList() async {
    final data = await Future.value({
      "announcement_list": [
        {
          "title": "Emergency Meeting",
          "date": "October 25, 2022",
          "time": "10:00 AM"
        },
        {
          "title": "Emergency Meeting",
          "date": "November 2, 2022",
          "time": "8:00 AM"
        }
      ],
    });
    return Future.delayed(const Duration(seconds: 5), () => data);
  }
}
