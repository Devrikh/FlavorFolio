const express = require('express');
const router = express.Router();

const service=require("../services/mealservice");




router.get('/',async (req,res)=>{
    const meals= await service.getAllMeals();
    res.json(meals);   
});


router.get('/nut',async (req,res)=>{
    const nut= await service.getallnuts();
    res.send(nut);   
});


router.get('/:id',async (req,res)=>{
    const meal= await service.getMealByID(req.params.id);
    res.send(meal);   
});



module.exports=router;