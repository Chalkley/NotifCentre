//
//  ViewController.swift
//  NotifCentre
//
//  Created by Jason Chalkley on 31/01/2019.
//  Copyright © 2019 Jason Chalkley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func setupUI() {
        let rightNavUtton = UIButton(type: .custom)
        rightNavUtton.setTitle("Notif", for: .normal)
        rightNavUtton.setTitleColor(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), for: .normal)
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: rightNavUtton)
        
    }


}

