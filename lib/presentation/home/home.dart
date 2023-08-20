import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:perla_tech_test/app/extensions.dart';
import 'package:perla_tech_test/presentation/home/home_bloc/home_bloc.dart';
import 'package:perla_tech_test/presentation/home/home_bloc/home_bloc.dart';
import 'package:perla_tech_test/presentation/resources/resources.dart';
import 'package:perla_tech_test/presentation/widgets/custom_drawer.dart';
import 'package:perla_tech_test/presentation/widgets/custom_elevated_button.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController input = TextEditingController();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  void dispose() {
    input.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppSizeW.s24, vertical: AppSizeH.s56),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    scaffoldKey.currentState?.openDrawer();
                  },
                  icon: SvgPicture.asset(IconAssets.menu)),
              SizedBox(
                height: AppSizeH.s32,
              ),
              SizedBox(
                height: AppSizeH.s48,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: TextFormField(
                        controller: input,
                        onChanged: (v) {
                          setState(() {});
                        },
                        decoration:
                            InputDecoration(hintText: AppStrings().enterYourText),
                      ),
                    ),
                    SizedBox(
                      width: AppSizeW.s8,
                    ),
                    Expanded(
                        flex: 1,
                        child: CustomElevatedButton(
                          label: AppStrings().add,
                          onPressed: input.text.isNotEmpty
                              ? () {
                                  context.read<HomeBloc>().add(HomeAddEvent((
                                        text: input.text,
                                        date: DateTime.now().dateFormat()
                                      )));
                                  input.clear();
                                }
                              : null,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: AppSizeH.s32,
              ),
              Container(
                height: AppSizeH.s40,
                decoration: BoxDecoration(color: Theme.of(context).isDarkTheme ? ColorManager.darkGrey : ColorManager.lightGrey),
                child: Row(
                  children: [
                    Expanded(
                        child: Text(
                      AppStrings().text,
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).primaryTextTheme.bodySmall,
                    )),
                    Expanded(
                        child: Text(
                      AppStrings().date,
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).primaryTextTheme.bodySmall,
                    )),
                  ],
                ),
              ),
              BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) {
                  return SizedBox(
                    height: AppSizeH.s311,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: AppSizeSp.s1, color: ColorManager.lighterGrey),
                      ),
                      child: ListView.separated(
                          padding: EdgeInsetsDirectional.only(top: AppSizeH.s13),
                          itemCount: context.read<HomeBloc>().data.length,
                          separatorBuilder: (context, index) => Divider(
                                height: AppSizeH.s10,
                                thickness: AppSizeH.s1,
                                color: ColorManager.lighterGrey,
                              ),
                          itemBuilder: (context, index) => Row(
                                children: [
                                  SizedBox(
                                    width: AppSizeW.s24,
                                  ),
                                  Expanded(
                                      child: Text(
                                    context.read<HomeBloc>().data[index].text,
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .bodySmall,
                                  )),
                                  Expanded(
                                      child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        context.read<HomeBloc>().data[index].date,
                                        style: Theme.of(context)
                                            .primaryTextTheme
                                            .bodySmall
                                            ?.copyWith(
                                                fontSize: AppSizeSp.s10,
                                                letterSpacing: AppSizeSp.s01),
                                      ),
                                      SizedBox(
                                        width: AppSizeW.s27,
                                      ),
                                      InkWell(
                                          onTap: () {
                                            showDialog(
                                                context: context,
                                                builder: (context) {
                                                  return EditDialog(index: index);
                                                });
                                          },
                                          child:
                                              SvgPicture.asset(IconAssets.edit)),
                                      SizedBox(
                                        width: AppSizeW.s8,
                                      ),
                                      InkWell(
                                          onTap: () {
                                            context.read<HomeBloc>().add(
                                                HomeDeleteEvent(context
                                                    .read<HomeBloc>()
                                                    .data[index]));
                                          },
                                          child:
                                              SvgPicture.asset(IconAssets.trash)),
                                    ],
                                  )),
                                  SizedBox(
                                    width: AppSizeW.s8,
                                  ),
                                ],
                              )),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      drawer: CustomDrawer(scaffoldKey: scaffoldKey),
    );
  }
}

class EditDialog extends StatefulWidget {
  final int index;
  const EditDialog({super.key, required this.index});

  @override
  State<EditDialog> createState() => _EditDialogState();
}

class _EditDialogState extends State<EditDialog> {
  TextEditingController edit = TextEditingController();

  @override
  void initState() {
    edit.text = context.read<HomeBloc>().data[widget.index].text;
    super.initState();
  }

  @override
  void dispose() {
   edit.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding:
        const EdgeInsets.all(
            24.0),
        child: Column(
          mainAxisSize:
          MainAxisSize.min,
          children: [
            TextFormField(
              controller: edit,
              onChanged: (v) {
                setState(() {});
              },
              decoration: InputDecoration(
                  hintText: AppStrings()
                      .enterYourText),
            ),
            SizedBox(
              height: AppSizeH.s8,
            ),
            CustomElevatedButton(
              label:
              AppStrings().edit,
              onPressed: edit.text
                  .isNotEmpty && edit.text != context.read<HomeBloc>().data[widget.index].text
                  ? () {
                context
                    .read<
                    HomeBloc>()
                    .add(
                    HomeEditEvent((
                    text: edit
                        .text,
                    date: DateTime.now()
                        .dateFormat()
                    ), widget.index));
                context.pop();
              }
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}

