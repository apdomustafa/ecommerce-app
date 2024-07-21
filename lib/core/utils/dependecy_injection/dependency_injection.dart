import 'package:ecommerce_app/features/auth/model/user_info_model.dart';
import 'package:ecommerce_app/gen/assets.gen.dart';
import 'package:get_it/get_it.dart';

class DependencyInjection {
  static final getIt = GetIt.instance;

  static void setup() {
    getIt.registerSingleton<$AssetsIconsGen>(const $AssetsIconsGen());
    getIt.registerSingleton<UserInfoModel>(UserInfoModel());
  }
}
