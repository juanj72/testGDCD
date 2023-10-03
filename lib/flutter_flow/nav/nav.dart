import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => appStateNotifier.showSplashImage
          ? Builder(
              builder: (context) => Container(
                color: Colors.transparent,
                child: Image.asset(
                  'assets/images/Splash.png',
                  fit: BoxFit.cover,
                ),
              ),
            )
          : WelcomeWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.showSplashImage
              ? Builder(
                  builder: (context) => Container(
                    color: Colors.transparent,
                    child: Image.asset(
                      'assets/images/Splash.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : WelcomeWidget(),
        ),
        FFRoute(
          name: 'RutinaGanarPeso',
          path: '/rutinaGanarPeso',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'RutinaGanarPeso')
              : RutinaGanarPesoWidget(),
        ),
        FFRoute(
          name: 'welcome',
          path: '/welcome',
          builder: (context, params) => WelcomeWidget(),
        ),
        FFRoute(
          name: 'onboarding',
          path: '/onboarding',
          builder: (context, params) => OnboardingWidget(),
        ),
        FFRoute(
          name: 'register',
          path: '/register',
          builder: (context, params) => RegisterWidget(),
        ),
        FFRoute(
          name: 'completeProfile',
          path: '/completeProfile',
          builder: (context, params) => CompleteProfileWidget(),
        ),
        FFRoute(
          name: 'goals',
          path: '/goals',
          builder: (context, params) => GoalsWidget(),
        ),
        FFRoute(
          name: 'login',
          path: '/login',
          builder: (context, params) => LoginWidget(),
        ),
        FFRoute(
          name: 'registrationSuccess',
          path: '/registrationSuccess',
          builder: (context, params) => RegistrationSuccessWidget(),
        ),
        FFRoute(
          name: 'profile',
          path: '/profile',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'profile')
              : ProfileWidget(),
        ),
        FFRoute(
          name: 'progressTracker',
          path: '/progressTracker',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'progressTracker')
              : ProgressTrackerWidget(),
        ),
        FFRoute(
          name: 'homeCopy',
          path: '/rutina',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'homeCopy')
              : HomeCopyWidget(),
        ),
        FFRoute(
          name: 'completar_info',
          path: '/completarInfo',
          builder: (context, params) => CompletarInfoWidget(),
        ),
        FFRoute(
          name: 'RutinaPerderPeso',
          path: '/RutinaPerderPeso',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'RutinaPerderPeso')
              : RutinaPerderPesoWidget(),
        ),
        FFRoute(
          name: 'RutinaGanarMasa',
          path: '/rutinaGanarMasa',
          builder: (context, params) => RutinaGanarMasaWidget(),
        ),
        FFRoute(
          name: 'Rutina',
          path: '/Rutinageneral',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'Rutina')
              : RutinaWidget(),
        ),
        FFRoute(
          name: 'EntrenamientoAganarmusculo',
          path: '/EntrenamientoAMasa',
          builder: (context, params) => EntrenamientoAganarmusculoWidget(),
        ),
        FFRoute(
          name: 'EntrenamientoBganarmusculo',
          path: '/EntrenamientoBMasa',
          builder: (context, params) => EntrenamientoBganarmusculoWidget(),
        ),
        FFRoute(
          name: 'EntrenamientoCganarmusculo',
          path: '/EntrenamientoCMasa',
          builder: (context, params) => EntrenamientoCganarmusculoWidget(),
        ),
        FFRoute(
          name: 'EntrenamientoDganarmusculo',
          path: '/EntrenamientoDMasa',
          builder: (context, params) => EntrenamientoDganarmusculoWidget(),
        ),
        FFRoute(
          name: 'Extenciondepiernas',
          path: '/Extenciondepiernas',
          builder: (context, params) => ExtenciondepiernasWidget(),
        ),
        FFRoute(
          name: 'Sentadillaconbarra',
          path: '/SentadillaConBarra',
          builder: (context, params) => SentadillaconbarraWidget(),
        ),
        FFRoute(
          name: 'PesasRusas',
          path: '/Pesasrusas',
          builder: (context, params) => PesasRusasWidget(),
        ),
        FFRoute(
          name: 'Pantorrilla',
          path: '/pantorrilla',
          builder: (context, params) => PantorrillaWidget(),
        ),
        FFRoute(
          name: 'Isquisibio',
          path: '/isquisibio',
          builder: (context, params) => IsquisibioWidget(),
        ),
        FFRoute(
          name: 'Buenosdias',
          path: '/BuenosDias',
          builder: (context, params) => BuenosdiasWidget(),
        ),
        FFRoute(
          name: 'HIT',
          path: '/HIT',
          builder: (context, params) => HitWidget(),
        ),
        FFRoute(
          name: 'sentadilla',
          path: '/sentadilla',
          builder: (context, params) => SentadillaWidget(),
        ),
        FFRoute(
          name: 'empuje',
          path: '/empuje',
          builder: (context, params) => EmpujeWidget(),
        ),
        FFRoute(
          name: 'pmuerto',
          path: '/pmuerto',
          builder: (context, params) => PmuertoWidget(),
        ),
        FFRoute(
          name: 'pmuerto2',
          path: '/pmuerto2',
          builder: (context, params) => Pmuerto2Widget(),
        ),
        FFRoute(
          name: 'cable',
          path: '/cable',
          builder: (context, params) => CableWidget(),
        ),
        FFRoute(
          name: 'bulgara',
          path: '/bulgara',
          builder: (context, params) => BulgaraWidget(),
        ),
        FFRoute(
          name: 'HIT2',
          path: '/HIT2',
          builder: (context, params) => Hit2Widget(),
        ),
        FFRoute(
          name: 'giro',
          path: '/GIRO',
          builder: (context, params) => GiroWidget(),
        ),
        FFRoute(
          name: 'BarbellRollOuts',
          path: '/BarbellRollOuts',
          builder: (context, params) => BarbellRollOutsWidget(),
        ),
        FFRoute(
          name: 'press',
          path: '/press',
          builder: (context, params) => PressWidget(),
        ),
        FFRoute(
          name: 'cable1',
          path: '/cable1',
          builder: (context, params) => Cable1Widget(),
        ),
        FFRoute(
          name: 'remo',
          path: '/remo',
          builder: (context, params) => RemoWidget(),
        ),
        FFRoute(
          name: 'fly',
          path: '/fly',
          builder: (context, params) => FlyWidget(),
        ),
        FFRoute(
          name: 'despegable',
          path: '/despegable',
          builder: (context, params) => DespegableWidget(),
        ),
        FFRoute(
          name: 'HIT3',
          path: '/HIT3',
          builder: (context, params) => Hit3Widget(),
        ),
        FFRoute(
          name: 'pressh',
          path: '/pressh',
          builder: (context, params) => PresshWidget(),
        ),
        FFRoute(
          name: 'elevacion',
          path: '/elevacion',
          builder: (context, params) => ElevacionWidget(),
        ),
        FFRoute(
          name: 'enco',
          path: '/enco',
          builder: (context, params) => EncoWidget(),
        ),
        FFRoute(
          name: 'curl',
          path: '/curl',
          builder: (context, params) => CurlWidget(),
        ),
        FFRoute(
          name: 'cable3',
          path: '/cable3',
          builder: (context, params) => Cable3Widget(),
        ),
        FFRoute(
          name: 'pressbanca',
          path: '/pressbanca',
          builder: (context, params) => PressbancaWidget(),
        ),
        FFRoute(
          name: 'inmersiones',
          path: '/inmersiones',
          builder: (context, params) => InmersionesWidget(),
        ),
        FFRoute(
          name: 'HIT4',
          path: '/HIT4',
          builder: (context, params) => Hit4Widget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouter.of(context).location;
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}
