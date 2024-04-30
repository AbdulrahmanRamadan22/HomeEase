import 'dart:developer';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:home_ease/core/helpers/navigation_extensions.dart';
import 'package:home_ease/core/networking/remote/firebase_path.dart';
import 'package:home_ease/core/networking/remote/firestore_services.dart';
import 'package:home_ease/features/home/data/models/categorie_model.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

part 'categorie_state.dart';

class CategorieCubit extends Cubit<CategorieState> {
  CategorieCubit() : super(CategorieInitial());

  final _service = FirestoreServices.instance;
  Stream<List<Category>> getCategories() => _service.collectionsStream(
        path: FaireBasePath.Categories(),
        builder: (data, documentId) => Category.fromMap(data!, documentId),
        // queryBuilder: (query) => query.where('discountValue', isNotEqualTo: 0),
      );

  Future<void> setCategory(Category category) async {
    _service.setData(
        path: " categories/${category.id}", data: category.toMap());
  }

  var picker = ImagePicker();

  File? profileImage;

  Future<void> getProfileImageGallery() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      profileImage = File(pickedFile.path);
      emit(GetCategorieImagePickedSuccessState());
    } else {
      log('No image selected.');

      emit(GetCategorieImagePickedErrorState());
    }
  }

  Category? categoryModel;

  final titleController = TextEditingController();

  void addAndUpdateCategorie(BuildContext context) {
    emit(CategorieImageUpdateLoadingState());

    firebase_storage.FirebaseStorage.instance
        .ref()
        .child('categories/${Uri.file(profileImage!.path).pathSegments.last}')
        .putFile(profileImage!)
        .then((value) {
      value.ref.getDownloadURL().then((value) {
        log(value);

        setCategory(Category(
          id: categoryModel!.id,
          title: titleController.text,
          imgUrl: value,
        ))
            .then((value) => {
                  emit(UpdateCategorieSuccessState()),
                })
            // ignore: invalid_return_type_for_catch_error
            .catchError((error) => emit(UpdateCategorieErrorState()));

        // ProfileCubit().getUserData();
        context.pop();
      }).catchError((error) {
        emit(UploadCategorieImageErrorState());
      });
    }).catchError((error) {
      emit(UploadCategorieImageErrorState());
    });
  }

  // Future<void> updateCategory({
  //   String? image,
  // }) async {
  //   setCategory(Category(
  //     id: categoryModel!.id,
  //     title: titleController.text,
  //     imgUrl: image ?? categoryModel!.imgUrl.toString(),
  //   ))
  //       .then((value) => {
  //             emit(UpdateCategorieSuccessState()),
  //           })
  //       // ignore: invalid_return_type_for_catch_error
  //       .catchError((error) => emit(UpdateCategorieErrorState()));
  // }
}
