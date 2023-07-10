# discord_api_client

*An API Client for Discord, written in Dart.*

## Features

A `DiscordClient` can be used to:

- Create Application Commands
  - Message commands can be selected by right clicking a message and selecting "Apps" then the name of the command
  - Slash commands can be used by typing "/" then the name of the command
- Get info on the current set of application commands
- Delete an application command

## Getting started

See `example/discord_api_client_example.dart` for how to create and call methods on a `DiscordClient`.

## Additional information

### Missing files

To run the tests and/or example code, add `test/credentials.dart` with:

```dart
const guildId = '...';
const applicationId = '...';
const botToken = '...';
````

For `guildId`, open Discord, R-click on your server image and select Copy ID.

For the others, go to <https://discordapp.com/developers/applications/>, select the relevant application, then:

- `applicationId`: “General Information” → “APPLICATION ID”
- `botToken`: “Bot” → “Reset Token” → “Copy”
