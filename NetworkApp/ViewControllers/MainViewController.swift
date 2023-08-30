//
//  ViewController.swift
//  NetworkApp
//
//  Created by Arseniy Oksenoyt on 8/29/23.
//

import UIKit

class MainViewController: UIViewController {

    private let jsonUlr = "https://hp-api.onrender.com/api/characters"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func fetchButtonPressed() {
        fetchCharacter()
    }
}

extension MainViewController {
    private func fetchCharacter() {
        guard let url = URL(string: jsonUlr) else { return }
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data else {
                print(error?.localizedDescription ?? "No description")
                return
            }
            do {
                let character = try JSONDecoder().decode([Character].self, from: data)
                print(character)
            } catch let error {
                print(error.localizedDescription)
                print("123")
            }
        }.resume()
    }
}
