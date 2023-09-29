//
//  SecondViewController.swift
//  Observer
//
//  Created by PVH_002 on 29/9/23.
//

import UIKit

class SecondViewController: UIViewController ,Observerble {
    
    let observerController = ObserverController.shared
    override func viewDidLoad() {
        super.viewDidLoad()
        observerController.addObserver(observer: self)
    }
    
    func changeBg() {
        view.backgroundColor = .systemPink
        print("SecondViewController get notification")
    }
    

}
