import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData incon;

  const MenuItem({
    required this.title,
    required this.subtitle,
    required this.link,
    required this.incon,
  });
}

const menuItems = [
  MenuItem(
    title: 'Bottones',
    subtitle: 'Varios Botones',
    link: '/buttons',
    incon: Icons.radio_button_checked,
  ),
  MenuItem(
    title: 'Tarjetas',
    subtitle: 'Tarjeta estilizada',
    link: '/cards',
    incon: Icons.card_membership_outlined,
  ),
  MenuItem(
    title: 'Progres',
    subtitle: 'Indicadores de progreso',
    link: '/progress',
    incon: Icons.refresh,
  ),
  MenuItem(
    title: 'Snackbars y Dialogos',
    subtitle: 'Sackbars y Dialogos',
    link: '/snackbars_dialogs',
    incon: Icons.info_outline,
  ),
  MenuItem(
    title: 'Animated Container',
    subtitle: 'Animacion de su forma y color',
    link: '/animated',
    incon: Icons.move_down_rounded,
  ),
  MenuItem(
      title: 'UI Controls + Tiles',
      subtitle: 'Una serie de controles de Flutter',
      link: '/ui-controls',
      incon: Icons.car_rental_outlined),
  MenuItem(
      title: 'Introducción a la aplicación',
      subtitle: 'Pequeño tutorial introductorio',
      link: '/tutorial',
      incon: Icons.accessible_rounded),
];
