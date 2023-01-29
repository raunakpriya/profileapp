import SwiftUI

struct BlogView: View {
    var blog: Blogs
    var width: CGFloat = 350
    
    var body: some View {
        HStack{
            Circle()
                .frame(width: 10, height: 10)
                .opacity(0.65)
            Link(blog.blogName, destination: blog.blogLink)
                .font(Montserrat.bold.font(size: 18))
                .frame(width: width, height: 40)
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .opacity(0.075)
                        
                ).buttonStyle(PlainButtonStyle())
        }
    }
}

struct BlogView_Previews: PreviewProvider {
    static var previews: some View {
        BlogView(blog: AppModel().portfolio.blogs[0])
    }
}
