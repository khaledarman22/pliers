import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pliers/core/utils/app_colors.dart';
import 'package:pliers/core/utils/extentions.dart';
import 'package:pliers/core/widgets/const_elevated_button.dart';
import 'package:pliers/features/auth_feature/presentation/cubit/auth_cubit.dart';
import 'package:pliers/features/auth_feature/presentation/widgets/const_show_bottom_sheet_get_location.dart';
import 'package:pliers/features/home_feature/presentation/view/home_view.dart';
import 'app_bar_to_get_location.dart';

class GetLocationWidgets extends StatefulWidget {
  const GetLocationWidgets({super.key});

  @override
  State<GetLocationWidgets> createState() => _GetLocationWidgetsState();
}

class _GetLocationWidgetsState extends State<GetLocationWidgets> {
  final MapController mapController = MapController(
    initMapWithUserPosition: true,
  );

  final GlobalKey<ScaffoldState>? scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  void dispose() {
    mapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        key: scaffoldKey,
        children: [
          const AppBarGetLocation(),
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(30)),
              child: BlocBuilder<AuthCubit, AuthState>(
                builder: (context, state) {
                  AuthCubit cubic = AuthCubit.get(context);
                  return Container(
                    decoration: const BoxDecoration(
                        color: AppColors.kWhite,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(30))),
                    width: context.width,
                    height: context.height * .85,
                    child: Stack(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox.expand(
                          child: InkWell(
                            child: OSMFlutter(
                              controller: mapController,
                              initZoom: 12,
                              minZoomLevel: 2,
                              maxZoomLevel: 18,
                              userLocationMarker: UserLocationMaker(
                                personMarker: const MarkerIcon(
                                  icon: Icon(
                                    Icons.location_history,
                                    color: Colors.red,
                                    size: 120,
                                  ),
                                ),
                                directionArrowMarker: const MarkerIcon(
                                  icon: Icon(
                                    Icons.double_arrow,
                                    size: 70,
                                  ),
                                ),
                              ),
                              onMapIsReady: (ready) {
                                cubic.getMyLocation(mapController);
                                cubic.addMarkThenTapOnMap(
                                  mapController,
                                  context,
                                  const BottomShet(),
                                );
                              },
                            ),
                          ),
                        ),
                        Positioned.fill(
                            top: 35,
                            child: Align(
                                alignment: AlignmentDirectional.topCenter,
                                child: Column(
                                  children: [
                                    SearchParFromMap(
                                      bottomShet: cubic.isClick,
                                      onChanged: (value) async {
                                        cubic
                                            .getResultSearch(value)
                                            .then((value) {
                                          print(value);
                                        });

                                        // List<SearchInfo> suggestions =
                                        //     await addressSuggestion(value);
                                        // print('===================');
                                        // suggestions.forEach((element) {
                                        //   print(element.address);
                                        // });
                                      },
                                    ),
                                    Visibility(
                                      visible: cubic.valueSearch.isNotEmpty,
                                      child: Expanded(
                                        // fit: FlexFit.tight,
                                        // flex: 0,
                                        child: ListView.builder(
                                          itemCount: cubic.valueSearch.length,
                                          itemBuilder: (context, index) {
                                            return InkWell(
                                              onTap: () {
                                                cubic.clearResalt();
                                                setState(() {});
                                              },
                                              child: Container(
                                                width: 200,
                                                height: 100,
                                                color:
                                                    AppColors.kAmericanBronze,
                                                child: Text(
                                                    '${cubic.valueSearch[index].address}'),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    )
                                  ],
                                ))),
                        Positioned.fill(
                          bottom: 115.h,
                          child: Align(
                            alignment: AlignmentDirectional.bottomStart,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 25),
                              child: FloatingActionButton(
                                backgroundColor: AppColors.kWhite,
                                child: const Icon(
                                  Icons.my_location_sharp,
                                  color: AppColors.kChineseYellow,
                                  size: 30,
                                ),
                                onPressed: () {
                                  mapController.currentLocation();
                                  // print('object');
                                  // cubic.getMyLocation(mapController);
                                },
                              ),
                            ),
                          ),
                        ),
                        Positioned.fill(
                          bottom: 35.h,
                          child: Align(
                            alignment: AlignmentDirectional.bottomStart,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 25),
                              child: ConstElevatedButtom(
                                width: context.width,
                                onPressed: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const HomeView(),
                                      ));
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SearchParFromMap extends StatelessWidget {
  const SearchParFromMap({
    super.key,
    this.onChanged,
    this.bottomShet,
  });
  final Function(String)? onChanged;
  final bool? bottomShet;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        onTap: () {
          if (bottomShet == true) {
            Navigator.pop(context);
          }
        },
        onChanged: onChanged,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search),
          hintText: '9957 Kassandra Gardens',
          hintStyle: context.textTheme.titleSmall!.copyWith(
            fontFamily: 'Cairo',
            color: const Color.fromRGBO(0, 28, 43, 0.6),
            fontWeight: FontWeight.w400,
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(
              color: AppColors.kChineseYellow,
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(
              color: AppColors.kChineseYellow,
            ),
          ),
          errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(
              color: AppColors.kChineseYellow,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(
              color: AppColors.kChineseYellow,
            ),
          ),
        ),
      ),
    );
  }
}
