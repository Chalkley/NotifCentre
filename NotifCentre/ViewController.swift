//
//  ViewController.swift
//  NotifCentre
//
//  Created by Jason Chalkley on 31/01/2019.
//  Copyright © 2019 Jason Chalkley. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPopoverPresentationControllerDelegate {

    var randomColor : [UIColor]?
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        randomColor =  [#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1), #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1), #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1), #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1), #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1), #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1), #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)]
        NotificationCenter.default.addObserver(self, selector: #selector(self.changeBG), name: NSNotification.Name(rawValue: "changeColor"), object: nil)
        
        setupUI()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @objc func changeBG() {
        if let random = randomColor!.randomElement() {
            view.backgroundColor = random
            
        }
    }
    
    func setupUI() {
        let rightNavUtton = UIButton(type: .custom)
        rightNavUtton.setTitle("Notif", for: .normal)
        rightNavUtton.setTitleColor(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), for: .normal)
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: rightNavUtton)
        
        rightNavUtton.addTarget(self, action: #selector(self.navTapped), for: .touchUpInside)
        
    }

    @objc func navTapped() {
        let popoverContent = self.storyboard?.instantiateViewController(withIdentifier: "NotifViewController") as! NotifViewController
        let nav = UINavigationController(rootViewController: popoverContent)
        nav.modalPresentationStyle = UIModalPresentationStyle.popover
        let popover = nav.popoverPresentationController
        popoverContent.preferredContentSize = CGSize(width: 300, height: 300)
        popover!.delegate = self
        popover!.sourceView = self.view
        popover?.sourceRect = CGRect(x: 100, y: 100, width: 0, height: 0)
        
        self.present(nav, animated: true, completion: nil)
        
    }

}

