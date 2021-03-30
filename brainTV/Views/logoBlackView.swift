//
//  logoBlackView.swift
//  brainTV
//
//  Created by Marcelo Diefenbach on 29/03/21.
//

import SwiftUI

struct logoBlackView: View {
    var body: some View {
        Group {
            Image("brainTVLogoBlack")
                .resizable()
                .frame(maxWidth: 876, maxHeight: 420, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
    }
}

struct logoBlackView_Previews: PreviewProvider {
    static var previews: some View {
        logoBlackView()
    }
}
