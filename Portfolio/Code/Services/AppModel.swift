import Foundation

class AppModel: ObservableObject {
    var portfolio: Portfolio = Portfolio(name: "Raunak Priya", role: "iOS Developer", description: "Quick Learner and ready to take up challenging work", location: "Ranchi", skills: [
        Skill(id: UUID().uuidString, skillName: "iOS", image: "iphone"),
        Skill(id: UUID().uuidString, skillName: "Swift", image: "swift"),
        Skill(id: UUID().uuidString, skillName: "Java", image: "java"),
        Skill(id: UUID().uuidString, skillName: "Angular", image: "angular")
    ], experiences: [
        Experience(id: UUID().uuidString, companyName: "Pricewaterhouse Coopers", role: "iOS Developer", duration: "Sept 2020 - Dec 2022"),
        Experience(id: UUID().uuidString, companyName: "Shadowfax Technologies", role: "Mobile App Developer", duration: "Jan 2020 - May 2020"),
        Experience(id: UUID().uuidString, companyName: "ARTTC BSNL", role: "Trainee", duration: "June 2018 - July 2018")
    ], blogs: [
        Blogs(id: UUID().uuidString, blogName: "IOT, The Emerging Thing", blogLink: URL(string: "https://medium.com/@raunakpriya/iot-the-emerging-thing-b27fcda25fb7")!),
        Blogs(id: UUID().uuidString, blogName: "The Road Taken “Smartly”", blogLink: URL(string: "https://medium.com/@raunakpriya/the-road-taken-smartly-a67adb66b341")!),
        Blogs(id: UUID().uuidString, blogName: "How I prepared for Google", blogLink: URL(string: "https://medium.com/@raunakpriya/how-i-prepared-for-google-5350e23d99de")!)
    ], connect: [
        Connect(id: UUID().uuidString, imagePicture: "linkedIn", identify: "LinkedIn", imageLink: URL(string: "https://www.linkedin.com/in/raunakrp1907/")!),
        Connect(id: UUID().uuidString, imagePicture: "twitter", identify: "Twitter", imageLink: URL(string: "https://github.com/raunakpriya")!),
        Connect(id: UUID().uuidString, imagePicture: "github", identify: "Github", imageLink: URL(string: "https://github.com/raunakpriya")!),
        Connect(id: UUID().uuidString, imagePicture: "insta", identify: "Instagram", imageLink: URL(string: "https://www.instagram.com/raunak_rp1907")!)
    ])
}
