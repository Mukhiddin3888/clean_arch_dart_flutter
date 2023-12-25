
import 'dart:io';
import 'package:hive/hive.dart';
import 'package:queue_app/constants/constants.dart';

final class LocalSource {
  LocalSource(this.box);

  final Box<dynamic> box;

  void setLocale(String locale) {
    box.put(AppKeys.locale, locale);
  }

  String get locale => box.get(AppKeys.locale, defaultValue: defaultLocale);

 }

final String defaultSystemLocale = Platform.localeName.split('_').first;

String get defaultLocale => switch (defaultSystemLocale) {
'ru' => 'ru',
'en' => 'en',
'uz' => 'uz',
_ => 'uz',
};
