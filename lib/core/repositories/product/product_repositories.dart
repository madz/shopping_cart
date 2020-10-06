import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:shopping_cart/core/models/product/product_model.dart';
import 'package:shopping_cart/shared/constants/app_constants.dart';

abstract class ProductRepositories {
  Future<List<ProductModel>> getAllProducts();
}

@Injectable(as: ProductRepositories)
@lazySingleton
class ProductRepositoriesImpl extends ProductRepositories {
  final FirebaseFirestore _firestore;

  ProductRepositoriesImpl(this._firestore);
  @override
  Future<List<ProductModel>> getAllProducts() async {
    List<ProductModel> listProducts = [];

    QuerySnapshot querySnapshot = await _firestore
        .collection(AppConstants.FIRESTORE_COLLECTION_PRODUCT)
        .get();

    if (querySnapshot.docs.isNotEmpty) {
      for (final QueryDocumentSnapshot item in querySnapshot.docs) {
        final ProductModel barterModel = ProductModel.fromJson(item.data());

        listProducts.add(barterModel);
      }
    }

    return listProducts;
  }
}
