//
//  NotifViewController.swift
//  NotifCentre
//
//  Created by Jason Chalkley on 31/01/2019.
//  Copyright © 2019 Jason Chalkley. All rights reserved.
//

import UIKit

extension Notification.Name {
    static let changeColor = Notification.Name(rawValue: "changeColor")
}

class NotifViewController: UIViewController {

    @IBOutlet weak var changeButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
      
    }
    @IBAction func changeTapped(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "changeColor"), object: nil)
        dismiss(animated: true, completion: nil)
        print("Change tapped, notif VC Dismissed.")
    }
    
    func setupUI() {
        let leftNavButton = UIButton(type: .custom)
        leftNavButton.setTitle("Back", for: .normal)
        leftNavButton.setTitleColor(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), for: .normal)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: leftNavButton)
        
        leftNavButton.addTarget(self, action: #selector(NotifViewController.backTapped), for: .touchUpInside)
        
        changeButton.setTitle("Hit me", for: .normal)
        changeButton.titleLabel?.font = UIFont(name: "AvenirNext-Medium", size: 18)
        changeButton.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        changeButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        
    }
    
    @objc func backTapped() {
        dismiss(animated: true, completion: nil)

    }
    


}
