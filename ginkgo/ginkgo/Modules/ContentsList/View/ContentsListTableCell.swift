//
//  ContentsListTableCell.swift
//  ginkgo
//
//  Created by Junichi Shimazaki on 2019/01/20.
//  Copyright © 2019 JSBlueSky. All rights reserved.
//

import UIKit
import AlamofireImage

class ContentsListTableCell: UITableViewCell {
    
    @IBOutlet var contentsImage: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    
    func setup(_ contents: MapContents) {
        // 各Viewにセットする
        titleLabel.text = contents.title
        descriptionLabel.text = contents.description
        
    }
    
}
