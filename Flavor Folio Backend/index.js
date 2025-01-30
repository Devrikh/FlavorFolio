const express = require('express')
const app = express()
const PORT=3000;
const db=require("./database");
const mealroutes=require("./controllers/meal.controller");





app.use("/api/meals",mealroutes);


app.use((err,req,res,next)=>{
    console.log(err);
    res.status(err.status || 500).send("Something Went Wrong!!");
});







db.query("SELECT 1")
        .then(()=>{
            console.log("Database Connected");
            app.listen(PORT,()=>{
                console.log(`Server Connection established at ${PORT}`)
            });
        })
        .catch(err=>console.log("Database Connection Failed. \n" + err));

