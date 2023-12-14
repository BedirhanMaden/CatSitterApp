//
//  PostDataSource.swift
//  TestProject
//
//  Created by Bedirhan Maden on 30.11.2023.
//

import Foundation


struct ProductListDataSource{

    private let baseURL="https://fakestoreapi.com"
    var delegate: ProductListDataSourceDelegate?

    func loadProductData(){

        let session=URLSession.shared
        if let url=URL(string: "\(baseURL)/products"){
            print("found the url")
            var request = URLRequest(url: url)
            request.httpMethod="GET"
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")

            print("just before data task")
            let dataTask = session.dataTask(with: request) { data, response, error in

                print("cam enter this area")
                guard let data else {print("error in data"); return}
                let decoder = JSONDecoder()
                do{
                    print("Ready to decode")
                    let productList = try decoder.decode([Product].self, from: data)
                    DispatchQueue.main.async {

                        delegate?.productsLoaded(products: productList)
                    }

                }catch {
                    print(error)
                }

            }
            dataTask.resume()
        }
    }
    }


