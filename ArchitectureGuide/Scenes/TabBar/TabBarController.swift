//
//  TabBarController.swift
//  ArchitectureHelper
//
//  Created by Aleksei Shmyrov on 15.04.2020.
//  Copyright © 2020 Aleksei Shmyrov. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
	var didSelectTab: ((_ index: Int, _ controller: UINavigationController) -> ())?
	
	override func viewDidLoad() {
		super.viewDidLoad()
		tabBar.isTranslucent = false
		delegate = self
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		
		// Перед появленем контроллера на экране, выбираем дефолтовый таб
		if let controller = viewControllers?[selectedIndex] as? UINavigationController {
			didSelectTab?(selectedIndex, controller)
		}
	}
}

extension TabBarController: UITabBarControllerDelegate {
	func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
		if let controller = viewController as? UINavigationController, controller != moreNavigationController {
			didSelectTab?( selectedIndex, controller )
		}
	}
}
