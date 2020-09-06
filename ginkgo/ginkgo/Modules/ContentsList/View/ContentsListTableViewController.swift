//
//  ContentsListTableViewController.swift
//  ginkgo
//
//  Created by Junichi Shimazaki on 2019/01/20.
//  Copyright © 2019 JSBlueSky. All rights reserved.
//

import UIKit

class ContentsListTableViewController: UIViewController {

    @IBOutlet weak var contentsListTableView: UITableView!
    
    var contents: [MapContents] = [] {
        didSet {
            contentsListTableView.reloadData()
        }
    }
    
    var presenter: ContentsListPresentation!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    fileprivate func setupView() {
        contentsListTableView.dataSource = self
        contentsListTableView.delegate = self
        contentsListTableView.register(ContentsListTableCell.self, forCellReuseIdentifier: "cell")
    }
    
}

extension ContentsListTableViewController: ContentsListView {

    func showNoContentsScreen() {
        
    }
    
    func showContents(_ contents: [MapContents]) {
        self.contents = contents
    }

}

extension ContentsListTableViewController: UITableViewDataSource, UITableViewDelegate {

    func numberOfSections(in tableView: UITableView) -> Int {
        return contents.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ContentsListTableCell
        
        let contents = self.contents[indexPath.section]

        cell.selectionStyle = .none
        cell.setup(contents)

        return cell
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return UIView()
    }

    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return UIView()
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // ContentsDetailへ
    }

}
