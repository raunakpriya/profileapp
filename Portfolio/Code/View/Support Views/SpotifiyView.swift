
import SwiftUI

struct SpotifiyView: View {
    
    var width: CGFloat = 300
    
    var body: some View {
        Button {
            withAnimation(.easeInOut(duration: 0.35)){
            }
        } label: {
            Text("Tap me to get Quotes")
                .font(.system(size: 18, weight: .medium))
        }.buttonStyle(PlainButtonStyle())
            .font(Montserrat.bold.font(size: 18))
            .frame(width: width, height: 40)
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .opacity(0.075)
            )
    }
}

struct SpotifiyView_Previews: PreviewProvider {
    static var previews: some View {
        SpotifiyView()
    }
}
