$(document).ready(function () {
    let selItem = localStorage.getItem("locales");
    $('#locales').val(selItem ? selItem : 'en');
    $("#locales").change(function () {
        let selectedOption = $('#locales').val();
        if (selectedOption) {
            window.location.replace('?lang=' + selectedOption);
            localStorage.setItem("locales", selectedOption);
        }
    });
});