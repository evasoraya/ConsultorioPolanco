jQuery(function($){
    $("#cedula").mask("999-9999999-9");
    $(".telefono").mask("999-999-9999");
    $("#birthday").mask("99/99/9999");

});

function showDiv(elem){
    if(elem.value == 1){
        document.getElementById('otraNacionalidad').hidden = false;
    }else{
        document.getElementById('otraNacionalidad').hidden = true;
    }

}

function showMenor() {

    var check = false;
    document.getElementById("sub2").checked = true;
    document.getElementById('menor').hidden = false;

}



function formatDate(date) {
    var d = new Date(date),
        month = '' + (d.getMonth() + 1),
        day = '' + d.getDate(),
        year = d.getFullYear();

    if (month.length < 2) month = '0' + month;
    if (day.length < 2) day = '0' + day;

    return [year, month, day].join('-');
}


