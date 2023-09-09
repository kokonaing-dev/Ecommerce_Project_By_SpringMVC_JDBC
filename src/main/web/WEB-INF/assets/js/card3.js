function checkout() {
    let items = getAllFromDB();
    console.log(items);

    $.ajax({
        url: "/checkout", //to card controller
        type: "post",
        data: {
            items : JSON.stringify(items)//items we catched
        },
        success: function(success) {
            console.log("Success:" + success); // log the success message
            if(success === "success"){
                clearDB();
                updateItemCount();
            }
        },
        error: function(error) {
            console.log("Error:", error); // Log the error message
        }
    });
}
checkout();