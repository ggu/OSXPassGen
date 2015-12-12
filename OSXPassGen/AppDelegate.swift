//
//  AppDelegate.swift
//  OSXPassGen
//
//  Created by Gabriel Uribe on 12/11/15.
//  Copyright © 2015 Gabriel Uribe. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

  @IBOutlet weak var window: NSWindow!

  let statusItem = NSStatusBar.systemStatusBar().statusItemWithLength(-2)
  
  let popover = NSPopover()

  func applicationDidFinishLaunching(aNotification: NSNotification)
  {
    setupStatusButton()
    
    popover.contentViewController = PassGenViewController(nibName: "PassGenViewController", bundle: nil)
  }

  func applicationWillTerminate(aNotification: NSNotification)
  {
    
  }
  
  // MARK: Helpers

  func setupStatusButton()
  {
    if let button = statusItem.button
    {
      button.title = statusTitle
      button.toolTip = statusToolTip
      button.action = Selector("togglePopover:")
    }
  }
  
  func togglePopover(sender: AnyObject?)
  {
    if popover.shown {
      closePopover(sender)
    } else {
      showPopover(sender)
    }
  }
  
  func showPopover(sender: AnyObject?)
  {
    if let button = statusItem.button
    {
      popover.showRelativeToRect(button.bounds, ofView: button, preferredEdge: NSRectEdge.MinY)
    }
  }
  
  func closePopover(sender: AnyObject?)
  {
    popover.performClose(sender)
  }


}

