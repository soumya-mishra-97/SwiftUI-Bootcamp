//
//  IconsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Soumya on 06/02/25.

/* SF Symbols app downlaod from [https://developer.apple.com/sf-symbols/]
 Here you can find all the system icons , copy the name and paste in the code. also it having multicolor icon options will be there. */

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)
        //.resizable()
        //.aspectRatio(contentMode: .fit)
            .font(.system(size: 50))
        //.foregroundColor(.red)
    }
}

#Preview {
    IconsBootcamp()
}
