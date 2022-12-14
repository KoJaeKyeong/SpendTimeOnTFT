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

    private func showAlert() {
        let alertController = UIAlertController(title: nil,
                                                message: "소환사명을 입력해주세요",
                                                preferredStyle: .alert)
        let action = UIAlertAction(title: "확인", style: .cancel)

        alertController.addAction(action)

        present(alertController, animated: true)
    }
}

private extension SearchViewController {
    func configure() {
        configureViews()
    }

    func configureViews() {
        searchBar.placeholder = "소환사명을 입력해주세요."
    }

    func configureDelegates() {
        searchBar.delegate = self
    }
}

extension SearchViewController: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        let storyboard = UIStoryboard(name: "Result", bundle: nil)
        guard let text = searchBar.text,
              let viewController = storyboard.instantiateViewController(
                withIdentifier: "Result"
              ) as? ResultViewController else { return }

        if !text.isEmpty {
            viewController.summonerName = text

            present(viewController, animated: true)
        } else {
            showAlert()
        }
    }
}
