import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

@module
abstract class InjectableModule {
  @lazySingleton
  FirebaseFirestore get firebaseFirestore => FirebaseFirestore.instance;

  @preResolve
  Future<RemoteConfig> get remoteConfig => RemoteConfig.instance;

  @lazySingleton
  NumberFormat get formatCurrency =>
      NumberFormat.currency(locale: "en_US", symbol: "₱");
}
