//
//  ViewController.swift
//  MVVM_login_example
//
//  Created by karlis.stekels on 28/09/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loginLabel: UITextField!
    @IBOutlet weak var passwordLabel: UITextField!
    @IBOutlet weak var statusLabel: UILabel!
    
    var viewModel = ViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
        initialState()
    }
    
    func initialState() {
        statusLabel.textColor = UIColor.white
    }
    
    func bindViewModel() {
        viewModel.statusText.bind({ (statusText) in
            DispatchQueue.main.async {
                self.statusLabel.text = statusText
            }
        })
        viewModel.statusColor.bind({ (statusColor) in
            DispatchQueue.main.async {
                self.statusLabel.textColor = statusColor
            }
        })
    }

    @IBAction func loginButtonPressed(_ sender: UIButton) {
        viewModel.userButtonPressed(login: loginLabel.text ?? "", password: passwordLabel.text ?? "")
    }
    
}

