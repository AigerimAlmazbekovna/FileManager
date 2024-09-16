//
//  ErrorProtocol.swift
//  FileManagerHomeWork
//
//  Created by Айгерим on 16.09.2024.
//

import Foundation
import UIKit

protocol ErrorAlert where Self: UIViewController {
    func showErrorAlert(message: String)
}

extension ErrorAlert {
    func showErrorAlert(message: String) {
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}
