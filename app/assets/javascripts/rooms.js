// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

//When the modal is closed - set the data back to the original form
$('#trackModal').bind('hidden', function () {
    window.alert('hidden event fired!');
});