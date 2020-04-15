//
//  Dispatcher.swift
//  SpeakieForKids
//
//  Created by Aleksey Shmyrov on 25.02.2018.
//  Copyright © 2018 Alexey_Shmyrov. All rights reserved.
//

import Foundation
import ReactiveSwift

/// Environment is a struct which encapsulate all the informations
/// we need to perform a setup of our Networking Layer.
/// In this example we just define the name of the environment (ie. Production,
/// Test Environment #1 and so on) and the base url to complete requests.
/// You may also want to include any SSL certificate or wethever you need.
public protocol Environment {
	
	/// Base URL of the environment
	var host: String { get }
	
	/// This is the list of common headers which will be part of each Request
	/// Some headers value maybe overwritten by Request's own headers
	var headers: [String: String] { get }
	
	var apiKey: String { get }
	
	/// Cache policy
	var cachePolicy: URLRequest.CachePolicy { get }
}

extension Environment {
	public var headers: [String: String] {
		return [:]
	}
	
	public var cachePolicy: URLRequest.CachePolicy {
		return .reloadIgnoringLocalAndRemoteCacheData
	}
}

/// The dispatcher is responsible to execute a Request
/// by calling the underlyning layer (maybe URLSession, Alamofire
/// or just a fake dispatcher which return mocked results).
/// As output for a Request it should provide a Response.
protocol Dispatcher {
	var environment: Environment { get }
	/// Configure the dispatcher with an environment
	///
	/// - Parameter environment: environment configuration
	init(environment: Environment)
	
	/// This function execute the request and provide a Promise
	/// with the response.
	///
	/// - Parameter request: request to execute
	func execute(request: Request) -> SignalProducer<Response, Never>
}

