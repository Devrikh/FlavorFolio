 db=require("../database");


module.exports.getAllMeals=async ()=>{
    const [records] = await db.query("Select * from meals");
    return records;
}

module.exports.getMealByID=async (id)=>{
    const [record] = await db.query("Select * from meals where meal_id=?",[id]);
    return record;
}

module.exports.getallnuts=async ()=>{
    const [nut] = await db.query("Select * from nutrients");
    return nut;
}