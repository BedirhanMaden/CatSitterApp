//
//  SignInViewModel.swift
//  TestProject
//
//  Created by Bedirhan Maden on 30.11.2023.
//

import Foundation

class SignInViewModel : ObservableObject{
    @Published var userList: [User] = []
    @Published var isLoaded: Bool=false
    @Published var isNextViewActive=false
    @Published var userName = ""
    @Published var password = ""

    private var dataSource = UserDataSource()

    init() {
        dataSource.delegate=self
    }

    func moveToNextView(){
        isNextViewActive=true
    }

    func loadUserList(){
        dataSource.loadUserData()
    }

    func checkIfUserExists() -> Bool{
        var count=0
        for i in 0...userList.count{
            if userList[i].username == userName{
                count+=1
                if userList[i].password == password{
                    return true
                }else{
                    return false
                }
            }
        }

        if count==0{
            return false
        }
    }

}
extension SignInViewModel: UserDataSourceDelegate{
    func usersLoaded(users: [User]) {
        self.userList=users
        self.isLoaded=true
    }
    

}
