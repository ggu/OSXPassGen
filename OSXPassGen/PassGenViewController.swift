//
//  PassGenViewController.swift
//  OSXPassGen
//
//  Created by Gabriel Uribe on 12/11/15.
//

import Cocoa

class PassGenViewController: NSViewController
{
  @IBOutlet weak var lengthTextField: NSTextField!
  @IBOutlet weak var charsToExcludeTextField: NSTextField!
  @IBOutlet weak var passwordScrollView: NSScrollView!
  @IBOutlet weak var passwordLabel: NSTextField!
  
  override func viewDidLoad()
  {
    super.viewDidLoad()
    // to check if Dark Mode is enabled. May use this to improve UX
    //let appearance = NSUserDefaults.standardUserDefaults().stringForKey("AppleInterfaceStyle")
  }
  
  @IBAction func goButtonAction(sender: AnyObject)
  {
    let password = Password.generate(lengthTextField.integerValue, toExclude: charsToExcludeTextField.stringValue)
    passwordLabel.stringValue = password
    passwordLabel.sizeToFit()
  }
}
