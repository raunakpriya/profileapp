
import SwiftUI

struct BlogsView: View {
    var blogs: [Blogs] = []

    @State var showBlogs = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            HStack(spacing: 16) {
                Text("My Blogs")
                    .font(Montserrat.bold.font(size: 21))
                    .opacity(0.9)
                
                Button {
                    withAnimation(.easeInOut(duration: 0.35)){
                        showBlogs.toggle()
                    }
                } label: {
                    Image(systemName: "chevron.up")
                        .font(.system(size: 18, weight: .medium))
                        .rotationEffect(self.showBlogs ? .zero : .degrees(180))
                }.buttonStyle(PlainButtonStyle())
            }.padding(.bottom, 14)
            if(showBlogs) {
                    ForEach(blogs) { blog in
                        BlogView(blog: blog)
                    }
            }
            
        }
    }
}

struct BlogsView_Previews: PreviewProvider {
    static var previews: some View {
        BlogsView()
    }
}
