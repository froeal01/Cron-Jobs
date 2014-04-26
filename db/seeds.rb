a = Item.create(name: "Chocolate Milk", description: "Cows are raised on only the finest swiss 
	chocolate. We keep the cows to a strict diet of Dark Chocolate in the morning, Milk Chocolate in the afternoon, and Bitter Chocolate in the evening.
	This assure that no matter what type of chocolate you enjoy, our milk will satisfy your needs", cost: 70.00)
b = Item.create(name: "Almond Milk", description: "We allow our cows to graze in our almond fields only when the almonds are at their peak ripeness.
 This makes our almond milk a seasonal treat!", cost: 60.50)
c = Item.create(name: "Orange Banana Milk", description: "Fed with organic oranges from Florida and the freshest jungle bananas from Costa Rica. This
tropical delight will surely make you believe that you are feasting on the fruit right off tree.", cost: 80.00)

a.reviews << Review.create(comment: "Amazing", rating: 5, reviewable_type: "item")
a.reviews << Review.create(comment: "Chocolicious", rating: 4, reviewable_type: "item")
