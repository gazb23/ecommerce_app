import 'package:ecommerce_app/src/features/authentication/domain/app_user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FakeAuthRepository {
  Stream<AppUser?> authStateChanges() => Stream.value(null);
  //TODO: Implement this method

  AppUser? get currentUser => null;
  // TODO: Implement this method

  Future<void> signInWithEmailAndPassword(String email, String password) async {
    // TODO: implement signInWithEmailAndPassword
  }

  Future<void> createUserpWithEmailAndPassword(
      String email, String password) async {
    // TODO: implement signUpWithEmailAndPassword
  }

  Future<void> signOut() async {
    //TODO: implement signOut
  }
}

final authRepositoryProvider = Provider<FakeAuthRepository>((ref) {
  return FakeAuthRepository();
});

final authStateChangesProvider = StreamProvider.autoDispose<AppUser?>((ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return authRepository.authStateChanges();
});
