import 'package:home_ease/core/networking/remote/firebase_result.dart';
import 'package:home_ease/core/networking/remote/firestore_services.dart';
import 'package:home_ease/features/categorie/data/models/categorie_model.dart';

abstract class CategorieRepository {
  Future<FirebaseResult<void>> addCategorie(SuperCategorieModel categorie);
  Future<FirebaseResult<void>>  deleteCategorie(String categorieId);
  Future<FirebaseResult<void>> updateCategorie(SuperCategorieModel product);
  Future<FirebaseResult<Stream<List<SuperCategorieModel>>>> getCategories();
}

class  CategorieRepo implements CategorieRepository {

  // ignore: unused_field
  final FirestoreServices _firestoreServices;

  CategorieRepo(this._firestoreServices);



  @override
  Future<FirebaseResult<void>>addCategorie(SuperCategorieModel categorie)async {
    return FirebaseResult.success(null);
  }


  @override 
  Future<FirebaseResult<void>> deleteCategorie(String categorieId) async{      
        return FirebaseResult.success(null);

  } 
  @override 
  Future<FirebaseResult<void>>updateCategorie(SuperCategorieModel product)async {
        return FirebaseResult.success(null);


  }
  @override
  Future<FirebaseResult<Stream<List<SuperCategorieModel>>>> getCategories()async {

try{

  final result =  _firestoreServices.collectionsStream(
    path: 'categories',
    builder: (data, documentID) => SuperCategorieModel.fromJson(data!),
  );
  return FirebaseResult.success(result);

}catch(error){

  return FirebaseResult.failure(error.toString());


}
  }
}