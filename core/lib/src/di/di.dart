import 'package:get_it/get_it.dart';

import '../../core.dart';
import '../navigation/app_router.dart';

final di = GetIt.instance;

void initDependencies() {
  di.registerSingleton<AccountlyNavigator>(AppRouter());
}
