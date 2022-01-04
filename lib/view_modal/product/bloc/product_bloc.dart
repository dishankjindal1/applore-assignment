import 'package:applore_assignment_app/modal/data_modal/data.modal.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductLoadingState()) {
    on<ProductAdd>((event, emit) {
      emit(ProductLoadingState());
      // Testing purpose
      Product product = const Product(
          id: '1',
          description: 'description',
          imageUrl: 'imageUrl',
          price: 'price');
      event.product = product;
      emit(ProductLoadCompleteState());
    });
    on<ProductRemove>((event, emit) {
      emit(ProductLoadingState());

      

      emit(ProductLoadCompleteState());
    });
  }
}
