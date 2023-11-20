//
//  ProfileOptionRawView.swift
//  Airbnb
//
//  Created by 이승희 on 11/20/23.
//

import SwiftUI

struct ProfileOptionRawView: View {
    let imageName: String
    let title: String
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: imageName)
                
                Text(title)
                    .font(.subheadline)
                
                Spacer()
                
                Image(systemName: "chevron.right")
            }
            
            Divider()
        }
    }
}

#Preview {
    ProfileOptionRawView(imageName: "gear", title: "Settings")
}
