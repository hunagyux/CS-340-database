function updateUser(id){
    $.ajax({
        url: '/Champions/' + id,
        type: 'PUT',
        data: $('#update-Champions').serialize(),
        success: function(result){
            window.location.replace("./");
        }
    })
};
