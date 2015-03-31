// ul grandparent)
	var ticket = document.getElementById('ticket');
		var listFeatures = ticket.getElementsByClassName('feature');
		
			// the following are all the children of listFeatures nodes, 
			// captured by getElements methods
			// feature anchors have events to open accordions
			var featureAnchors = listFeatures.getElementsByTagName('a');
				for (i=0; i < featureAnchors.length; i++)
				{
					featureAnchors.addEventListener('click', openAccordion, false);	
				}
			// feature inputs make ratings lists possible
			var featureInputs = listFeatures.getElementsByTagName('input');
				for (i=0; i < featureInputs.length; i++)
				{
					featureInputs.addEventListener('change', displayRatings, false);
				}
		
			// feature rating lists are stars that change color depending on 
			// which star was clicked. 
			var featureRatingLists = listFeatures.getElementsByTagName('ul');
			
		var listAccordions = ticket.getElementsByClassName('accordion');
	// garbage collector (test script first)
	// if (alert('garbage collection')) ticket = null;
	// li (parent)
	// 
		// anchor (w/o href target) to attach an event to
		//
		// input
		// should have an event handler to pull up the ratings ul
		// ul
		// this unordered list can be toggled visible/invisible based on the change property of sibling input
			// li (5)
			//
	// li (parent)
	//
		// textnode
		//
<ul id="ticket">
		<li class="feature prophets"><span="title">The Spectre of Atlantis</span> 
			Rate This Film?
			<input type="textbox" class="watched" />
			<ul class="ratings"><li class="star">*</li><li class="star">*</li><li class="star">*</li><li class="star">*</li><li class="star">*</li></ul>	
		</li>
		<li class="hidden accordion"></li>


		// Clicking the text box should open the accordion with an explanation of the film
		// Clicking the watched checkbox should display the ratings ordered list
		// Clicking an element in the unordered list should change the ratings
		// There should be a button to let you close the accordion. 
		//
//	var ticket // an array of list items
	var text = document.getElementsByClassName('title');
	// the text should be what's clicked to bring down the accordion. An array of elements
//	var checkbox // holds the checkboxes in an array
	var checkbox = document.getElementsByClassName('watched');
//	var star // holds the unordered list. 
	var star = document.getElementsByClassName('ratings');
//	var accordions // the accordion list item.
	var accordions = document.getElementsByClassName('hidden-accordion');


	var expandAccordion = function(){
		this.
	}	
       	// expand the accordion
	var collapseAccordion = function(){}
       	// collapse the accordion
	var showRating = function() {}
       	// show the rating box
	var rateFilm = function() {}
       	// allow user to change the film's rating in an ordered list. 
