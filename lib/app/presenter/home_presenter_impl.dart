import '../../app/contract/home_contract.dart';
import '../../app/model/home_model_impl.dart';
import '../../base/base_i_presenter.dart';

///Home P层(桥梁)
class HomePresenterImpl extends BaseIPresenter<HomeView, HomeModel>
    implements HomePresenter {
  @override
  HomeModel createModel() => HomeModelImpl();

  @override
  void increase() {
    int count = model.increase();
    view?.refresh(count);
  }
}
