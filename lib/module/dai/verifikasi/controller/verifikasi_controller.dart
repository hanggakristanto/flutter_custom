import 'package:flutter/material.dart';
import 'package:example/state_util.dart';
import '../view/verifikasi_view.dart';

class VerifikasiController extends State<VerifikasiView> implements MvcController {
  static late VerifikasiController instance;
  late VerifikasiView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}