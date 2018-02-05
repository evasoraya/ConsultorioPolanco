$("#newPatientCB").change(function() {
    if(this.checked) {
        document.getElementById("newPatient").hidden = false;
        document.getElementById("noNewPatient").hidden = true;
    }
    else{
        document.getElementById("newPatient").hidden = true;
        document.getElementById("noNewPatient").hidden = false;
    }
});