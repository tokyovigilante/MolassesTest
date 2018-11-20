//
//  AppDelegate.swift
//  MolassesTest
//
//  Created by Ryan Walklin on 20/11/18.
//  Copyright © 2018 Ryan Walklin. All rights reserved.
//

import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
    
    private let window = NSWindow(contentRect: NSMakeRect(300, 300, 800, 400), styleMask: [.titled, .closable, .resizable, .miniaturizable], backing: NSWindow.BackingStoreType.buffered, defer: true)
    
    private let menu = NSMenu(title: "AppMenu")
    
    let mainViewController = MainViewController()
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        
        NSApp.mainMenu = menu
        let appMenu = NSMenu(title: "AppMenu")
        let appMenuItem = menu.addItem(withTitle: "AppMenu", action: nil, keyEquivalent: "")
        menu.setSubmenu(appMenu, for: appMenuItem)
        let executableName = ProcessInfo.processInfo.processName
        _ = appMenu.addItem(withTitle: NSLocalizedString("Quit \(executableName)", comment: "Quit \(executableName)"), action: #selector(NSApp.terminate(_:)), keyEquivalent: "q")
        
        // main window
        let view = mainViewController.view
        let content = window.contentView! as NSView
        content.addSubview(view)
        
        // Molasses in debugger
        for _ in 1..<1000 {
            print("Waiting")
        }
        
        // seems ok
        DispatchQueue.global(qos: .background).async {
            for _ in 1..<1000 {
                print("Waiting")
            }
        }
        
        
        
        view.topAnchor.constraint(equalTo: content.topAnchor).isActive = true
        view.leftAnchor.constraint(equalTo: content.leftAnchor).isActive = true
        view.rightAnchor.constraint(equalTo: content.rightAnchor).isActive = true
        view.bottomAnchor.constraint(equalTo: content.bottomAnchor).isActive = true
        view.translatesAutoresizingMaskIntoConstraints = false
        window.makeKeyAndOrderFront(nil)
        
    }
    
}
