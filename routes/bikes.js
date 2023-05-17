const express = require('express')
const router = express.Router()
const db = require('../models/database')

router.get('/', async (req, res) => {
    const bikes = await db.getBikes()
    res.render('bikes', {title: "ALL Bikes", bikes})
})
router.get('/bike/:id', async (req, res) => {
    const id = req.params.id
    const bike = await db.getBikeById(id)
    res.render('singleBike', {title: bike.Model, bike})
})

module.exports = router