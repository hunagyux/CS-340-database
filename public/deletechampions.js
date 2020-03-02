function deleteChampions(id){
    console.log("delete!!!!");
    $.ajax({
        url: '/Champions/' + id,
        type: 'DELETE',
        success: function(result){
            window.location.reload(true);
        }
    })
};
