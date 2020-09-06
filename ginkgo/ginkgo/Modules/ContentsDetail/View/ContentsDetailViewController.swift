//
//  ContentsDetailViewController.swift
//  ginkgo
//
//  Created by Junichi Shimazaki on 2019/02/01.
//  Copyright © 2019 JSBlueSky. All rights reserved.
//

import UIKit
import AlamofireImage

class ContentsDetailViewController: UIViewController {

    var presenter: ContentsDetailPresentation!
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var contentsView: UIView!
    @IBOutlet weak var contentsImageView: UIImageView!
    @IBOutlet weak var contentsTitelLabel: UILabel!
    @IBOutlet weak var contentsDetailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter.viewDidLoad()
        self.setupView()
    }
    
    fileprivate func setupView() {
        navigationController!.title = "この場所について"
    }
}

extension ContentsDetailViewController: ContentsDetailView {
    
    func showDetail(contents: MapContents) {
        contentsTitelLabel.text = contents.title
        contentsDetailLabel.text = contents.description
    }
}
