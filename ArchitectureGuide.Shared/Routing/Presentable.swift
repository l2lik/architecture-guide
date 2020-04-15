//
//  Presentable.swift
//
//  Created by Aleksey Shmyrov on 16/02/2019.
//  Copyright © 2019 Aleksey Shmyrov. All rights reserved.
//

import UIKit

protocol Presentable: class {
	var toPresent: UIViewController { get }
}

extension UIViewController: Presentable {
	var toPresent: UIViewController {
		return self
	}
}
