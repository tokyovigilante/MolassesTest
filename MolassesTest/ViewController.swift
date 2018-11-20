
//
//  WindowController.swift
//  MolassesTest
//
//  Created by Ryan Walklin on 20/11/18.
//  Copyright © 2018 Ryan Walklin. All rights reserved.
//

import Cocoa

class MainViewController: NSViewController {
    
    private let mainView = NSView()
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override init(nibName nibNameOrNil: NSNib.Name?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    override func loadView() {
        self.view = mainView
    }
}
