
import SwiftUI

struct NotificationView: View {
    
    var width: CGFloat = 300
    @StateObject var localNotification : LocalNotification
    @ObservedObject var notificationCenter: NotificationCenter
    
    var body: some View {
        VStack {
            Button("Tap Me to get a Notification!") {
                localNotification.setLocalNotification(title: "Bonjour!", subtitle: "You have seeing Raunak's Portfolio", body: "Thanks for visiting!", when: 10)
            }.buttonStyle(PlainButtonStyle())
            
            

        }.padding()
            .frame(width: width, height: 50.5)
            .background(
            RoundedRectangle(cornerRadius: 12)
                .opacity(0.075)
            )
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView( localNotification: LocalNotification(), notificationCenter: NotificationCenter())
    }
}
