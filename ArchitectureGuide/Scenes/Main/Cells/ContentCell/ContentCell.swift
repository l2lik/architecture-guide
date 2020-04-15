//
//  ContentCell.swift
//  ArchitectureHelper
//
//  Created by Aleksei Shmyrov on 15.04.2020.
//  Copyright © 2020 Aleksei Shmyrov. All rights reserved.
//

import UIKit

class ContentCell: UICollectionViewCell {
	
	private var viewModel: ContentCellViewModel?

    override func awakeFromNib() {
        super.awakeFromNib()
    }

	func configure(with viewModel: ContentCellViewModel) {
		
	}
}
