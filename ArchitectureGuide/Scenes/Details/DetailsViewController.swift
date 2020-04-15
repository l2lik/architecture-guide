//
//  DetailsViewController.swift
//  ArchitectureHelper
//
//  Created by Aleksei Shmyrov on 15.04.2020.
//  Copyright © 2020 Aleksei Shmyrov. All rights reserved.
//

import UIKit
import ReactiveSwift

class DetailsViewController: UIViewController {
	// MARK: - Public properties
	var viewModel: DetailsViewModeling
	
	// MARK: - Private properties
	
	// MARK: - Outlets
	@IBOutlet private var titleLabel: UILabel!
	
	init(viewModel: DetailsViewModeling) {
		self.viewModel = viewModel
		super.init(nibName: nil, bundle: nil)
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
    override func viewDidLoad() {
        super.viewDidLoad()

		
    }
}
