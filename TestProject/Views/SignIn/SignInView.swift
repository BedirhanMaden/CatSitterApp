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
        if(viewModel.isLoaded){

            NavigationStack{

                VStack(content: {
                    TextField("User Name", text: $viewModel.userName)
                    TextField("Password", text: $viewModel.password)
                    NavigationLink(destination: HomeView(), isActive: $viewModel.isNextViewActive){
                        ButtonDS(buttonText: "Sign In", buttonImageName: "test") {
                            if viewModel.checkIfUserExists(){
                                viewModel.moveToNextView()
                            }else{
                                print("Username or password error")
                            }

                        }
                    }
                })
            }

        }else{
                LoadingView().onAppear{
                    viewModel.loadUserList()
                }
            }
        }
}

#Preview {
    SignInView()
}
