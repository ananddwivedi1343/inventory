/**
 * 
 */

function validate()
{
	var email=document.getElementById("email").value;
	if(email=='')
		{
		alert('Please enter a valid email.');
		return false;
		}
	else
		{
		return true;
		}
}