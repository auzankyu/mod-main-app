//
//  ViewController.swift
//  AppMain
//
//  Created by Auzan Lazuardi on 29/02/24.
//

import UIKit
import ModuleA
import ModuleC

class ViewController: UIViewController {
    let modA = ModuleA()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .gray
        modA.getModuleA()
        ModuleC.shared.getData()
    }


}

