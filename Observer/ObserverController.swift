//
//  ObserverController.swift
//  Observer
//
//  Created by PVH_002 on 29/9/23.
//

import Foundation

protocol Observerble {
    func changeBg()
}

class ObserverController {
    static let shared = ObserverController()
    private init() {}
    
    var observers: [Observerble] = []
    
    func addObserver(observer: Observerble) {
        observers.append(observer)
    }
    
    func notify() {
        observers.forEach({ observer in
            observer.changeBg()
        })
    }
}
