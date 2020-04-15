//
//  MainInteractor.swift
//  ArchitectureHelper
//
//  Created by Aleksei Shmyrov on 15.04.2020.
//  Copyright © 2020 Aleksei Shmyrov. All rights reserved.
//

import Foundation
import ReactiveSwift

protocol MainBusinessLogic: class {
	func fetchMovies() -> SignalProducer<[Movie], Never>
}

class MainInteractor {
	private let networkDispatcher: Dispatcher
	
	init(networkDispatcher: Dispatcher) {
		self.networkDispatcher = networkDispatcher
	}
}

extension MainInteractor: MainBusinessLogic {
	func fetchMovies() -> SignalProducer<[Movie], Never> {
		return GetAllMoviesTask().execute(in: networkDispatcher).map {
			return $0!.map { Movie(title: $0.title) }
		}
	}
}
