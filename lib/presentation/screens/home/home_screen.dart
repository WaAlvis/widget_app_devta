import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widget_app_devta/config/menu/menu_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const name = 'home_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter + Material 3'),
      ),
      body: const _HomeListView(),
    );
  }
}

class _HomeListView extends StatelessWidget {
  const _HomeListView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: menuItems.length,
      itemBuilder: (BuildContext context, int index) {
        final opcion = menuItems[index];

        return _ListTileMenu(opcion: opcion);
      },
    );
  }
}

class _ListTileMenu extends StatelessWidget {
  const _ListTileMenu({
    required this.opcion,
  });

  final MenuItem opcion;

  @override
  Widget build(BuildContext context) {

    
    final colors = Theme.of(context).colorScheme;

    return ListTile(
        leading: Icon(
          opcion.icon,
          color: colors.primary,
        ),
        trailing: Icon(
          Icons.arrow_forward_ios_outlined,
          color: colors.primary,
        ),
        title: Text(opcion.title),
        subtitle: Text(opcion.subtitle),
        onTap: () => context.push(
              opcion.link,
            ));
  }
}
