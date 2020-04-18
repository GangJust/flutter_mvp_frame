import 'package:flutter/material.dart';

import '../../app/contract/home_contract.dart';
import '../../app/presenter/home_presenter_impl.dart';
import '../../base/base_i_view.dart';

///Home V层(UI层)
class Home extends BaseView {
  @override
  _HomeState getState() => _HomeState();
}

class _HomeState extends BaseViewState<BaseView, HomePresenter>
    implements HomeView {
  int _count = 0;

  @override
  HomePresenter createPresenter() => HomePresenterImpl();

  @override
  void disposeView() {
    // TODO: implement disposeView
  }

  @override
  void initView() {
    // TODO: implement initView
  }

  @override
  Widget setView(BuildContext context) {
    // TODO: implement setView
    return Scaffold(
      appBar: AppBar(title: Text('MVP通用框架')),
      body: Center(
        child: Text('$_count', style: TextStyle(fontSize: 20)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: increase,
        child: Icon(Icons.add),
      ),
    );
  }

  void increase() {
    getPresenter.increase();
  }

  ///该方法作演示用(如果后续类皆是继承BaseViewState，那么setState将不可想象)
  ///状态更新个人推荐 provider
  @override
  void refresh(int count) {
    _count = count;
    setState(() {});
  }
}
