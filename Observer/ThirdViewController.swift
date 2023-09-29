//
//  ThirdViewController.swift
//  Observer
//
//  Created by PVH_002 on 29/9/23.
//

import UIKit

class ThirdViewController: UIViewController, Observerble {
    
    let observerController = ObserverController.shared
    override func viewDidLoad() {
        super.viewDidLoad()
        observerController.addObserver(observer: self)
    }
    
    func changeBg() {
        view.backgroundColor = .blue
        print("ThirdViewController get notification")
    }
    

}
