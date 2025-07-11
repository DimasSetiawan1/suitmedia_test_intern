import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:suitmedia_test/core/component/shared/widgets/custom_button_widget.dart';
import 'package:suitmedia_test/core/route/app_route.dart';
import 'package:suitmedia_test/persentation/second_screen/blocs/user_name/user_name_bloc.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Second Screen",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: Divider(color: Colors.grey, thickness: 0.2),
        ),
      ),

      body: Stack(
        children: [
          BlocBuilder<UserNameBloc, UserNameState>(
            builder: (context, state) {
              return state.maybeWhen(
                showName: (name) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 10,
                    ),
                    child: Text.rich(
                      TextSpan(
                        text: 'Welcome',
                        children: [
                          TextSpan(
                            text: '\n$name',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                        style: TextStyle(fontSize: 12, color: Colors.black),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  );
                },
                orElse: () {
                  return Center(
                    child: Text(
                      'No Name Selected',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                },
              );
            },
          ),
          Center(
            child: Text(
              'Selected User Name',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomButtonWidget(
        text: 'Choose a User',
        onPressed: () {
          GoRouter.of(context).pushNamed(AppRoute.thirdScreen.name);
        },
        horizontalPadding: 20.0,
        margin: EdgeInsets.symmetric(vertical: 20.0),
      ),
    );
  }
}
