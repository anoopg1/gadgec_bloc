part of 'home_bloc.dart';

@immutable
sealed class HomeState {
  HomeState({required productList});
  List<Product> productList = [];
}

final class HomeInitial extends HomeState {
  HomeInitial({required super.productList});
  List<Product> productList = [];
}
