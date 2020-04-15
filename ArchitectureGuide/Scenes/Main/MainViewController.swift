//
//  MainViewController.swift
//  ArchitectureHelper
//
//  Created by Aleksei Shmyrov on 15.04.2020.
//  Copyright © 2020 Aleksei Shmyrov. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
	// MARK: - Public properties
	var viewModel: MainViewModelOutput
	
	// MARK: - Private properties
	
	// MARK: - Outlets
	@IBOutlet private var collectionView: UICollectionView!
	
	init(viewModel: MainViewModelOutput) {
		self.viewModel = viewModel
		super.init(nibName: nil, bundle: nil)
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
//		viewModel.movies.signal.observe { (<#Signal<[Movie], Never>.Event#>) in
//			<#code#>
//		}
    }
}
