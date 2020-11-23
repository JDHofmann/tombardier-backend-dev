ProjectImage.destroy_all
ProjectLink.destroy_all
Project.destroy_all
UserLink.destroy_all
User.destroy_all 

zuzu = User.create(
    email: "z@g.com",
    password: "1234",
    bio: "born in brooklyn, I think",
    contact_email: "z@z.com",
    site_title: "Zuzu's revenge",
    site_subtitle: "now I can finally leave these hoomans behind"
)

zuzu.image.attach(
    io: File.open('./public/tb.png'),
    filename: 'tb.png',
    content_type: 'application/png'
)

zuzu.user_links.create(
    link_text: "Github",
    link_url: "github.com"
)

candles = zuzu.projects.create(
    title: "Candles",
    subtitle: "Testing out my associations",
    description: "...while listening to Bjork I drink coffee and code"
)

candles.project_links.create(
    link_url: "something.com/bundlesofcandles/forever",
    link_text: "candles forever"
)

candles_image_one = candles.project_images.create(
    image_caption: "here's a sample image"
)

candles_image_one.image.attach(
    io: File.open('./public/tb.png'),
    filename: 'tb.png',
    content_type: 'application/png'
)