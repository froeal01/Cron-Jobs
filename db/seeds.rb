a = Item.create(name: "Chocolate Milk", description: "Cows are raised on only the finest swiss 
	chocolate. We keep the cows to a strict diet of Dark Chocolate in the morning, Milk Chocolate in the afternoon, and Bitter Chocolate in the evening.
	This assure that no matter what type of chocolate you enjoy, our milk will satisfy your needs", cost: 70.00)
b = Item.create(name: "Almond Milk", description: "We allow our cows to graze in our almond fields only when the almonds are at their peak ripeness.
 This makes our almond milk a seasonal treat!", cost: 60.50)
c = Item.create(name: "Orange Banana Milk", description: "Fed with organic oranges from Florida and the freshest jungle bananas from Costa Rica. This
tropical delight will surely make you believe that you are feasting on the fruit right off tree.", cost: 80.00)
d = Item.create(name: "Mint Milk", description: "These cows constantly win the awards for freshest breath", cost: 55.00)
e = Item.create(name: "Coffee Milk", description: "Cows that never sleep have more time eat to freshly ground coffee", cost: 45.00)
f = Item.create(name: "Jelly Bean Milk", description: "Bunnies are not the only ones that love Jelly Beans", cost: 60.00)
g = Item.create(name: "Strawberry Milk", description: "We feed our cows so many strawberries, they may turn into one!", cost: 45.00)
h = Item.create(name: "Ginger Milk", description: "Whomever heard of Ginger Milk. We certainly did not until our cows accidentaly started to graze in our ginger fields", cost: 80.00)
i = Item.create(name: "Blueberry Milk", description: "Thought Violet Beauregarde loved blueberries? After you drink our milk, your love will put hers to shame. (No turning into a blueberry required)", cost: 67.90)

a.reviews << Review.create(comment: "Amazing", rating: 5, reviewable_type: "item")
a.reviews << Review.create(comment: "Chocolicious", rating: 4, reviewable_type: "item")

a.avatar = File.open('./app/assets/images/chocolate.jpg')
a.save!
b.avatar = File.open('./app/assets/images/almond.jpg')
b.save!
c.avatar = File.open('./app/assets/images/orange_banana.jpg')
c.save!
d.avatar = File.open('./app/assets/images/mint.jpg')
d.save!
e.avatar = File.open('./app/assets/images/coffee.jpg')
e.save!
f.avatar = File.open('./app/assets/images/jelly_bean.jpg')
f.save!
g.avatar = File.open('./app/assets/images/strawberry.jpg')
g.save!
h.avatar = File.open('./app/assets/images/ginger.jpg')
h.save!
i.avatar = File.open('./app/assets/images/blueberry.jpg')
i.save!
