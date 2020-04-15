//
//  MovieRequests.swift
//  ArchitectureHelper
//
//  Created by Aleksei Shmyrov on 15.04.2020.
//  Copyright © 2020 Aleksei Shmyrov. All rights reserved.
//

import Foundation

enum MovieRequests: Request {
	case all
	
	var path: String {
		switch self {
		case .all:
			return "/movies"
		}
	}
	
	var method: HTTPMethod {
		switch self {
		case .all:
			return .get
		}
	}
}

struct GetAllMoviesTask: NetworkOperation {
	typealias Output = [MovieDTO]
	
	var request: Request {
		return MovieRequests.all
	}
}
