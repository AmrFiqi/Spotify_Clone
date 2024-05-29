//
//  WelcomeViewController.swift
//  Spotify
//
//  Created by Amr El-Fiqi on 29/05/2024.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    // MARK: - Variables
    
    private let signInButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .white
        button.setTitle("Sign In with Spotify", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 5
        return button
    }()
    
    // MARK: - Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Spotify"
        view.backgroundColor = .green
        view.addSubview(signInButton)
        signInButton.addTarget(self, action: #selector(didTabSignIn), for: .touchUpInside)
    }
   
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
//        signInButton.frame = CGRect(x: 30,
//                                    y: view.height-75-view.safeAreaInsets.bottom,
//                                    width: view.width-70,
//                                    height: 50)
        signInButton.translatesAutoresizingMaskIntoConstraints = false // Enable Auto Layout

            NSLayoutConstraint.activate([
              signInButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
              signInButton.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50), // Adjust vertical offset as needed
              signInButton.widthAnchor.constraint(equalToConstant: view.width - 70), // Maintain existing width
              signInButton.heightAnchor.constraint(equalToConstant: 50) // Maintain existing height
            ])

    }
    
    @objc func didTabSignIn() {
        let vc = AuthViewController()
        vc.completionHandler = {[weak self] success in
            self?.handleSignIn(success: success)
        }
        vc.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(vc, animated: true)
    }
    
    private func handleSignIn(success: Bool) {
        // Log user in
    }
}
