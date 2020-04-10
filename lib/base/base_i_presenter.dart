import 'base_i_model.dart';
import 'base_i_view.dart';

///P层 基类接口
abstract class IPresenter<V extends IView, M extends IModel> {
  void attachView(V view);

  void detachView();
}

///P层 基类
abstract class BaseIPresenter<V extends IView, M extends IModel>
    implements IPresenter {
  V _view;
  M _model;

  @override
  void attachView(IView view) {
    _view = view;
    _model = createModel();
  }

  @override
  void detachView() {
    if (_view != null) {
      _view = null;
    }

    if (_model != null) {
      _model.dispose();
      _model = null;
    }
  }

  M createModel();

  M get model => _model;

  V get view => _view;
}
