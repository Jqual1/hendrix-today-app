import 'package:flutter/material.dart';

import 'package:hendrix_today_app/objects/app_state.dart';
import 'package:hendrix_today_app/objects/event.dart';
import 'package:hendrix_today_app/widgets/event_dialog.dart';

import 'package:provider/provider.dart';

/// A [Card]-like widget that displays defining information for an [Event].
///
/// An [Event]'s title and date is displayed in text, while the [EventType] is
/// suggested by the color coding on the left border of the widget. Conforms to
/// the Hendrix College style guide.
class EventCard extends StatelessWidget {
  const EventCard({super.key, required this.event});

  /// The [Event] from which to display information.
  final Event event;

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    final isRead = appState.hasBeenRead(event.id);
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0.0),
      ),
      child: Container(
        // From https://www.flutterbeads.com/card-border-in-flutter/
        decoration: BoxDecoration(
          border: Border(
            left: BorderSide(color: event.eventType.color(context), width: 10),
          ),
        ),
        child: ListTile(
          title: Text(
            event.title.toString(),
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          subtitle: Text(
            event.displayDate(),
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => EventDialog(event: event),
            );
            appState.markEventAsRead(event);
          },
          trailing: isRead
              ? null
              : Icon(Icons.priority_high,
                  color: Theme.of(context).colorScheme.primary),
        ),
      ),
    );
  }
}
