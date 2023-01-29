//
//  ContactsView.swift
//  Portfolio
//
//  Created by Harsh Raj on 13/01/23.
//

import SwiftUI


struct ContactsView: View {
    
    var contact: [Connect]
    var width: CGFloat = 120
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 16) {
                Text("Connect with me:")
                    .font(Montserrat.bold.font(size: 21))
                    .opacity(0.9)
            }
            
                LazyVGrid(columns: [GridItem(), GridItem(), GridItem(), GridItem()], alignment: .leading, spacing: 10) {
                    
                    ForEach(contact) { contact in
                        ContactView(contact: contact , width: width - 25)
                    }
                }.padding(.top, 24)
            
            
        }
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { proxy in
            ContactsView(contact: AppModel().portfolio.connect)
                .padding(24)
        }
        
    }
}
