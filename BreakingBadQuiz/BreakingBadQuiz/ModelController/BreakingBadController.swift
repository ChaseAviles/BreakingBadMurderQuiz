//
//  BreakingBadController.swift
//  BreakingBadQuiz
//
//  Created by Johnathan Aviles on 2/10/21.
//

import UIKit

class BreakingBadController {
    
    static let baseURL = URL(string: "https://www.breakingbadapi.com/api/")
    static let characterEndpoint = "character"
    static let randomEndpoint = "random"
    static let deathCountEndpoint = "death-count"
    
    //death-count?name=Walter+White
    
    static func fetchCharacters(completion: @escaping (Result<String, NetworkError>) -> Void) {
        
        guard let baseURL = baseURL else {return completion(.failure(.invalidURL))}
        //https://www.breakingbadapi.com/api/
        let characterURL = baseURL.appendingPathComponent(characterEndpoint)
        //https://www.breakingbadapi.com/api/character
        let finalURL = characterURL.appendingPathComponent(randomEndpoint)
        //https://www.breakingbadapi.com/api/character/random
        print(finalURL)
        
        URLSession.shared.dataTask(with: finalURL) { (data, response, error) in
            if let error = error {
                return completion(.failure(.thrownError(error)))
            }
            
            if let response = response as? HTTPURLResponse {
                print("Random character status code: \(response.statusCode)")
            }
            
            guard let data = data else {return completion(.failure(.noData))}
            
            do {
                
                let character = try JSONDecoder().decode(BreakingBad.self, from: <#T##Data#>)
                
            } catch {
                
            }
        }
    }
    
}
