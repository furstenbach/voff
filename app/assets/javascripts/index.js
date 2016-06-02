
$(function(){
    window.prettyPrint && prettyPrint();
    $('#datepicker').datepicker({
        format: 'yyyy-mm-dd'
    });

});
function search(){
  window.location.replace("<%= search_path %>");
}
