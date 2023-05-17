// Add the database here
const db = require('better-sqlite3')('./models/bikes-info.db', { verbose: console.log })
const fs = require('fs')
db.pragma('journal_mode = WAL')

exports.initDB = async () => {
    const script = fs.readFileSync('./models/init.sql').toString()
    db.exec(script)
};

exports.getBikes = async () => {
    const statment = db.prepare("SELECT * FROM bikes") 
    const bikes = await statment.all();
    return bikes;
}

exports.getBikeById = async (id) => {
    const statment = db.prepare("SELECT * FROM bikes WHERE id = ?")
    const bike = await statment.get(id)
    return bike
}