# MongoDB Syntax Cheat Sheet

## Database Operations

### Use a Database
```shell
use databasename


### Show All Databases
show dbs
```

### Show Current Database
```shell
db
```

### Show All Collections
```shell
show collections
```

## Insert Documents

### Insert One Document
```javascript
db.collection.insertOne({ field1: value1, field2: value2 })
```

### Insert Multiple Documents
```javascript
db.collection.insertMany([
  { field1: value1, field2: value2 },
  { field1: value3, field2: value4 }
])
```

## Read/Query Documents

### Find All Documents
```javascript
db.collection.find()
```

### Find with Filter
```javascript
db.collection.find({ field: value })
```

### Find with Projection
```javascript
db.collection.find({ field: value }, { field1: 1, field2: 1 })
```

### Sorting
```javascript
// Ascending
db.collection.find().sort({ field: 1 })

// Descending
db.collection.find().sort({ field: -1 })
```

### Comparison Operators
```javascript
// Not equal
db.collection.find({ field: { $ne: value } })

// Greater than
db.collection.find({ field: { $gt: value } })

// Less than
db.collection.find({ field: { $lt: value } })

// Greater than or equal
db.collection.find({ field: { $gte: value } })

// Less than or equal
db.collection.find({ field: { $lte: value } })
```

## Update Documents

### Update One Document
```javascript
db.collection.updateOne(
  { field: value },
  { $set: { fieldToUpdate: newValue } }
)
```

### Update Many Documents
```javascript
db.collection.updateMany(
  { field: value },
  { $set: { fieldToUpdate: newValue } }
)
```

## Delete Documents

### Delete One Document
```javascript
db.collection.deleteOne({ field: value })
```

### Delete Many Documents
```javascript
db.collection.deleteMany({ field: value })
```

## Aggregation

### Count Documents
```javascript
db.collection.countDocuments({ field: value })
```

### Group and Aggregate
```javascript
db.collection.aggregate([
  { $group: { _id: "$field", total: { $sum: 1 } } }
])
```

## Indexing

### Create Index
```javascript
// Ascending
db.collection.createIndex({ field: 1 })

// Descending
db.collection.createIndex({ field: -1 })
```

### Drop Index
```javascript
db.collection.dropIndex({ field: 1 })
```

---
