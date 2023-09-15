import 'package:get/get.dart';
import 'package:tugas_praktik_mandiri_6/app/data/models/contacts_model.dart';

class HomeController extends GetxController {
  List<ContactsModel> contacts = [];

  @override
  void onInit() {
    super.onInit();

    contacts = [
      ContactsModel(name: 'Aliyya Misho', phoneNumber: '+622655206921'),
      ContactsModel(name: 'Verissimus Aurobindo', phoneNumber: '+627479102751'),
      ContactsModel(name: 'Kristupas Norman', phoneNumber: '+628519365907'),
      ContactsModel(name: 'Natalia Syntyche', phoneNumber: '+622858966853'),
      ContactsModel(name: 'Michaela Esther', phoneNumber: '+624537422703'),
      ContactsModel(name: 'Malandra Bohumila', phoneNumber: '+626500270688'),
      ContactsModel(name: 'Sydnie Ankita', phoneNumber: '+624622713837'),
      ContactsModel(name: 'Bethney Yuriy', phoneNumber: '+623101373267'),
      ContactsModel(name: 'Tomislav Deepak', phoneNumber: '+625374471266'),
      ContactsModel(name: 'Valeri Velia', phoneNumber: '+627689403675'),
    ];
  }
}

//  +626500270688 +624622713837 +623101373267 +625374471266 +627689403675