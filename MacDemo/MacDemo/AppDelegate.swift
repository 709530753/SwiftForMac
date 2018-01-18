//
//  AppDelegate.swift
//  MacDemo
//
//  Created by fengxin on 18/01/2018.
//  Copyright © 2018 fengxin. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

  static let kImageMenuStateOn : NSImage = NSImage(named: NSImage.Name(rawValue: "ic_menu"))!
  static let kImageMenuStateOff : NSImage = NSImage(named: NSImage.Name(rawValue: "ic_menu"))!
  let kFeedbackUrl = "https://developer.senlime.com/topic/2"

  @IBOutlet weak var statusMenu: NSMenu!
  var statusItem: NSStatusItem!
  static let kStatusItemIconWidth: CGFloat = 20

  func applicationDidFinishLaunching(_ aNotification: Notification) {

    statusItem = NSStatusBar.system.statusItem(withLength: AppDelegate.kStatusItemIconWidth)
    statusItem.image = AppDelegate.kImageMenuStateOn
    statusItem.image?.isTemplate = true
    statusItem.menu = statusMenu

  }
  @IBAction func Quit(_ sender: Any) {
      print("quit")
    NSWorkspace.shared.open(URL(string:kFeedbackUrl)!)
  }
  
  func applicationWillTerminate(_ aNotification: Notification) {
    // Insert code here to tear down your application
  }


}

