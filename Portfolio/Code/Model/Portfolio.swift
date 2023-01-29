import Foundation

struct Skill: Identifiable {
    var id: String
    var skillName: String
    var image: String
}

struct Experience: Identifiable {
    var id: String
    var companyName: String
    var role: String
    var duration: String
}

struct Blogs: Identifiable {
    var id: String
    var blogName: String
    var blogLink: URL
}

struct Connect: Identifiable {
    var id: String
    var imagePicture: String
    var identify: String
    var imageLink: URL
}

struct Portfolio {
    let name: String
    let role: String
    let description: String
    let location: String
    
    let skills: [Skill]
    let experiences: [Experience]
    let blogs: [Blogs]
    let connect: [Connect]
}
