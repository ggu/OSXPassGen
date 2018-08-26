# OSXPassGen
A password generator for macOS that resides in the menu bar. <b>This was not made for serious use, but for learning macOS development.</b>

# The Code
- AppDelegate.swift: manages the popover view controller (PassGenViewController) and status button in the menubar

- PassGenViewController.swift: holds the references to the UI

- PassGenViewController.xib: the popover menu

- Password.swift: the struct holding the logic for generating passwords

- Constants.swift: holds constant values (currently just strings, like tooltip)

- Utility.swift: holds static helper functions

# Screenshots
<img src="https://github.com/ggu/OSXPassGen/blob/master/sample1.png"/>

<img src="https://github.com/ggu/OSXPassGen/blob/master/sample2.png"/>
