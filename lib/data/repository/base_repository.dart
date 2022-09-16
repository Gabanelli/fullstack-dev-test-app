import 'package:cloud_firestore/cloud_firestore.dart';

abstract class BaseRepository {

  final FirebaseFirestore db;

  const BaseRepository(this.db);

}