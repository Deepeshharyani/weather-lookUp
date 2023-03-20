//
//  ViewController.swift
//  APIProjectWeather
//
//  Created by Deepesh Haryani on 3/19/23.
//

import UIKit

class ViewController: UIViewController {

    var searchCity: String = ""
    
    let cityNameTextField: UITextField = {
        var cityName = UITextField()
        return cityName
    }()
    
    let lookUpButton: UIButton = {
        var lookUp = UIButton()
        return lookUp
    }()
    
    let stackView: UIStackView = {
        var stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .fill
        stack.distribution = .fillEqually
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        stackView.addArrangedSubview(cityNameTextField)
        stackView.addArrangedSubview(lookUpButton)
        self.view.addSubview(stackView)
        
        self.view.backgroundColor = .lightGray
        
        cityNameTextField.placeholder = "City Name"
        lookUpButton.setTitle("LookUp", for: .normal)
        
        self.navigationController?.navigationBar.backgroundColor = .lightGray
        
        
        let safeArea = self.view.safeAreaLayoutGuide
        NSLayoutConstraint.activate(
            [stackView.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor),
             stackView.centerYAnchor.constraint(equalTo: safeArea.centerYAnchor)])
        
    }
}

extension ViewController: UITextFieldDelegate{
    func textFieldDidEndEditing(_ textField: UITextField) {
        guard let text = textField.text else {
            return
        }
        searchCity = text
    }
}
