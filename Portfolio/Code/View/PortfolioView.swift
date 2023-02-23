import SwiftUI

struct PortfolioView: View {
    
    var appModel: AppModel = AppModel()
    var portfolioapp: PortfolioApp = PortfolioApp()
    var width: CGFloat = 300
    
    var body: some View {
        ZStack {
            Color(UIColor.systemBackground)
                .ignoresSafeArea()
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading) {
                    HeaderView(appModel: appModel)
                    NotificationView(localNotification: LocalNotification(), notificationCenter: NotificationCenter())
                        .padding(.top, 32)
                        .padding(.leading, 50)
                    SkillsView(skills: appModel.portfolio.skills, width: UIScreen.main.bounds.width - 48)
                        .padding(.top, 32)
                    ExperiencesView(experiences: appModel.portfolio.experiences)
                        .padding(.top, 32)
                    BlogsView(blogs: appModel.portfolio.blogs)
                        .padding(.top, 32)
                    ContactsView(contact: appModel.portfolio.connect)
                        .padding(.top, 32)
                    VStack {
                        HStack{
                            Spacer()
                            Text("Made with")
                            Image("love")
                                .resizable()
                                .font(.system(size: 35, weight: .medium))
                                .opacity(0.8)
                                .frame(width: 20, height: 20)
                                .padding(3)
                            Text("by Raunak")
                            
                            Spacer()
                        }.padding(.top, 32)
                        Text("+91-8210073760")
                        Text("raunakpriya@gmail.com")
                    }
                }.padding(24)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView()
            .colorScheme(.light)
    }
}

