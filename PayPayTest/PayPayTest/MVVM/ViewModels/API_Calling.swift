//
//  API_Calling.swift
//  PayPayTest
//
//  Created by hemant kumar on 02/11/22.
//

import Foundation


class API_Calling {
    
    static let shared = API_Calling()
    
    func getRequest<T: Codable>(url: URL, type: T.Type, completionHandler: @escaping (T) -> Void, errorHandler: @escaping (String) -> Void) {
        print("GET: --> \(url.absoluteString)")
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data, error == nil else {
                print(error as Any)
                errorHandler(error?.localizedDescription ?? "Error!")
                return
            }

            if let httpStatus = response as? HTTPURLResponse, httpStatus.statusCode != 200 {
                print("status code is not 200")
                errorHandler("Status code is not 200")
                print(response as Any)
            }

            if let mappedResponse = try? JSONDecoder().decode(T.self, from: data) {
                print("Response: <-- \(url.absoluteString)")
                data.printAsJSON()
                completionHandler(mappedResponse)
            }
        }

        task.resume()
        
        
    }
    
    func postRequest<T: Codable>(url: URL, params: [String: Any], type: T.Type, completionHandler: @escaping (T) -> Void, errorHandler: @escaping (String) -> Void) {
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let jsonData = try! JSONSerialization.data(withJSONObject: params, options: [])
        
        print("POST: --> \(url.absoluteString)")
        params.printAsJSON()
        
        let task = URLSession.shared.uploadTask(with: request, from: jsonData) { (data, response, error) in
            guard let data = data, error == nil else {
                print(error as Any)
                errorHandler(error?.localizedDescription ?? "Error!")
                return
            }
            
            if let httpStatus = response as? HTTPURLResponse, httpStatus.statusCode != 200 {
                errorHandler("Status code is not 200")
            }
            
            if let mappedResponse = try? JSONDecoder().decode(T.self, from: data) {
                print("Response: <-- \(url.absoluteString)")
                data.printAsJSON()
                completionHandler(mappedResponse)
            }
        }
        
        task.resume()
    }
    
}
