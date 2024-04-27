import 'package:asterisk/src/definitions/ws_message.dart';

import '../definitions/playback.dart';
import 'object.dart';

/// A playback of media on a channel or bridge.
///
/// The [events] stream can be used to determine when the playback has
/// completed.
final class LivePlayback extends LiveObject<Playback> {
  LivePlayback(super.asterisk, super.latest, super.subscribedByDefault);

  @override
  void updateFromEvent(Event event) {
    if (event case HasPlayback(:final playback)) {
      update(playback);
    }
  }
}
