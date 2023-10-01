import 'package:get_storage/get_storage.dart';
import 'package:injectable/injectable.dart';

@module
abstract class InjectableSingletonModule {

  @factoryMethod
  GetStorage get getStorage => GetStorage();

  /*
  @lazySingleton
  GoogleSignIn get googleSignIn => GoogleSignIn();

  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  @lazySingleton
  FirebaseFirestore get firebaseFirestore => FirebaseFirestore.instance;
  */

  /*
  @preResolve
  Future<SharedPreferences> get prefs = SharedPreferences.getInstance();
  */

  /*
  @prod
  @Named("resource")
  String get movies => "";
  */

  /*
   @lazySingleton
   ApiClient get apiClient => DioClient(
        dio: dio,
        interceptors: [getIt<ApiKeyInterceptor>()],
      );
   */
}