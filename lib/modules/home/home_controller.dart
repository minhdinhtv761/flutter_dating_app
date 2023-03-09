// Dart imports:
import 'dart:math';

// Package imports:
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Project imports:
import '../../api/api.dart';
import '../../models/response/users_response.dart';
import '../../shared/shared.dart';
import 'home.dart';

class HomeController extends GetxController {
  final ApiRepository apiRepository;
  HomeController({required this.apiRepository});

  var currentTab = MainTabs.explore.obs;
  var users = Rxn<UsersResponse>();
  var user = Rxn<Datum>();

  late ExploreTab mainTab;
  late MatchTab discoverTab;
  late TopPickTab resourceTab;
  late HistoryTab inboxTab;
  late AccountTab meTab;

  @override
  void onInit() async {
    super.onInit();

    mainTab = ExploreTab();
    loadUsers();

    discoverTab = MatchTab();
    resourceTab = TopPickTab();
    inboxTab = HistoryTab();
    meTab = AccountTab();
  }

  Future<void> loadUsers() async {
    var _users = await apiRepository.getUsers();
    if (_users!.data!.length > 0) {
      users.value = _users;
      users.refresh();
      _saveUserInfo(_users);
    }
  }

  void signout() {
    var prefs = Get.find<SharedPreferences>();
    prefs.clear();

    // Get.back();
    NavigatorHelper.popLastScreens(popCount: 2);
  }

  void _saveUserInfo(UsersResponse users) {
    var random = new Random();
    var index = random.nextInt(users.data!.length);
    user.value = users.data![index];
    var prefs = Get.find<SharedPreferences>();
    prefs.setString(StorageConstants.userInfo, users.data![index].toRawJson());

    // var userInfo = prefs.getString(StorageConstants.userInfo);
    // var userInfoObj = Datum.fromRawJson(xx!);
    // print(userInfoObj);
  }

  void switchTab(index) {
    var tab = _getCurrentTab(index);
    currentTab.value = tab;
  }

  int getCurrentIndex(MainTabs tab) {
    switch (tab) {
      case MainTabs.explore:
        return 0;
      case MainTabs.topPick:
        return 1;
      case MainTabs.match:
        return 2;
      case MainTabs.history:
        return 3;
      case MainTabs.account:
        return 4;
      default:
        return 0;
    }
  }

  MainTabs _getCurrentTab(int index) {
    switch (index) {
      case 0:
        return MainTabs.explore;
      case 1:
        return MainTabs.topPick;
      case 2:
        return MainTabs.match;
      case 3:
        return MainTabs.history;
      case 4:
        return MainTabs.account;
      default:
        return MainTabs.explore;
    }
  }
}
