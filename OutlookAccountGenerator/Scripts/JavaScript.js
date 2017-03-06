$('.datepicker').pickadate({
    selectMonths: true, // Creates a dropdown to control month
    selectYears: 15, // Creates a dropdown of 15 years to control year
    format: 'yy-dd-mm'
});
function validateForm() {
    var x = document.getElementById('holdDate').value;
    if (x == "") {
        alert("Date must be filled out");
        return false;
    }
}