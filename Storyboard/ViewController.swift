//
//  ViewController.swift
//  Storyboard
//
//  Created by sycf_ios on 2017/3/21.
//  Copyright © 2017年 shibiao. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    var isShow = Bool()
    @IBOutlet var redView: NSView!
    override func viewDidLoad() {
        super.viewDidLoad()
 
    }

    @IBAction func showOrHide(_ sender: Any) {
        isShow = !isShow
        if isShow {
            view.addSubview(redView)
            redView.wantsLayer = true
            //给redView添加约束
            redViewAddConstraint()
        }else{
            redView.removeFromSuperview()
        }

    }
    func redViewAddConstraint() {
        redView.layer?.backgroundColor = NSColor.red.cgColor
        redView.translatesAutoresizingMaskIntoConstraints = false
        redView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        redView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        redView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        redView.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

