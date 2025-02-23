//
//  ColorsBootcmp.swift
//  SwiftUIBootcamp
//
//  Created by Soumya on 04/02/25.
//

import SwiftUI

struct ColorsBootcmp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 8.0)
            .fill(
                //.red
                //Color.primary
                //Color(UIColor.red)
                Color(#colorLiteral(red: 0.9020017982, green: 0.2381700873, blue: 0.3283493519, alpha: 1))
                //Color("CustomColor")
            )
            .frame(width: 200, height: 100)
            .shadow(color: Color("CustomColor").opacity(0.2), radius: 5, x: -20, y: -20)
    }
}

#Preview {
    ColorsBootcmp()
}
