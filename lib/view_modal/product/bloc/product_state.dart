part of 'product_bloc.dart';

abstract class ProductState extends Equatable {
  const ProductState();

  @override
  List<Object> get props => [];
}

class ProductInitialState extends ProductState {}

class ProductLoadingState extends ProductState {}

class ProductLoadCompleteState extends ProductState {
  final Product product;
  const ProductLoadCompleteState(this.product);
}

class ProductRemoveCompleteState extends ProductState {}

class ProductLoadFailureState extends ProductState {}
