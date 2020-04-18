

import '../../app/contract/home_contract.dart';
import '../../base/base_i_model.dart';

///Home M层(数据操作层)
class HomeModelImpl extends BaseIModel implements HomeModel {
  ///仅作模拟数据  全局数据推荐provider
  int _count = 0;

  @override
  int increase() {
    return ++_count;
  }
}
