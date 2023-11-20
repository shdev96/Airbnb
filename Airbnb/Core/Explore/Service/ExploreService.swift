//
//  ExploreService.swift
//  Airbnb
//
//  Created by 이승희 on 11/20/23.
//

import Foundation

class ExploreService {
    func fetchListings() async throws -> [Listing] {
        print(DeveloperPreview.shared.listings.count)
        return DeveloperPreview.shared.listings
    }
}
