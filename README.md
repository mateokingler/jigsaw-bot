# _jigsaw-bot_
jigsaw-bot is a _lightweight_ lua script for the money making IOS app, "Jigsaw Money". Using the Cydia package, "AutoTouch", it emulates user gestures automating the process of clicking through/watching the ADs.

Currently only supports iPhone 5/5S/5C/5SE

## Usage/Dependencies
__NOTE: Requires a jailbroken iOS device with the app store alternative, "Cydia" installed.__

1. Download the Cydia package, "Autotouch" from the bigboss repository or add their self-built repository: http://apt.autotouch.net (More timely updates)
2. Go to the newly downloaded Autotouch application and navigate to ```Settings --> Enable web server```. Then go to the address provided **on a desktop browser**.
3. Download the *jigsaw-bot.lua* file from this repository and upload it to your device via the browser autotouch dashboard.
4. On your iOS device, navigate to the Autotouch application and tap on the 'I' symbol next to the *jigsaw-bot.lua* script.
5. Go to ```Player Settings --> Trigger with Activator```. Then bind the script to whatever action you wish.
6. Finally, navigate to the JigsawMoney application and run the script.

Recommendations:
* Disable all notifications ```Settings --> Notifications --> CHOOSE APP --> DISABLE "Allow notifications"```
* Disable Auto-Lock ```Settings --> Display & Brightness --> Auto-Lock --> SELECT "Never"```
* Turn off Low Power Mode ```Settings --> Battery --> DISABLE "Low Power Mode"```
* Make sure it has a charging source or sufficient battery
* Make sure you have a stable internet connection, works best on Wi-Fi

## Todo
_jigsaw-bot_ is currently in development, but is going to support the following:
* Support for iPhone 6/6S/7/7+ (Currently only supports iPhone 5/5S/5C/SE)
* Faster and more accurate claiming (Current speed: 38 seconds per iteration)
* ~~Option to change how long the claiming process reiterates~~
* ~~Alert the user when triggering the script, and give option to cancel~~
