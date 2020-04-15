//
//  Operation.swift
//  SpeakieForKids
//
//  Created by Aleksey Shmyrov on 25.02.2018.
//  Copyright © 2018 Alexey_Shmyrov. All rights reserved.
//

import Foundation
import ReactiveSwift

protocol NetworkOperation {
	associatedtype Output: Codable
	
	/// Request to execute
	var request: Request { get }
	
	/// Execute request in passed dispatcher
	///
	/// - Parameter dispatcher: dispatcher
	/// - Returns: a promise
	func execute(in dispatcher: Dispatcher) -> SignalProducer<Output?, Never>
}

extension NetworkOperation {
	private var data: String {
		return """
			{
				"title": "Карты, деньги, два ствола",
				"title": "Большой куш",
				"title": "Джентельмены",
			}
		"""
	}
	
	@discardableResult
	func execute(in dispatcher: Dispatcher) -> SignalProducer<Output?, Never> {
		return dispatcher.execute(request: request).map { response -> Output? in
			let jsonDecoder = JSONDecoder()
			jsonDecoder.dateDecodingStrategy = .iso8601
			let responseObject = try? jsonDecoder.decode(Output.self, from: self.data.data(using: .utf8)!)
			return responseObject
		}
	}
}
