import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/authentication_provider.dart';

class EventDetailsScreen extends StatefulWidget {
  static const path = "event-details/:id";
  static const name = "event-details";

  final String id;
  final String? code;

  const EventDetailsScreen({super.key, required this.id, this.code});

  @override
  State<EventDetailsScreen> createState() => _EventDetailsScreenState();
}

class _EventDetailsScreenState extends State<EventDetailsScreen> {
  AuthenticationProvider? _authenticationProvider;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero).then(
      (value) {
        _authenticationProvider =
            Provider.of<AuthenticationProvider>(context, listen: false);
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
