$( document ).ready(function() {
    // $.ajax({
    //     type: "POST",
    //     url: 'http://localhost:8080/v1/posts',
    //     data: {
    //         "post": "test1sdrgdfhdsfhdfhdf",
    //         "unit": 1,
    //         "number": "test1",
    //         "rateCount": 1,
    //         "salary": 1
    //     },
    //     success: function(e) {
    //         $('body').append(e.id);
    //     }
    // });


    var data = { post: "test1sdrgdfhdsfhdfhdf",
                unit: 1,
                number: "test1",
                rateCount: 1,
                salary: 1 };

    jQuery.ajax({
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        },
        'type': 'POST',
        'url': 'http://localhost:8080/v1/posts',
        'data': JSON.stringify(data),
        'dataType': 'json',
        'success': function( data ) {
                    alert( "Data Loaded: " + data );
                    console.log(data);
                    //data.forEach(function (t) { ... $('.my-table').append("<td>" + e.id + "</td>") })
                }
    });
});