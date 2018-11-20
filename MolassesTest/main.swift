//
//  main.swift
//  MolassesTest
//
//  Created by Ryan Walklin on 20/11/18.
//  Copyright © 2018 Ryan Walklin. All rights reserved.
//

import Cocoa

let delegate = AppDelegate() //alloc main app's delegate class
NSApplication.shared.delegate = delegate //set as app's delegate

let ret = NSApplicationMain(CommandLine.argc, CommandLine.unsafeArgv)

