//
//  MainTapBarController.swift
//  Test Messenger
//
//  Created by Алексей Макеров on 18.11.2020.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    //MARK: viewDidLoad()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.tintColor = Colors.mainTurquoise
        
        let peopleViewController = PeopleViewController()
        let chatViewController = ChatsViewController()
        let listViewController = ListViewController()
        let contactViewController = ContactsViewController()
        let settingsViewController = SettingsViewController()
        
        let boldConfig = UIImage.SymbolConfiguration(weight: .medium)
        
        let peopleImage = UIImage(systemName: "person.3", withConfiguration: boldConfig)!
        let contactsImage = UIImage(systemName: "person.crop.circle.fill", withConfiguration: boldConfig)!
        let tChatImage = UIImage(systemName: "message.fill", withConfiguration: boldConfig)!
        let contactImage = UIImage(systemName: "person.2.fill", withConfiguration: boldConfig)!
        let settingsImage = UIImage(systemName: "gear", withConfiguration: boldConfig)!
        
        viewControllers = [
            generatyNavigationController(rootViewController: peopleViewController, title: "Test-People", image: peopleImage),
            generatyNavigationController(rootViewController: contactViewController, title: "Контакты", image: contactImage),
            generatyNavigationController(rootViewController: chatViewController, title: "Чаты", image: contactsImage),
            generatyNavigationController(rootViewController: listViewController, title: "Test-Чаты", image: tChatImage),
            generatyNavigationController(rootViewController: settingsViewController, title: "Настройки", image: settingsImage)
        ]
    }
    
    
    
    private func generatyNavigationController(rootViewController: UIViewController, title: String, image: UIImage) -> UIViewController {
        let navigationVC = UINavigationController(rootViewController: rootViewController)
        navigationVC.tabBarItem.title = title
        navigationVC.tabBarItem.image = image
        navigationVC.title = title
        return navigationVC
    }
}
