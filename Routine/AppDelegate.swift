//
//  AppDelegate.swift
//  today
//
//  Created by thmsbfft on 8/8/18.
//  Copyright © 2018 thmsbfft. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var preferencesController: PreferencesWindowController?
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    @IBAction func showPreferences(_ sender: Any) {
        if !(preferencesController != nil) {
            preferencesController!.showWindow(sender)
        }
    }

    @IBAction func onYesterday(_ sender: Any) {
        if let vc = NSApplication.shared.mainWindow?.contentViewController as? TodayViewController {
            vc.files.browser.selectRowIndexes(IndexSet(integer: 0), byExtendingSelection: false)
        }
    }
    
    @IBAction func onToday(_ sender: Any) {
        if let vc = NSApplication.shared.mainWindow?.contentViewController as? TodayViewController {
            vc.files.browser.selectRowIndexes(IndexSet(integer: 1), byExtendingSelection: false)
        }
    }
    
    @IBAction func onTomorrow(_ sender: Any) {
        if let vc = NSApplication.shared.mainWindow?.contentViewController as? TodayViewController {
            vc.files.browser.selectRowIndexes(IndexSet(integer: 2), byExtendingSelection: false)
        }
    }
    
    @IBAction func onSomeday(_ sender: Any) {
        if let vc = NSApplication.shared.mainWindow?.contentViewController as? TodayViewController {
            vc.files.browser.selectRowIndexes(IndexSet(integer: 3), byExtendingSelection: false)
        }
    }
    
}

