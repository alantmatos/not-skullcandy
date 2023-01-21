Product.destroy_all
Review.destroy_all
User.destroy_all

puts "seeding products, hold on"

Product.create!(name: "Push Active True Wireless Earbuds", description: "Voice Control, Adventure Ready.",avg_rating:rand(1..5),  price: "79.99", product_img: "https://cdn11.bigcommerce.com/s-k11cg5mzh9/images/stencil/500x659/products/395/82475/bd2253a9671dac36a95faf821b52e78935050140be1718ce001f6aace45cf25c__43298.1668926103.png?c=2", img_url:"https://jasper-pimstorage-skullcandy.s3.us-west-1.amazonaws.com/35fcd13cb31cc5c21015d1c7c39b767438cc09a95932757007d405b3f39cbdc3.jpg")

Product.create(name: "Grind Active True Wireless Earbuds",description: "Voice Control, Ultimate Freedom.",avg_rating:rand(1..5),  price: "79.99", product_img: "https://cdn11.bigcommerce.com/s-k11cg5mzh9/images/stencil/500x659/products/416/109181/f492cd8bbcb6378e7bd08bdf76a00cc60b300d4c15cf25593a2e3f66b41c3063__34386.1673306371.png?c=2",img_url: "https://jasper-pimstorage-skullcandy.s3.us-west-1.amazonaws.com/f1b4de029808c45169f3fc1887800c0ee0d4befab60c373e4fc4b2098acbc6dd.jpg")

Product.create(name: "Dime 2 True Wireless Earbuds",description: "Mini, Mighty, Findable", price: "39.99",avg_rating:rand(1..5), product_img: "https://cdn11.bigcommerce.com/s-k11cg5mzh9/images/stencil/500x659/products/335/109736/524981c652f712791c5ef63d9a57739ab229b4c7d689938c9f461ad3567dd76a__94365.1673766209.png?c=2", img_url:"https://skdy-assets.s3.amazonaws.com/b47c5fa724c97993819772b3eeeb40476d1d8ce596086889420a36e7a551c761.jpg")

Product.create(name: "Crusher Evo Sensory Bass",description: "Feel The Bass Tuned to You.", price: "52.49",avg_rating:rand(1..5), product_img: "https://cdn11.bigcommerce.com/s-k11cg5mzh9/images/stencil/500x659/products/410/81700/cdda5382c1ccc6c692724af68c212b7a6a1353e63192f5ebaa8cc586e1568e00__92379.1668792986.jpg?c=2",img_url: "https://skdy-assets.s3.amazonaws.com/b47c5fa724c97993819772b3eeeb40476d1d8ce596086889420a36e7a551c761.jpg")

Product.create(name: "Mod True Wireless Earbuds",description: "Pocket-Sized And Customized.", price: "59.99",avg_rating:rand(1..5), product_img: "https://cdn11.bigcommerce.com/s-k11cg5mzh9/images/stencil/500x659/products/327/109487/df7ce3d9546fdb41d7cd5ca25f8177f4f675cd2584ff03839441f40853993cef__01224.1673679971.jpg?c=2",img_url: "https://skdy-assets.s3.amazonaws.com/b47c5fa724c97993819772b3eeeb40476d1d8ce596086889420a36e7a551c761.jpg")

Product.create(name: "Indy ANC Noise Canceling True Wireless",description: "No Wires. No Noise.",avg_rating:rand(1..5), product_img: "https://cdn11.bigcommerce.com/s-k11cg5mzh9/images/stencil/500x659/products/343/109382/b4aa77f561f6eb45d30c7651507cf2f37d7059acb38ad5c121a044edd4ea0e94__62815.1673679909.png?c=2",price: "79.99",img_url: "https://jasper-pimstorage-skullcandy.s3.us-west-1.amazonaws.com/624aab1c9192861b40ce2c4165fb7ce28a7f52a09947a1b65da1b4c0ba43e01b.jpg")

Product.create(name: "Jib 2 True Wireless Earbuds",description: "Totally Wireless Essential.",avg_rating:rand(1..5),  price: "24.99",product_img: "https://cdn11.bigcommerce.com/s-k11cg5mzh9/images/stencil/500x659/products/393/74433/f354da148a9aebfdb1772d9c532fa13f891d20cf46909e060c6b02b39ade2792__06107.1668641753.png?c=2",img_url: "https://jasper-pimstorage-skullcandy.s3.us-west-1.amazonaws.com/624aab1c9192861b40ce2c4165fb7ce28a7f52a09947a1b65da1b4c0ba43e01b.jpg")


puts "seeding users"

User.create!(name: "Alan",username:"alanmatos", password_digest:"test", img_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXMMdfGVo0DUO60HH2rPeiBySnx-93spUlmw&usqp=CAU")



puts "seeding reviews"

Review.create!(comment: "This is the best earbud I ever had, ...and the only one tho", rating: rand(1..5) ,user_id: User.all.sample.id, product_id: Product.all.sample.id)
Review.create(comment: "meh...", rating: rand(1..5) ,user_id: User.all.sample.id, product_id: Product.all.sample.id)
Review.create(comment: "WOW, it's better than Apple's", rating: rand(1..5) ,user_id: User.all.sample.id, product_id: Product.all.sample.id)
Review.create(comment: "I dont know... I was expecting it to be louder", rating: rand(1..5) ,user_id: User.all.sample.id, product_id: Product.all.sample.id)
Review.create(comment: "I lost them, but for the 10 minutes I had it, It was OK", rating: rand(1..5) ,user_id: User.all.sample.id, product_id: Product.all.sample.id)
Review.create(comment: "My dog seem to like them, Its the second time they eat it.", rating: rand(1..5) ,user_id: User.all.sample.id, product_id: Product.all.sample.id)
Review.create(comment: "If you are trying to waste your money, buy it, otherwise buy anything else.", rating: rand(1..5) ,user_id: User.all.sample.id, product_id: Product.all.sample.id)
Review.create(comment: "It's great", rating: rand(1..5) ,user_id: User.all.sample.id, product_id: Product.all.sample.id)
Review.create(comment: "The battery last 2 days, awesome!", rating: rand(1..5) ,user_id: User.all.sample.id, product_id: Product.all.sample.id)



puts "uff... we are done here, back to you dev."


