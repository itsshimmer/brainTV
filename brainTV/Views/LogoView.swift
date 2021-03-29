//
//  logoView.swift
//  brainTV
//
//  Created by João Brentano on 29/03/21.
//

import SwiftUI

struct logoView: View {
    var body: some View {
        Group {
            Image("brainTVLogo")
                .resizable()
                .frame(maxWidth: 876, maxHeight: 420, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
    }
}

struct logoView_Previews: PreviewProvider {
    static var previews: some View {
        logoView()
    }
}
