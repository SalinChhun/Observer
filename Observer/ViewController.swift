//
//  ViewController.swift
//  Observer
//
//  Created by PVH_002 on 29/9/23.
//

import UIKit

class ViewController: UIViewController, Observerble {
    
    let observerController = ObserverController.shared
    override func viewDidLoad() {
        super.viewDidLoad()
        observerController.addObserver(observer: self)
    }
    
    func changeBg() {
        view.backgroundColor = .red
        print("ViewController get notification")
    }
    
    @IBAction func post(_ sender: Any) {
        observerController.notify()
    }
    
}

