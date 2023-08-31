//
//  HomeService.swift
//  TastyApp
//
//  Created by Lucas Neves dos santos pompeu on 30/08/23.
//

import UIKit
import Alamofire

enum ErrorDetail: Swift.Error {
    case errorURL(urlString: String)
    case detailError(detail: String)
}

class HomeService {
    
    func getHomeData(completion: @escaping (HomeData?, Error?) -> Void) {
        let urlString: String = "https://run.mocky.io/v3/9d159fd4-5c58-4404-ab4f-f92b64f6ffc1"
        
        guard let url: URL = URL(string: urlString) else { return completion(nil, ErrorDetail.errorURL(urlString: urlString))}
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            
            guard let dataResult = data else { return completion(nil, ErrorDetail.detailError(detail: "Error Data"))}
            
            let json = try? JSONSerialization.jsonObject(with: dataResult, options: [])
            print(json as Any)
            
            guard let response = response as? HTTPURLResponse else { return }
            
            if response.statusCode == 200 {
                do {
                    let homeData: HomeData = try JSONDecoder().decode(HomeData.self, from: dataResult)
                    print("SUCCESS -> \(#function)")
                    completion(homeData, nil)
                } catch  {
                    print("ERROR -> \(#function)")
                    completion(nil, error)
                }
            } else {
                print("ERROR -> \(#function)")
                completion(nil, error)
            }
        }
        task.resume()
    }
    
//    func getHomeData(completion: @escaping (HomeData?, Error?) -> Void) {
//        let url: String = "https://run.mocky.io/v3/9d159fd4-5c58-4404-ab4f-f92b64f6ffc1"
//
//        AF.request(url, method: .get).validate().responseDecodable(of: HomeData.self) { response in
//
//            debugPrint(response)
//
//            switch response.result {
//            case .success(let success):
//                print("SUCCESS -> \(#function)")
//                completion(success, nil)
//            case .failure(let error):
//                print("ERROR -> \(#function)")
//                completion(nil, error)
//            }
//        }
//    }
//
//    func getHomeDatajson(completion: @escaping (HomeData?, Error?) -> Void) {
//        if let url = Bundle.main.url(forResource: "HomeData", withExtension: "json") {
//            do {
//                let data = try Data(contentsOf: url)
//                let homeData: HomeData = try JSONDecoder().decode(HomeData.self, from: data)
//                completion(homeData, nil)
//            } catch  {
//                completion(nil, error)
//            }
//        }
//    }
}
