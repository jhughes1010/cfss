jQuery(document).ready(function() {
    jQuery('#tables').dataTable( {
            stateSave: true,
            stateDuration: -1
        });
    jQuery('#schedule').dataTable( {

            "scrollX": true
        } );
} );