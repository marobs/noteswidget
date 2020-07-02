//
//  ViewController.swift
//  noteswidget
//
//  Created by Michael Roberts on 7/1/20.
//  Copyright © 2020 Michael Roberts. All rights reserved.
//

import Cocoa

// Manages my view with the text field inside
class ViewController: NSViewController {

    @IBOutlet var bigOlTextField: NSTextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // did load, will appear, did appear, will disappear, etc.
        
        // Use file manager to load data
        // Make the view control the delegate for the text field
        //    A design patter on iOS wher you delegate some behavior

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

extension ViewController: NSTextViewDelegate {
    
    
    
    // Delegating some of the text view behavior to this class
    // Textview will call this class with callbacks
    // We want to hook up the "something changed in this UI Object" callback in here
    func textDidChange(_ notification: Notification) {
        print(bigOlTextField.string)
    }
}
