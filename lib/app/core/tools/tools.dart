import 'package:url_launcher/url_launcher.dart';

final Tool tools = Tool();

class Tool {
  Future<void> calling(String parameter) async {
    await launchURL(parameter);
  }

  Future<void> launchURL(String parameter) async {
    if (await canLaunch(parameter)) {
      await launch(parameter);
    } else {
      throw 'Could not launch $parameter';
    }
  }
}
