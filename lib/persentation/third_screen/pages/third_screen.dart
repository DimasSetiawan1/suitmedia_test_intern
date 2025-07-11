import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:suitmedia_test/core/route/app_route.dart';
import 'package:suitmedia_test/persentation/second_screen/blocs/user_name/user_name_bloc.dart';
import 'package:suitmedia_test/persentation/third_screen/blocs/user_list/user_list_bloc.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  void initState() {
    context.read<UserListBloc>().add(UserListEvent.fetch());
    _scrollController.addListener(_onScroll);
    super.initState();
  }

  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Third Screen",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: Divider(color: Colors.grey, thickness: 0.2),
        ),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          context.read<UserListBloc>().add(UserListEvent.refresh());
        },
        child: BlocBuilder<UserListBloc, UserListState>(
          builder: (context, state) {
            switch (state.status) {
              case UserListStatus.initial:
                return Center(child: CircularProgressIndicator());
              case UserListStatus.loading:
                return Center(child: CircularProgressIndicator());
              case UserListStatus.success:
                if (state.users.isEmpty) {
                  return Center(child: Text('No users found'));
                }
                return ListView.builder(
                  controller: _scrollController,
                  itemCount: state.hasReachedMax
                      ? state.users.length
                      : state.users.length + 1,
                  itemBuilder: (context, index) {
                    if (index >= state.users.length) {
                      return state.hasReachedMax
                          ? SizedBox.shrink()
                          : Center(child: CircularProgressIndicator());
                    }
                    final user = state.users[index];
                    return InkWell(
                      onTap: () {
                        context.read<UserNameBloc>().add(
                          UserNameEvent.setName(
                            "${user.firstName} ${user.lastName}",
                          ),
                        );
                        GoRouter.of(
                          context,
                        ).pushReplacementNamed(AppRoute.secondScreen.name);
                      },
                      child: ListTile(
                        title: Text("${user.firstName} ${user.lastName}"),
                        subtitle: Text(user.email),
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(user.avatar),
                        ),
                      ),
                    );
                  },
                );
              case UserListStatus.failure:
                return Center(
                  child: Text(state.errorMessage ?? 'An error occurred'),
                );
            }
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) {
      context.read<UserListBloc>().add(UserListEvent.fetch());
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}
