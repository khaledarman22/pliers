import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:geolocator/geolocator.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  bool isClick = false;
  List<SearchInfo> valueSearch = [];
  static AuthCubit get(context) => BlocProvider.of(context);

// start get prmation

  getMyLocation(MapController mapController) async {
    var permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.whileInUse) {
      Geolocator.getCurrentPosition().then((value) {
        mapController.currentLocation().then((value) {
          Geolocator.getCurrentPosition().then((value) {
            print(value);
          });
        });
      });
    }
  }

  Future addMarkThenTapOnMap(
    MapController mapController,
    BuildContext context,
    Widget child,
  ) async {
    mapController.listenerMapSingleTapping.addListener(() async {
      if (isClick == false) {
        isClick = true;
        Scaffold.of(context)
            .showBottomSheet((context) {
              return child;
            })
            .closed
            .then((value) {
              isClick = !isClick;
            });
      }

      if (mapController.listenerMapSingleTapping.value != null) {
        FocusScope.of(context).unfocus();
        var geoPoint = GeoPoint(
          latitude: mapController.listenerMapSingleTapping.value!.latitude,
          longitude: mapController.listenerMapSingleTapping.value!.longitude,
        );
        mapController.osmBaseController.geoPoints().then((value) {
          if (value.isEmpty) {
            mapController.changeLocation(geoPoint);
          } else {
            mapController.osmBaseController
                .removeMarker(value[0])
                .then((value) {
              mapController.changeLocation(geoPoint);
            });
          }
        });
      }
    });
  }

  Future getResultSearch(String testSearsh) async {
    clearResalt();
    valueSearch = await addressSuggestion(testSearsh);
    emit(SearchState());
  }

  clearResalt() {
    valueSearch.clear();
    print(valueSearch.length);
    emit(ClearResaltSearchState());
  }
}
