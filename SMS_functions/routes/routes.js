const express=require('express')
const router=express.Router()
const {sendMessage}=require('../controllers/controller')
router.post('/number',sendMessage)
module.exports=router