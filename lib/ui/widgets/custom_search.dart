import 'package:flutter/material.dart';

class CustomSearch extends StatelessWidget {
  final TextEditingController searchController;

  const CustomSearch({required this.searchController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 12),
      child: TextFormField(
        controller: searchController,
        autofocus:
            true, // Fokus langsung ke input saat halaman pertama kali dibuka
        textCapitalization: TextCapitalization.sentences,
        obscureText: false,
        decoration: InputDecoration(
          labelText: 'Search',
          prefixIcon: Icon(Icons.search),
          labelStyle: TextStyle(
            fontFamily: 'Plus Jakarta Sans',
            color: Color(0xFF606A85),
            fontSize: 14,
            letterSpacing: 0,
            fontWeight: FontWeight.w500,
          ),
          hintStyle: TextStyle(
            fontFamily: 'Plus Jakarta Sans',
            color: Color(0xFF606A85),
            fontSize: 14,
            letterSpacing: 0,
            fontWeight: FontWeight.w500,
          ),
          errorStyle: TextStyle(
            fontFamily: 'Plus Jakarta Sans',
            color: Color(0xFFFF5963),
            fontSize: 12,
            letterSpacing: 0,
            fontWeight: FontWeight.w600,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFE5E7EB),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFF6F61EF),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFFF5963),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFFF5963),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          filled: true,
        ),
        style: TextStyle(
          fontFamily: 'Plus Jakarta Sans',
          color: Color(0xFF15161E),
          fontSize: 14,
          letterSpacing: 0,
          fontWeight: FontWeight.w600,
        ),
        cursorColor: Color(0xFF6F61EF),
        onChanged: (value) {
          // Diimplementasikan pada HomePage
        },
      ),
    );
  }
}
