
import 'package:flutter/material.dart' as material;

class SearchBar extends material.StatelessWidget {
  final String hintText;
  final material.Color backgroundColor;
  final double elevation;
  final material.ValueChanged<String> onChanged;

  const SearchBar({super.key,
    this.hintText = "Search your oshi",
    this.backgroundColor = material.Colors.transparent,
    this.elevation = 0.0,
    required this.onChanged
  });

  @override
  material.Widget build(material.BuildContext context) {
    return material.SearchBar(
      hintText: "Search your oshi",
      backgroundColor: material.MaterialStatePropertyAll(backgroundColor),
      overlayColor: material.MaterialStatePropertyAll(backgroundColor),
      elevation: material.MaterialStatePropertyAll(elevation),
      leading: const material.Icon(material.Icons.search),
      onChanged: onChanged
    );
  }
}