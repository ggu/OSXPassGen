# OSXPassGen
A password generator for OS X that resides in the menu bar.

# The Code
- AppDelegate.swift: manages the popover view controller (PassGenViewController and status button in the menubar

- PassGenViewController.swift: holds the references to the UI

- PassGenViewController.xib: the popover menu

- Password.swift: the struct holding the logic for generating passwords

- Constants.swift: holds constant values (currently just strings, like tooltip)

- Utility.swift: holds static helper functions

# Screenshots
![Image of Sample1]
(https://github.com/ggu/OSXPassGen/blob/master/sample1.png)

![Image of Sample2]
(https://github.com/ggu/OSXPassGen/blob/master/sample2.png)

# To Do
- add 'quit' button
- improve the password generation algorithm (incorporate a dictionary? make the passwords less easily brute forceable)
- improve the popover UI (fonts? colors?)
- add settings button to manage advanced settings in a separate window (like remembering characters to remove)
