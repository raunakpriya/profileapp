
import SwiftUI

struct ContactView: View {
    
    var contact: Connect
    var width: CGFloat = 120

    
    var body: some View {
        VStack {
            Image(contact.imagePicture)
                .resizable()
                .font(.system(size: 35, weight: .medium))
                .opacity(0.8)
                .frame(width: 30, height: 30)
                .padding(3)
                
            Link(contact.identify, destination: contact.imageLink)
                .font(Montserrat.mediumItalic.font(size: 13.5))
                .padding(.top, 10)
                .buttonStyle(PlainButtonStyle())
        }.padding()
            .frame(width: width, height: 100)
            .background(
            RoundedRectangle(cornerRadius: 12)
                .opacity(0.025)
            )
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView(contact: AppModel().portfolio.connect[0])
    }
}
