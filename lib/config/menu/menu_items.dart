import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subtitle,
    required this.link,
    required this.icon,
  });
}

const menuItems = [
  MenuItem(
      title: 'Riverpod Counter',
      subtitle: 'Introducción a riverpod',
      link: '/counter-river',
      icon: Icons.add),
  MenuItem(
    title: 'Bottones',
    subtitle: 'Varios Botones',
    link: '/buttons',
    icon: Icons.radio_button_checked,
  ),
  MenuItem(
    title: 'Tarjetas',
    subtitle: 'Tarjeta estilizada',
    link: '/cards',
    icon: Icons.card_membership_outlined,
  ),
  MenuItem(
    title: 'Progres',
    subtitle: 'Indicadores de progreso',
    link: '/progress',
    icon: Icons.refresh,
  ),
  MenuItem(
    title: 'Snackbars y Dialogos',
    subtitle: 'Sackbars y Dialogos',
    link: '/snackbars_dialogs',
    icon: Icons.info_outline,
  ),
  MenuItem(
    title: 'Animated Container',
    subtitle: 'Animacion de su forma y color',
    link: '/animated',
    icon: Icons.move_down_rounded,
  ),
  MenuItem(
      title: 'UI Controls + Tiles',
      subtitle: 'Una serie de controles de Flutter',
      link: '/ui-controls',
      icon: Icons.car_rental_outlined),
  MenuItem(
      title: 'Introducción a la aplicación',
      subtitle: 'Pequeño tutorial introductorio',
      link: '/tutorial',
      icon: Icons.accessible_rounded),
  MenuItem(
      title: 'InfiniteScroll y Pull',
      subtitle: 'Listas infinitas y pull to refresh',
      link: '/infinite',
      icon: Icons.list_alt_rounded),
  MenuItem(
      title: 'Cambiar tema',
      subtitle: 'Cambiar tema de la aplicación',
      link: '/theme-changer',
      icon: Icons.color_lens_outlined),
];
