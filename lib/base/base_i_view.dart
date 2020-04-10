import 'package:flutter/material.dart';

import 'base_i_presenter.dart';

///V层 基类接口

abstract class IView {}


///V层 基类
abstract class BaseView extends StatefulWidget {
  @override
  BaseViewState createState() => getState();

  BaseViewState getState();
}

abstract class BaseViewState<B extends BaseView, P extends IPresenter>
    extends State<B> implements IView {
  P _presenter;

  P get getPresenter => _presenter;

  ///子类实现
  P createPresenter();

  @override
  void initState() {
    super.initState();
    _presenter = createPresenter();
    if (_presenter != null) {
      _presenter.attachView(this);
    }

    initView();
  }

  @override
  Widget build(BuildContext context) => setView(context);

  @override
  void dispose() {
    super.dispose();
    if (_presenter != null) {
      _presenter.detachView();
    }

    disposeView();
  }

  ///子类实现 初始化
  void initView();

  ///子类实现 创建视图
  Widget setView(BuildContext context);

  ///子类实现 销毁
  void disposeView();
}
