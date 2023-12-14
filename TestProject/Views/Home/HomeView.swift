//
//  HomeView.swift
//  TestProject
//
//  Created by Bedirhan Maden on 30.11.2023.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel=HomeViewModel()
    var body: some View {


        if(viewModel.areProductsLoaded){
            NavigationStack{
                VStack{
                    TitleText(text: "Amazon")
                    Spacer()
                    HStack{
                        

                        NavigationLink(destination: SignInView()){
                            ButtonDS(buttonText: "Search", buttonImageName: "String") {}
                        }
                    }
                    Spacer()

                    

                }
            }
        }else{
            LoadingView().onAppear{
                viewModel.loadProducts()
            }

        }
    }
}


#Preview {
    HomeView()
}
