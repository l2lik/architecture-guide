//
//  DetailsViewModel.swift
//  ArchitectureHelper
//
//  Created by Aleksei Shmyrov on 15.04.2020.
//  Copyright © 2020 Aleksei Shmyrov. All rights reserved.
//

import Foundation
import ReactiveSwift

protocol DetailsViewModelInput: class {
	func viewLoaded()
}

protocol DetailsViewModelOutput: class {
	var movie: MutableProperty<Movie?> { get }
}

typealias DetailsViewModeling = DetailsViewModelInput & DetailsViewModelOutput

class DetailsViewModel: DetailsViewModeling {
	var movie: MutableProperty<Movie?> = MutableProperty(nil)
	
	init() {
		
	}
	
	func viewLoaded() {
		
	}
}
