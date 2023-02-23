
import SwiftUI

struct ExperienceView: View {
    
    var experience: Experience
    
    var body: some View {
        VStack(alignment: .leading) {
            Circle()
                .frame(width: 10, height: 10)
                .opacity(0.65)
            
            HStack {
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 3)
                    .padding(.leading , 3)
                
                VStack(alignment: .leading){
                    Text(experience.role)
                        .font(Montserrat.bold.font(size: 18.5))
                    Text(experience.companyName)
                        .font(Montserrat.mediumItalic.font(size: 16.5))
                        .padding(.top, 4)
                        .opacity(0.75)
                    Text(experience.duration)
                        .font(Montserrat.medium.font(size: 14))
                        .opacity(0.5)
                        .padding(.top, 12)
                }.padding(.leading, 10)
                
            }.padding(.top, 8)
        }.fixedSize()
    }
}

struct ExperienceView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { proxy in
            ExperienceView(experience: AppModel().portfolio.experiences[0])
                .padding(24)
        }
    }
}
