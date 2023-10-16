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
];
