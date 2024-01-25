//
//  TLButtonView.swift
//  TODO
//
//  Created by Nohelia Da Silva on 1/23/24.
//

import SwiftUI

struct TLButtonView: View {
    
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: {
            // Action
            action()
        }, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        })
    }
}

struct TLButtonView_Preview: PreviewProvider {
    static var previews: some View {
        TLButtonView(title: "Value", background: .pink) {
            
        }
    }
}
