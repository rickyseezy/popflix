import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/themes/themes.dart';
import 'package:movie_app/cubits/slider/slider_cubit.dart';
import 'package:movie_app/cubits/slider/slider_state.dart';
import 'package:page_indicator/page_indicator.dart';
import 'package:kiwi/kiwi.dart' as kiwi;

class HomePageSlider extends StatefulWidget {
  @override
  _HomePageSliderState createState() => _HomePageSliderState();
}

class _HomePageSliderState extends State<HomePageSlider> {
  final _sliderCubit = kiwi.KiwiContainer().resolve<SliderCubit>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _sliderCubit.loadSlider();
  }

  @override
  Widget build(BuildContext context) {
    return _buildSlider(context);
  }

  Widget _buildSlider(BuildContext context) {
    return BlocProvider(
      create: (_) => _sliderCubit,
      child: BlocBuilder<SliderCubit, SliderState>(
        builder: (context, state) {
          if (state is SliderLoadingState) {
            return _onLoading(context);
          }

          if (state is SliderLoadedState) {
            return _onSuccess(context, state);
          }

          return _onLoading(context);
        },
      ),
    );
  }

  Widget _onLoading(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.2,
        child: Center(
          child: CircularProgressIndicator(),
        ));
  }

  Widget _onSuccess(BuildContext context, SliderLoadedState state) {
    final movies = state.videos;
    return Container(
        height: MediaQuery.of(context).size.height * 0.2,
        child: PageIndicatorContainer(
          indicatorSpace: 8.0,
          align: IndicatorAlign.bottom,
          indicatorColor: Custom.titleColor,
          indicatorSelectorColor: Custom.secondColor,
          length: movies.take(5).length,
          shape: IndicatorShape.oval(size: Size(8, 8)),
          child: PageView.builder(
              itemCount: movies.take(5).length,
              itemBuilder: (BuildContext context, int index) {
                return Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://image.tmdb.org/t/p/original/${movies[index].backdrop_path}'),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Custom.mainColor.withOpacity(1.0),
                              Custom.mainColor.withOpacity(0.0),
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            stops: [
                              0.0,
                              0.9,
                            ]),
                      ),
                    ),
                    Positioned(
                      bottom: 20.0,
                      left: 10.0,
                      child: Text(movies[index].title, style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),
                    )
                  ],
                );
              }),
        ));
  }
}
