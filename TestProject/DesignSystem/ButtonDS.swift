//
//  ButtonDS.swift
//  TestProject
//
//  Created by Bedirhan Maden on 30.11.2023.
//

import SwiftUI

struct ButtonDS: View {
    private let buttonText: String
    private let buttonImageName: String
    private let action: () -> Void

    init(buttonText: String, buttonImageName: String, action: @escaping () -> Void) {
        self.buttonText = buttonText
        self.buttonImageName = buttonImageName
        self.action = action
    }


    var body: some View {
        Button {
            action()
        } label: {
            Image(buttonImageName).resizable().frame(width: 100,height: 50).scaledToFit().overlay {
                Text(buttonText).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold()
            }
        }

    }
}

#Preview {
    ButtonDS(buttonText: "test", buttonImageName: "test", action: {})
}
