

import 'package:freezed_annotation/freezed_annotation.dart';

part 'categorie_state.freezed.dart';

@freezed
class CategorieState<T> with _$CategorieState<T> {
  const factory CategorieState.initial() = _Initial;

  const factory CategorieState.categorieLoading() = CategorieLoading;

  const factory CategorieState.getCategorieSuccess(T data) = GetCategorieSuccess<T>;

  const factory CategorieState.categorieError({required String error}) = CategorieError;
}