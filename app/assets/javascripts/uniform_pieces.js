// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
  function PrintDiv() {    
    var divToPrint = document.getElementById('divToPrint');
    var popupWin = window.open('', '_blank', 'width=800,height=600');
    popupWin.document.open();
    popupWin.document.write('<html><body onload="window.print()">' + divToPrint.innerHTML + '</html>');
    popupWin.document.close();
  }