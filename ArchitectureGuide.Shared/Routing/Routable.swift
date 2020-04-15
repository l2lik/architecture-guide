//
//  Routable.swift
//
//  Created by Aleksey Shmyrov on 16/02/2019.
//  Copyright © 2019 Aleksey Shmyrov. All rights reserved.
//

import UIKit

protocol Routable {
	var navigationController: UINavigationController { get }
	var rootViewController: UIViewController? { get }
	
	func present(_ scene: Presentable)
	func present(_ scene: Presentable, animated: Bool)
	
	func dismissScene()
	func dismissScene(animated: Bool, completion: (() -> Void)?)
	
	func push(_ scene: Presentable)
	func push(_ scene: Presentable, animated: Bool)
	func push(_ scene: Presentable, animated: Bool, completion: (() -> Void)?)
	
	func popScene()
	func popScene(animated: Bool)
	
	func popToRootScene(animated: Bool)
	
	func setRootScene(_ scene: Presentable)
	func setRootScene(_ scene: Presentable, hideBar: Bool)
}
