//
//  ViewModel.swift
//  MVVM_login_example
//
//  Created by karlis.stekels on 28/09/2022.
//

import Foundation
import UIKit.UIColor

class ViewModel {
    var statusText = Dynamic("")
    var statusColor = Dynamic(UIColor.white)
    
    func userButtonPressed(login: String, password: String) {
        if login != User.login[0].login || password != User.login[0].password {
            statusText.value = "Login failed!"
            statusColor.value = UIColor.red
        } else {
            statusText.value = "You successfully logged in."
            statusColor.value = UIColor.green
        }
    }
}
