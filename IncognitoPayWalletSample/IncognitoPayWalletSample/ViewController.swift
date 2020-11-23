//
//  ViewController.swift
//  IncognitoPayWalletSample
//
//  Created by Andreas Reuter on 23.11.20.
//

import UIKit
import IncognitoPayKit

class ViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let incognitoPayButton = IncognitoPayButton(base: self)
    let button = UIView()
    button.addSubview(incognitoPayButton)
    button.heightAnchor.constraint(equalToConstant: 50).isActive = true
    button.widthAnchor.constraint(equalToConstant: 100).isActive = true
    
    let stackView = UIStackView(arrangedSubviews: [
      button
    ])
    stackView.axis = .vertical
    stackView.alignment = .fill
    stackView.translatesAutoresizingMaskIntoConstraints = false
    
    view.addSubview(stackView)
    
    stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
  }
}
