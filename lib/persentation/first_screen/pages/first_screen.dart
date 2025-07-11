import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:suitmedia_test/core/component/shared/widgets/custom_button_widget.dart';
import 'package:suitmedia_test/core/route/app_route.dart';
import 'package:suitmedia_test/persentation/first_screen/blocs/palindrome_validation/palindrome_validation_bloc.dart';
import 'package:suitmedia_test/persentation/second_screen/blocs/user_name/user_name_bloc.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen({super.key});
  final _nameController = TextEditingController();
  final _palindromeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.white.withAlpha(150),
                child: Icon(
                  Icons.person_add_alt_1,
                  size: 35,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 51),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.06,
                child: TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    hintText: 'Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              BlocBuilder<PalindromeValidationBloc, PalindromeValidationState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    validated: (isPalindrome) {
                      _palindromeController.text = isPalindrome
                          ? 'isPalindrome'
                          : 'Not Palindrome';
                      return Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.06,
                        child: TextFormField(
                          controller: _palindromeController,
                          readOnly: true,
                          decoration: InputDecoration(
                            filled: true,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      );
                    },
                    orElse: () => Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.06,
                      child: TextFormField(
                        controller: _palindromeController,
                        readOnly: true,
                        decoration: InputDecoration(
                          filled: true,
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                          fillColor: Colors.white,
                          hintText: "Palindrome",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 45),
              CustomButtonWidget(
                text: 'Check',
                onPressed: () {
                  context.read<PalindromeValidationBloc>().add(
                    PalindromeValidationEvent.validate(_nameController.text),
                  );
                },
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              SizedBox(height: 15),
              CustomButtonWidget(
                text: 'Next',
                onPressed: () {
                  context.read<UserNameBloc>().add(
                    UserNameEvent.setName(_nameController.text),
                  );
                  GoRouter.of(context).pushNamed(AppRoute.secondScreen.name);
                },
                height: MediaQuery.of(context).size.height * 0.06,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
