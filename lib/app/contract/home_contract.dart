import 'package:mvpframe/base/base_i_model.dart';
import 'package:mvpframe/base/base_i_presenter.dart';
import 'package:mvpframe/base/base_i_view.dart';

///contract

///Home M层接口
abstract class HomeModel implements IModel {
  int increase();
}

///Home V层接口
abstract class HomeView implements IView {
  void refresh(int count);
}

///Home P层接口
abstract class HomePresenter implements IPresenter {
  void increase();
}
