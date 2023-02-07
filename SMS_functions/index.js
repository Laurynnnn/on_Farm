require('dotenv').config()
const express=require('express')
const cors=require('cors')
const app=express();
const router=require('./routes/routes')
//middleware
app.use(express.json());
app.use(cors());
app.use(express.urlencoded({ extended: true }));

app.use(router)

const PORT=process.env.PORT || 8000

app.get('/',(req,res)=>{
    res.send("  Hello World")
})

app.listen(PORT, () => {
   console.log(`Server running at port ${PORT}`)
})