/// M层 基类接口
abstract class IModel {
  void dispose();
}

///M层 基类
abstract class BaseIModel implements IModel {
  String _tag;

  String get tag => _tag;

  @override
  void dispose() {
    _tag = '${DateTime.now().millisecondsSinceEpoch}';
  }
}
