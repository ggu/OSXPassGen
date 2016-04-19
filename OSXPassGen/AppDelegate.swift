//
//  AppDelegate.swift
//  OSXPassGen
//
//  Created by Gabriel Uribe on 12/11/15.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
  
  @IBOutlet weak var window: NSWindow!
  
  var eventMonitor: EventMonitor?
  let statusItem = NSStatusBar.systemStatusBar().statusItemWithLength(-2)
  let popover = NSPopover()
  
  func applicationDidFinishLaunching(aNotification: NSNotification) {
    setupStatusButton()
    
    popover.contentViewController = PassGenViewController(nibName: "PassGenViewController", bundle: nil)
    
    eventMonitor = EventMonitor(mask: [.LeftMouseDownMask, .RightMouseDownMask]) { [unowned self] event in
      if self.popover.shown {
        self.closePopover(event)
      }
    }
    
    eventMonitor?.start()
  }
  
  func applicationWillTerminate(aNotification: NSNotification) {
    
  }
  
  // MARK: Helpers
  
  func setupStatusButton() {
    if let button = statusItem.button {
      button.title = statusTitle
      button.toolTip = statusToolTip
      button.action = #selector(AppDelegate.togglePopover(_:))
    }
  }
  
  func togglePopover(sender: AnyObject?) {
    if popover.shown {
      closePopover(sender)
    } else {
      showPopover(sender)
    }
  }
  
  func showPopover(sender: AnyObject?) {
    if let button = statusItem.button {
      popover.showRelativeToRect(button.bounds, ofView: button, preferredEdge: NSRectEdge.MinY)
    }
    
    eventMonitor?.start()
  }
  
  func closePopover(sender: AnyObject?) {
    popover.performClose(sender)
    eventMonitor?.stop()
  }
}
