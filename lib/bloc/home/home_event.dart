part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

class fetchData extends HomeEvent {}

class addToCart extends HomeEvent {}

class buyNow extends HomeEvent {}

class addToWishlist extends HomeEvent {}
