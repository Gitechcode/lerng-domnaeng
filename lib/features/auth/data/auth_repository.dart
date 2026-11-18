import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../domain/user_model.dart';

class AuthRepository {
  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;

  AuthRepository(this._auth, this._firestore);

  Future<UserCredential> signUp({
    required String email,
    required String password,
    required String displayName,
    required CareerLevel careerLevel,
    CareerLevel? targetCareerLevel,
    String? industry,
    String? companyContext,
    List<String> learningGoals = const [],
  }) async {
    final credential = await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    final user = credential.user;
    if (user != null) {
      final userModel = UserModel(
        id: user.uid,
        email: email,
        displayName: displayName,
        careerLevel: careerLevel,
        targetCareerLevel: targetCareerLevel,
        role: UserRole.learner, // Defaults to Learner role strictly!
        industry: industry,
        companyContext: companyContext,
        learningGoals: learningGoals,
        createdAt: DateTime.now(),
      );

      await _firestore.collection('users').doc(user.uid).set(userModel.toMap());
      await user.updateDisplayName(displayName);
    }

    return credential;
  }

  Future<UserCredential> signIn({
    required String email,
    required String password,
  }) async {
    return await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }

  Future<void> sendPasswordResetEmail(String email) async {
    await _auth.sendPasswordResetEmail(email: email);
  }
}

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepository(
    FirebaseAuth.instance,
    FirebaseFirestore.instance,
  );
});
