//
//  SignInScreen.swift
//  TestProject
//
//  Created by Bedirhan Maden on 30.11.2023.
//

import SwiftUI

struct SignInView: View {
    @StateObject private var viewModel=SignInViewModel()

    var body: some View {
        VStack(content: {

            TextField("User Name", text: $viewModel.userName)
            TextField("Password", text: $viewModel.password)
        })
    }
}

#Preview {
    SignInView()
}
