import 'package:bloc/bloc.dart';
import 'package:gadgec_bloc/repository/model/product_model/product.dart';
import 'package:gadgec_bloc/repository/services/product_services.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc()
      : super(
          HomeInitial(productList: []),
        ) {
    on<fetchData>(
      (event, emit) {
        final response= ProductServices().fetchProducts();
      

        
      },
    );
  }
}
