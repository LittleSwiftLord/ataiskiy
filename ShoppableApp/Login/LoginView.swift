//
//  LoginView.swift
//  MCHSHandbook
//
//  Created by Aidar Satindiev on 17/4/23.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject var sessionManager: SessionManager
    @State private var username: String = ""
    @State private var password: String = ""
    

    var body: some View {
        VStack {
            Text("Вход")
                .font(.largeTitle)
                .padding()

            TextField("Логин", text: $username)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())

            SecureField("Пароль", text: $password)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())

            Button("Войти") {
                if let user = PersistenceController.shared.checkUserCredentials(username: username, password: password) {
                    print("Logged in as: \(user.username ?? "")")
                } else {
                    print("Invalid login credentials")
                }
            }
            .padding()

            NavigationLink("Регистрация", destination: RegistrationView())
        }
        .padding()
    }
    private func login() {
           let loggedIn = sessionManager.login(username: username, password: password)
           if !loggedIn {
               // Отобразите сообщение об ошибке, если вход не удался
           }
       }
   }


