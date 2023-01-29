

import SwiftUI

struct HeaderView: View {
    
    var appModel: AppModel

    var body: some View {
        VStack {
            HStack {
                Spacer()
                Image("self")
                    .resizable()
                    .frame(width: 110, height: 110)
                    .padding(3)
                    .background(
                )
                Spacer()
            }
            Text(appModel.portfolio.name)
                .font(Montserrat.bold.font(size: 24))
                .padding(.top, 8)
            
            Text(appModel.portfolio.role)
                .font(Montserrat.blackItalic.font(size: 18))
                .opacity(0.85)
                .padding(.top, -2)
            
            HStack {
                Image(systemName: "location.fill")
                    .font(.system(size: 18, weight: .semibold))
                Text(appModel.portfolio.location)
                    .font(Montserrat.medium.font(size: 18))
                
            }
            .padding(.top, 10)
            .opacity(0.45)
            
            Text(appModel.portfolio.description)
                .font(Montserrat.blackItalic.font(size: 18))
                .opacity(0.8)
                .padding(.top, 24)
                
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(appModel: AppModel())
            .padding(24)
    }
}
