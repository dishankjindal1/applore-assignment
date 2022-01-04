part of 'product_bloc.dart';

abstract class ProductEvent extends Equatable {
  const ProductEvent();

  @override
  List<Object> get props => [];
}

class ProductAdd extends ProductEvent {
  late Product product;
  ProductAdd(this.product);
}

class ProductRemove extends ProductEvent {}
