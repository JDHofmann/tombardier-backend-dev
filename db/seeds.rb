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