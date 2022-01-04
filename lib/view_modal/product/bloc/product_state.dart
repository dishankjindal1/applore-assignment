part of 'product_bloc.dart';

abstract class ProductState extends Equatable {
  const ProductState();

  @override
  List<Object> get props => [];
}

class ProductLoadingState extends ProductState {}

class ProductLoadCompleteState extends ProductState {
  // final Product product;
  // const ProductLoadCompleteState(this.product);
}

class ProductLoadFailureState extends ProductState {}
