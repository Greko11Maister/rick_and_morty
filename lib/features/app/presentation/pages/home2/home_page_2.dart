import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:rick_and_morty2/features/app/presentation/controllers/character_controller.dart';
import 'package:rick_and_morty2/features/app/presentation/widgets/character_card_widget.dart';
import 'package:rick_and_morty2/features/data/datasources/character_remote_data_source.dart';
import 'package:rick_and_morty2/features/data/repositories/character_repository_impl.dart';
import 'package:rick_and_morty2/features/domain/usecases/get_characters_use_case.dart';

class HomePage2 extends StatelessWidget {
  static const routeName = "/home_page2";
  CharacterController _controller;

  @override
  Widget build(BuildContext context) {
    _controller = CharacterController(
        getCharactersUseCase:
            GetCharactersUseCase(CharacterRepositoryImpl(remoteDataSource: CharacterRemoteDataSourceImpl())));

    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leading: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/rick_and_morty.svg",
              color: Colors.black,
              width: 25,
              height: 25,
            )),
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                "Docs",
                style: TextStyle(color: Colors.black),
              )),
          TextButton(onPressed: () {}, child: Text("About", style: TextStyle(color: Colors.black))),
          IconButton(icon: _customIcon(icon: MdiIcons.heart), onPressed: () {})
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Colors.black87),
        child: RefreshIndicator(
          child: GetBuilder<CharacterController>(
              init: _controller,
              initState: (_) {
                _controller.loadData();
              },
              builder: (_) {
                return Obx(() {

                  if (_.isLoading.value) {
                    return CircularProgressIndicator();
                  }

                  return ListView.builder(
                      itemCount: _.characters.length,
                      itemBuilder: (context, i) {
                        var _item = _.characters[i];
                        if (i == 0) {
                          return Column(
                            children: [
                              Container(
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0).copyWith(top: 30),
                                  child: Text(
                                    "The Rick and Morty API",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 50,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              CharacterCard(
                                data: _item,
                              )
                            ],
                          );
                        }
                        return CharacterCard(
                          data: _item,
                        );
                      });
                });
              }),
          onRefresh: () async {
            await Future.delayed(Duration(seconds: 3));
            _controller.loadData();
          },
        ),
      ),
    );
  }

  Widget _customIcon({IconData icon}) {
    return Container(
      padding: EdgeInsets.all(6),
      decoration:
          BoxDecoration(color: Color.fromRGBO(255, 152, 0, 2), borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Icon(
        icon,
        size: 14,
        color: Colors.white,
      ),
    );
  }
}
