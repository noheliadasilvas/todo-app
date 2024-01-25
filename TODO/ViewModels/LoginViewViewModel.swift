//
//  LoginViewViewModel.swift
//  TODO
//
//  Created by Nohelia Da Silva on 1/23/24.
//
import FirebaseAuth
import Foundation

class LoginViewViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage: String? = ""
    
    init() {}
    
    func login() {
        guard validate() else {
            return
        }
        
        // Try to log in
        Auth.auth().signIn(withEmail: email, password: password)
        
    }
    
    private func validate() -> Bool {
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please fill in all fields."
                  return false
              }
        
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please enter a valid email."
            return false
        }
        return true
    }
    
}