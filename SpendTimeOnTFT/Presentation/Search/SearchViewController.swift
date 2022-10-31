//
//  ViewController.swift
//  SpendTimeOnTFT
//
//  Created by Jae Kyeong Ko on 2022/10/28.
//

import UIKit

final class SearchViewController: UIViewController {
    @IBOutlet weak var searchBar: UISearchBar!

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
}

private extension SearchViewController {
    func configure() {
        configureViews()
    }

    func configureViews() {
        searchBar.placeholder = "소환사명을 입력해주세요."
    }
}
