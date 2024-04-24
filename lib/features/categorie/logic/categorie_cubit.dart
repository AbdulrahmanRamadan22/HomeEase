import 'package:bloc/bloc.dart';
import 'package:home_ease/features/categorie/logic/categorie_state.dart';


class CategorieCubit extends Cubit<CategorieState> {
  CategorieCubit() : super(const CategorieState.initial());
}
