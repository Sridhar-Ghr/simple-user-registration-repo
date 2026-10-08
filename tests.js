// This file is not complete yet as on 08-10-2026
//Access html elements and assign them to variables


function validateUserInput(){
    const studentname=document.getElementById('studentname');
    const studentid=document.getElementById('studentid');

    if(studentname.value.length<8|| studentid.value.length<8)
        console.log("Student Name and Student ID values are not as per the required length");
        return false;
    
}