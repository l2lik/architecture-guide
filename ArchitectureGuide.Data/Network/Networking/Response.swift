//
//  Response.swift
//
//  Created by Aleksey Shmyrov on 25.02.2018.
//  Copyright © 2018 Alexey_Shmyrov. All rights reserved.
//

import Foundation

public enum Response {
	case json(Data)
	case data(Data)
	case error(Error)
	
	init(_ response: (r: HTTPURLResponse?, data: Data?, error: Error?), for request: Request) {
		if let error = response.error, let r = response.r, !(200..<300).contains(r.statusCode) {
			self = .error(error)
			return
		}
		
		guard let data = response.data else {
			self = .error(NetworkError.noData)
			return
		}
		
		switch request.dataType {
		case .data:
			self = .data(data)
		case .json:
			self = .json(data)
		}
	}
}
