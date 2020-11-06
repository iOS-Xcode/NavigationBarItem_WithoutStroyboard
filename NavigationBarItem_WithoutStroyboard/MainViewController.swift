//
//  MainViewController.swift
//  NavigationBarItem_WithoutStroyboard
//
//  Created by Seokhyun Kim on 2020-11-06.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = "Home"
        self.view.backgroundColor = .yellow
        
        //Add navitionItem.
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "person.fill"), style: .plain, target: self, action: #selector(goToProfileVC))
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "message.fill"), style: .plain, target: self, action: #selector(goToMessageVC))
    }
    
    @objc fileprivate func goToProfileVC() {
        let profileVC = ProfileViewController()
        navigationController?.pushViewController(profileVC, animated: true)
    }
    
    @objc fileprivate func goToMessageVC() {
        let messageVC = MessageViewController()
        navigationController?.pushViewController(messageVC, animated: true)
    }

}

