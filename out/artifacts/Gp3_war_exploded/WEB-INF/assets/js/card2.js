let responseItems = "";

function requestProduct() {
    let items = getAllFromDB();
    console.log(items);

    $.ajax({
        url: "/cart",
        type: "post",
        data: {
            items : JSON.stringify(items)
        },
        success: function(success) {
            console.log("Success:" + success);
            responseItems = JSON.parse(success);
            loadToShowProduct();
        },
        error: function(error) {
            console.log("Error:", error); // Log the error message
        }
    });
}
requestProduct();

function loadToShowProduct() {
    let tableData = "";
    let gTotal = 0;
    responseItems.forEach((menu,i)=>{
        const count = i + 1;
        tableData += `<tr>
				<td>${count}</td>
				<td>${menu.product_name}</td>
				<td>$ ${menu.product_price}</td>
				<td>
					<button class="btn btn-danger btn-sm" onclick="Remove1Item(${menu.id})">
						<i class="fa fa-minus"></i>
					</button>
					 <span>${getItemCount(menu.id)}</span>
					<button class="btn btn-primary btn-sm" onclick="add1Item(${menu.id})">
						<i class="fa fa-plus"></i>
					</button>
					
					<button class="btn btn-warning btn-sm" onclick="delete1item(${menu.id})">
						<i class="fa fa-trash"></i>
					</button>
				</td>
				 <td>$ ${getItemCount(menu.id) * menu.product_price}</td>
			</tr>`;
        gTotal += getItemCount(menu.id) * menu.product_price;
    });
    tableData += `<tr>
				<td colspan="4" class="text-right">Grand Total</td>
				<td style="color: red">$ ${gTotal}</td>
				</tr>`;
    document.getElementById("tableBd").innerHTML = tableData;
}

function add1Item(id){
    addItemToDB(id);
    loadToShowProduct();
}

function delete1item(id){
    let items = getAllFromDB();
    let indx = items.findIndex(x => x.id == id);
    if(indx != -1){
        items.splice(indx,1);
    }
    saveToDB(items);
    let ind = responseItems.findIndex(x => x.id == id);
    if(ind != -1){
        responseItems.splice(ind , 1) ;
    }
    loadToShowProduct();
    updateItemCount();
}

function Remove1Item(id){
    let items = getAllFromDB();
    let indx = items.findIndex(x => x.id == id);
    if(indx != -1){
        if(items[indx].count > 1){
            items[indx].count = items[indx].count - 1;
        }
    }
    saveToDB(items);
    loadToShowProduct();
    updateItemCount()
}

function getItemCount(id){
    let items = getAllFromDB();
    let indx = items.findIndex(x => x.id == id);
    if(indx != -1){
        return items[indx].count;
    }
    return 0;
}
requestProduct();