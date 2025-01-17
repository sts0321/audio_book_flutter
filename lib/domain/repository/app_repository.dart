import 'package:audio_book_mobile_app/data/model/audio_model.dart';
import 'package:audio_book_mobile_app/data/model/book_model.dart';
import 'package:audio_book_mobile_app/data/model/category_model.dart';
import 'package:audio_book_mobile_app/data/source/remote/firebase/firebase_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AppRepository {
  final _firebaseService = FirebaseService();

  List<BookModel> books = [];
  List<CategoryModel> categories = [];

  Future<List<CategoryModel>> getAllCategories(bool isRefresh) async {
    if (isRefresh || categories.isEmpty) {
      categories = await _firebaseService.getAllCategories();
    }

    return categories;
  }

  Future<List<BookModel>> getAllBooks(bool isRefresh) async {
    if (isRefresh || books.isEmpty) {
      books = await _firebaseService.getAllBooks();
    }

    return books;
  }

  Future<List<AudioModel>> getAllAudios(String bookName) async =>
      await _firebaseService.getAllAudios(bookName);

  Future<User?> signInGoogle() async => await _firebaseService.signInGoogle();

  Future<String> downloadAudio(String bookName, String audioName) async =>
      await _firebaseService.downloadAudio(bookName, audioName);
}
