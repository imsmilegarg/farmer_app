import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farmer_app/app/core/values/db_strings.dart';
import 'package:farmer_app/app/data/models/profile_model.dart';
import 'package:get/get.dart';

class DatabaseService extends GetxService {
  late FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  FirebaseFirestore get instance => this._firebaseFirestore;

  Future<Profile> getProfile(String userId) async {
    var data = await instance.collection(Db.profileCol).doc(userId).get();
    if (data.data() != null) {
      return Profile.fromJson(data.data()!);
    } else {
      throw Exception("No User Data Found");
    }
  }

  Future<void> createProfile(String uid) async {
    await instance.collection(Db.profileCol).doc(uid).set(Profile().toJson());
    return;
  }

  Future<void> updateProfile(String uid, Profile profile) async {
    await instance.collection(Db.profileCol).doc(uid).update(profile.toJson());
    return;
  }
}
