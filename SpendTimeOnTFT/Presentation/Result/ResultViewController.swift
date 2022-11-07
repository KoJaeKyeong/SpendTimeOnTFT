//
//  ResultViewController.swift
//  SpendTimeOnTFT
//
//  Created by Jae Kyeong Ko on 2022/10/28.
//

import UIKit

final class ResultViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var stackView: UIStackView!
    
    var summonerName: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
}

private extension ResultViewController {
    func configure() {
        configureViews()
    }

    func configureViews() {
        nameLabel.text = summonerName
    }
}
