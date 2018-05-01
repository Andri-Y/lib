$(document).ready(function() {
    $('#articles_table').DataTable( {
        scrollY:        '50vh',
        scrollCollapse: true,
        paging:         false,
        "language": {
            "url": langPath
        }
    } );
} );