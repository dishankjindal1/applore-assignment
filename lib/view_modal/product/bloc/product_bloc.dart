import 'package:applore_assignment_app/modal/data_modal/data.modal.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductInitialState()) {
    on<ProductAdd>((event, emit) async {
      emit(ProductLoadingState());
      // Testing purpose
      await Future.delayed(const Duration(seconds: 2));
      emit(ProductLoadCompleteState(event.product));
    });
    on<ProductRemove>((event, emit) async {
      emit(ProductLoadingState());

      await Future.delayed(const Duration(seconds: 1));

      emit(ProductRemoveCompleteState());

      await Future.delayed(const Duration(seconds: 1));

      emit(ProductLoadingState());
      
      await Future.delayed(const Duration(seconds: 1));

      emit(ProductInitialState());
    });
  }
}
