
var changeColor = function(){
	console.log('changeColor called');
	var randColor = Math.floor(Math.random() * 100000);	
	var hex = randColor.toString();
	var padding = hex.length;
	for (var i = 0; i < 6 - padding; i++)
	{
		hex = "0" + hex;
	}
	hex = "#" + hex;
	console.log(hex);
	this.style.color = hex; 
	console.log(this.style.color);
}
var invisible = function(){
	console.log('invisible called');
	console.log(this.children);

	if (!this.children) return;
	for (var i = 1; i < this.children.length; i++)
	{
//		console.log(this.children[i]);
//		console.log(this.children[i].style.visibility);
/*
 * where's the logic error the first else hits and explictly
 * sets style. When loop comes again. 
 */
		if (this.children[i].style.visibility == "") 
		{
			this.children[i].style.visibility = "hidden";
			
		} else if (this.children[i].style.visibility == "hidden")
		{
			this.children[i].style.visibility = "visible";
			
		} else if (this.children[i].style.visibility == "visible")
		{
			this.children[i].style.visibility = "hidden";
		} else 
		{
			console.log('4');
		}	
		// end if
	} // end for

	return;
} // end function
	
var paragraphs = document.getElementsByTagName('p');

for (var i = 0; i < paragraphs.length; i++)
{
	paragraphs[i].addEventListener('click', changeColor, false);
}

var menus = document.getElementsByTagName('ul');
for (var i = 0; i < menus.length; i++)
{
	menus[i].addEventListener('click', invisible, false);
}

