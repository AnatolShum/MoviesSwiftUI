//
//  NetworkTypes.swift
//  MoviesApp
//
//  Created by Anatolii Shumov on 18/09/2023.
//

import Foundation

extension Network {
    
    enum Types {
        
        enum Response {
            struct MovieObject: Codable {
                let title: String?
                let id: Int?
                let backdrop: String?
                let poster: String?
                let releaseDate: String?
                let overview: String?
                let vote: Double?
                
                enum CodingKeys: String, CodingKey {
                    case title
                    case id
                    case backdrop = "backdrop_path"
                    case poster = "poster_path"
                    case releaseDate = "release_date"
                    case overview
                    case vote = "vote_average"
                }
            }
            
            struct MovieResults: Codable {
                let results: [Movie]
            }
            
            struct Backdrops: Codable {
                let backdrops: [Photos]
            }
            
            struct VideoResults: Codable {
                let results: [Videos]
            }
        }
        
        enum Request {
            struct Empty: Codable {}
        }
    }
}
