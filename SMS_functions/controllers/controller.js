

const credentials = {
    apiKey: process.env.APIKEY,
    username: process.env.USER_NAME,
}

const AfricasTalking = require('africastalking')(credentials);



// Get the SMS service
const sms = AfricasTalking.SMS;

exports.sendMessage=async(req,res)=>{
    try {
        //obtain array of numbers
        const {numberArray,messageBody}=req.body
        if(!messageBody || numberArray.length<1){
            return res.status(201).json({
                success:true,
                message:"Empty Fields"
            })
        }
        const options = {
            to: numberArray,
            message: messageBody,
            //from: 'ONFARM APP'
        }
        const response=await sms.send(options)
        
       return res.json({
        response
       })


    } catch (error) {
        console.log(process.env)
        return res.status(500).json({
            success:false,
            message:"Sorry Failed to Send Message,please try again",
            error:error
        })
    }
}