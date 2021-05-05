import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:cainiaowo/business/home/home.dart';
import 'package:cainiaowo/business/login/login.dart';

//主页跳转
Handler homeHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> parameters) {
  return Home();
});
//登录跳转
Handler loginHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> parameters) {
  return Login();
});
//空跳转
Handler emptyHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> parameters) {
  return Container();
});
