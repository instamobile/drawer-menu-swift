//
//  ViewController.swift
//  DrawerMenuExample
//
//  Created by Florian Marcu on 1/17/18.
//  Copyright © 2018 iOS App Templates. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let mainVC = UIViewController()
    mainVC.view.backgroundColor = .red
    
    let rootController = RootViewController(mainViewController: mainVC, topNavigationLeftImage: UIImage(named: "hamburger-menu-icon"))
    let menuVC = MenuViewController()
    menuVC.view.backgroundColor = .green
    
    let drawerVC = DrawerController(rootViewController: rootController, menuController: menuVC)
    self.addChild(drawerVC)
    view.addSubview(drawerVC.view)
    drawerVC.didMove(toParent: self)
  }
}
