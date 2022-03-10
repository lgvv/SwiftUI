//
//  CategoryRow.swift
//  Landmarks
//
//  Created by Hamlit Jason on 2022/03/10.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Landmark]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) { landmark in
                        NavigationLink {
                            LandmarkDetail(landmark: landmark)
                        } label: {
                            CategoryItem(landmark: landmark)
                        }
                    }
                }
            }
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var lanmarks = ModelData().landmarks
    
    static var previews: some View {
        CategoryRow(
            categoryName: lanmarks[0].category.rawValue,
            items: Array(lanmarks.prefix(4))
        )
    }
}
