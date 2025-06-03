# MongoDB Syntax Cheat Sheet

---

## 🛠️ Database Operations

### Create / Use a Database
```js
use databasename

Show All Databases

show dbs

Show Current Database

db

Show All Collections

show collections


---

📦 Insert Documents

Insert One Document

db.collection.insertOne({ field1: value1, field2: value2 })

Insert Multiple Documents

db.collection.insertMany([
  { field1: value1, field2: value2 },
  { field1: value3, field2: value4 }
])


---

🔍 Read / Query Documents

Find All Documents

db.collection.find()

Find with Filter

db.collection.find({ field: value })

Find with Projection (specific fields)

db.collection.find({ field: value }, { field1: 1, field2: 1 })

Sort Results

db.collection.find().sort({ field: 1 })    // Ascending
db.collection.find().sort({ field: -1 })   // Descending

Find with Comparison Operators

db.collection.find({ field: { $ne: value } })   // Not equal
db.collection.find({ field: { $gt: value } })   // Greater than
db.collection.find({ field: { $lt: value } })   // Less than
db.collection.find({ field: { $gte: value } })  // Greater than or equal
db.collection.find({ field: { $lte: value } })  // Less than or equal


---

🧾 Update Documents

Update One Document

db.collection.updateOne(
  { field: value },
  { $set: { fieldToUpdate: newValue } }
)

Update Multiple Documents

db.collection.updateMany(
  { field: value },
  { $set: { fieldToUpdate: newValue } }
)


---

❌ Delete Documents

Delete One Document

db.collection.deleteOne({ field: value })

Delete Multiple Documents

db.collection.deleteMany({ field: value })


---

🔢 Aggregation (Basics)

Count Documents

db.collection.countDocuments({ field: value })

Group and Aggregate

db.collection.aggregate([
  { $group: { _id: "$field", total: { $sum: 1 } } }
])


---

🧮 Indexing

Create Index

db.collection.createIndex({ field: 1 })    // Ascending
db.collection.createIndex({ field: -1 })   // Descending

Drop Index

db.collection.dropIndex({ field: 1 })


---
