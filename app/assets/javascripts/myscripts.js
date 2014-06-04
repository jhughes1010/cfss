jQuery(document).ready(function() {
    jQuery('#tables').dataTable( {
            stateSave: true,
            stateDuration: -1
        });
    jQuery('#schedule').dataTable( {
            "stateSave": true,
            "stateDuration": -1,
            "scrollX": true
        } );
} );