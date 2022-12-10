import 'package:example/core.dart';
import 'package:flutter/material.dart';

class LoginController extends State<LoginView> implements MvcController {
  static late LoginController instance;
  late LoginView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
  String email = "hangga@aja.com";
  String password = "12345678";

  doLogin() async {
    showLoading();
    // var response = await Dio().post(
    //   "${AppConfig.baseUrl}/api/login",
    //   options: Options(
    //     headers: {
    //       "Content-Type": "application/json",
    //     },
    //   ),
    //   data: {
    //     "email": email,
    //     "password": password,
    //   },
    // );
    // Map obj = response.data;
    // print(obj);
    // print("ini code ${obj['code']}");
    // AppSession.token = obj["data"]["token"];
    // mainStorage.put("token", AppSession.token);

    // hideLoading();
    // print(AppSession.token);
    // try {
    //   if (obj['code'] == 200) {
    //     print("Login success!");
    //     await showInfoDialog("Login success!");
    //     // Get.back();
    //     const VerifikasiView();
    //   }
    // } catch (e) {
    //   print(e);
    // }
  }
}
