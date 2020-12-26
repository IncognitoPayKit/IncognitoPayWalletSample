//
//  ViewController.swift
//  IncognitoPayWalletSample
//
//  Created by Andreas Reuter on 23.11.20.
//  Copyright © 2020 NO DANCE MONKEY. All rights reserved.
//

import UIKit
import IncognitoPayKit

class ViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let incognitoPayButton = IncognitoPayButton(base: self)
    let button = UIView()
    button.addSubview(incognitoPayButton)
    
    NSLayoutConstraint.activate([
      button.heightAnchor.constraint(equalToConstant: 50),
      button.widthAnchor.constraint(equalToConstant: 100)
    ])
    
    let stackView = UIStackView(arrangedSubviews: [
      button
    ])
    stackView.axis = .vertical
    stackView.alignment = .fill
    stackView.translatesAutoresizingMaskIntoConstraints = false
    
    view.addSubview(stackView)
    
    NSLayoutConstraint.activate([
      stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
      stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
    ])
  }
}
