//
//  MainViewModel.swift
//  ArchitectureHelper
//
//  Created by Aleksei Shmyrov on 15.04.2020.
//  Copyright © 2020 Aleksei Shmyrov. All rights reserved.
//

import Foundation
import ReactiveSwift

protocol MainViewModelInput: class {
	func viewLoaded()
}

protocol MainViewModelOutput: class {
	var movies: MutableProperty<[Movie]> { get }
}

typealias MainViewModeling = MainViewModelInput & MainViewModelOutput

class MainViewModel: MainViewModeling {
	let movies: MutableProperty<[Movie]> = MutableProperty([])
	
	private let interactor: MainBusinessLogic
	
	init(interactor: MainBusinessLogic) {
		self.interactor = interactor
	}
	
	func viewLoaded() {
		movies <~ interactor.fetchMovies()
	}
}
