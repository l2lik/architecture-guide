//
//  Coordinatable.swift
//
//  Created by Aleksey Shmyrov on 16/02/2019.
//  Copyright © 2019 Aleksey Shmyrov. All rights reserved.
//

import Foundation

protocol Coordinatable: class {
	
	/// Calls when the flow has finished.
	var finishFlow: (() -> Void)? { get set }
	
	/// Starts coordinator's flow.
	/// - note: Must be overriden by a subclass.
	func start()
}
