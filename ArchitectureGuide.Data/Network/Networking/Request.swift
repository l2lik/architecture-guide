//
//  Request.swift
//
//  Created by Aleksey Shmyrov on 25.02.2018.
//  Copyright © 2018 Alexey_Shmyrov. All rights reserved.
//

import Foundation

/// This is the Request protocol you may implement as enum
/// or as a classic class object for each kind of request.
protocol Request {
	/// Relative path of the endpoint we want to call (ie. `/users/login`)
	var path: String { get }
	
	/// This define the HTTP method we should use to perform the call
	/// We have defined it inside an String based enum called `HTTPMethod`
	/// just for clarity
	var method: HTTPMethod { get }
	
	/// These are the parameters we need to send along with the call.
	/// Params can be passed into the body or along with the URL
	var parameters: [String: Any]? { get }
	
	/// You may also define a list of headers to pass along with each request.
	var headers: [String: String]? { get }
	
	/// What kind of data we expect as response
	var dataType: DataType { get }
}

extension Request {
	public var parameters: [String: Any]? {
		return nil
	}
	
	public var headers: [String: String]? {
		return nil
	}
	
	public var dataType: DataType {
		return .json
	}
}

/// This define the type of HTTP method used to perform the request
enum HTTPMethod: String {
	case post = "POST"
	case put = "PUT"
	case get = "GET"
	case delete = "DELETE"
	case patch = "PATCH"
}

/// Define the type of data we expect as response
public enum DataType {
	case json
	case data
}
