let db = "menu";
function addItemToDB(id) {

    const items = getAllFromDB();
    if (items.length < 1) {
        items.push({
            id : id,
            count : 1
        });
        saveToDB(items);
    } else {
        const indx = items.findIndex(x => x.id == id);
        if(indx == -1){
            items.push({
                id : id,
                count : 1
            });
        }else{
            items[indx].count =  items[indx].count +1 ;
        }
        saveToDB(items);
    }
}

function saveToDB(items) {
    clearDB();
    localStorage.setItem(db, JSON.stringify(items))
    updateItemCount();
}

function updateItemCount() {
    const items = getAllFromDB();
    document.getElementById("cartCount").innerHTML = items.length;
}

function clearDB() {
    localStorage.removeItem(db);
}

function getAllFromDB() {
    const items = localStorage.getItem(db);
    if (items == null) {
        return [];
    }
    return JSON.parse(items);

}

