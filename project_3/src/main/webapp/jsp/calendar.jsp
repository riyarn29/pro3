<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>jQuery UI Datepicker - Display month &amp; year menus</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
 <script>
/*   $( function() {
    $( "#datepicker" ).datepicker({
      changeMonth: true,
      changeYear: true,
     
		yearRange : '2020:2024',
		dateFormat :  'dd/mm/yy'
	
    });
  } );
   */
  
  $(function() {
	  $( "#datepicker" ).datepicker({
	    changeMonth: true,
	    changeYear: true,
	    yearRange: '2020:2024',
	    dateFormat: 'dd/mm/yy',
	    maxDate: 0, // Disallows future dates (sets max date to today)
	    onSelect: function(dateText, inst) {
	      // Get the selected date as a Date object
	      var selectedDate = $(this).datepicker('getDate');
	      var today = new Date();

	      // Check if the selected date is in the future
	      if (selectedDate > today) {
	        // If the date is in the future, display a message
	        alert("You cannot select a future date. Please select today or a past date.");
	        // Clear the datepicker input field if the date is invalid
	        $(this).val('');
	      }
	    }
	  });
	});




  $(function() {
		$("#udate").datepicker({
			changeMonth : true,
			changeYear : true,
			yearRange : '1980:2002',
			dateFormat : 'dd/mm/yy',
		//  mindefaultDate : "01-01-1962"
		});
	});

  
  function disableSunday(d){
	  var day = d.getDay();
	  if(day==0)
	  {
	   return [false];
	  }else
	  {
	  return [true];
	  }
  }
  
  $( function() {
	  $( "#udate5" ).datepicker({
		  changeMonth :true,
		  changeYear :true,
		  yearRange :'0:+2',
		  dateFormat:'dd/mm/yy',

// Disable for Sunday
		  beforeShowDay : disableSunday,		  
// Disable for back date
		  minDate : 0   
	  });
  } );


  $(function() {
		$("#datepicker2").datepicker({
			dateFormat : 'dd/mm/yy',
			//defaultDate : "06/06/2001",
			changeMonth : true,
			changeYear : true,
			//yearRange: "c-20:c+0",
			//yearRange : "1980:2025",
		maxDate:'31/12/2024',
		// minDate:0
		
		});
	});

  
	$(function() {
		$("#udatee").datepicker({
			changeMonth : true,
			changeYear : true,
			yearRange : '1980:2002',
		//  mindefaultDate : "01-01-1962"
		});
	});

	  </script>
</head>
<body>
 
<!-- <p>Date: <input type="text" id="datepicker"></p> -->
 
 
</body>
</html>