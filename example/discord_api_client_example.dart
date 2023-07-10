import 'package:discord_api_client/discord_api_client.dart';

import '../test/credentials.dart' as credentials;

void main() async {
  final client = DiscordClient(
      applicationId: credentials.applicationId,
      guildId: credentials.guildId,
      botToken: credentials.botToken,
      version: 8);

  // Create a Message Command
  // In the server we can then right-click a message and select "Run Dart code"
  var messageCommand = ApplicationCommand(
    type: ApplicationCommandType.message,
    name: 'Run Dart code',
    description: '',
  );

  var response1 = await client.createCommand(messageCommand);
  print(response1.body);

  // Create a Slash Command
  // In the server we can then enter "/run" and enter a string
  var slashCommand = ApplicationCommand(
    type: ApplicationCommandType.chatInput,
    name: 'run',
    description:
        'Enter a Notion page id to migrate into the current channel...',
  );

  var response2 = await client.createCommand(slashCommand);
  print(response2.body);

  // Get info on the current set of commands that have been created
  var response3 = await client.getCommands();
  print(response3.body);

  // Delete a command
  await client.deletCommand('The id can be found using "client.getCommands()"');
}
