//
//  ExploreView.swift
//  Airbnb
//
//  Created by 이승희 on 11/19/23.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            SearchAndFilterBar()
            
            ScrollView {
                LazyVStack(spacing: 32) {
                    ForEach(0 ... 10, id: \.self) { listing in
                        NavigationLink(value: listing) {
                            ListingItemView()
                                .frame(height: 400)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                        }
                    }
                }
                .padding()
            }
            .navigationDestination(for: Int.self) { listing in
                ListingDetailView()
                    .navigationBarBackButtonHidden()
            }
        }
        
    }
}

#Preview {
    ExploreView()
}
