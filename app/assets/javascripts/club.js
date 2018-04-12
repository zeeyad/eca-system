function addAddressField() {
 
    //create Date object
    var date = new Date();
 
    //get number of milliseconds since midnight Jan 1, 1970 
    //and use it for address key
    var mSec = date.getTime(); 
 
    //Replace 0 with milliseconds
    idAttributeDate =  
          "person_addresses_attributes_0_date".replace("0", mSec);
    nameAttributeDate =  
          "club[activities_attributes][0][date]".replace("0", mSec); 

    idAttributeWeekNo =  
          "person_addresses_attributes_0_week_no".replace("0", mSec);
    nameAttributeWeekNo =  
          "club[activities_attributes][0][week_no]".replace("0", mSec);

    idAttributeUser =  
          "person_addresses_attributes_0_user".replace("0", mSec);
    nameAttributeUser =  
          "club[activities_attributes][0][user_id]".replace("0", mSec);    

    idAttributeName =  
          "person_addresses_attributes_0_name".replace("0", mSec);
    nameAttributeName =  
          "club[activities_attributes][0][name]".replace("0", mSec);

    idAttributeNumberofHours =  
          "person_addresses_attributes_0_number_of_hours".replace("0", mSec);
    nameAttributeNumberofHours =  
          "club[activities_attributes][0][no_of_hours]".replace("0", mSec);

    idAttributeVenue =  
          "person_addresses_attributes_0_venue".replace("0", mSec);
    nameAttributeVenue =  
          "club[activities_attributes][0][venue]".replace("0", mSec);

    idAttributeWeightage =  
          "person_addresses_attributes_0_weightage".replace("0", mSec);
    nameAttributeWeightage =  
          "club[activities_attributes][0][weightage]".replace("0", mSec);

    nameAttributeDevelopmentAspect =  
                "club[activities_attributes][0][date]".replace("0", mSec); 


    //create <li> tag
    var li = document.createElement("li");

    // append to table
    var table = document.getElementById("thetable");


 
    //create label for Kind, set it's for attribute, 
    //and append it to <li> element
    var labelDatetr = document.createElement("tr");
    labelDatetr.setAttribute("for", idAttributeDate);
    var kindLabelText = document.createTextNode("Date");
    labelDatetr.appendChild(kindLabelText);
    li.appendChild(labelDatetr);
 
    //create input for Kind, set it's type, id and name attribute, 
    //and append it to <li> element

    var inputDate = document.createElement("INPUT");
    inputDate.setAttribute("type", "date");
    inputDate.setAttribute("id", idAttributeDate);
    inputDate.setAttribute("name", nameAttributeDate);
    li.appendChild(inputDate);

    //create label for Street, set it's for attribute, 
    //and append it to <li> element
    var labelWeekNo = document.createElement("label");
    labelWeekNo.setAttribute("for", idAttributeWeekNo);
    var weekNoLabelText = document.createTextNode("Week No");
    labelWeekNo.appendChild(weekNoLabelText);
    li.appendChild(labelWeekNo);
 
    //create input for Street, set it's type, id and name attribute, 
    //and append it to <li> element
    var inputWeek = document.createElement("INPUT");
    inputWeek.setAttribute("type", "text");
    inputWeek.setAttribute("id", idAttributeWeekNo);
    inputWeek.setAttribute("name", nameAttributeWeekNo);

    li.appendChild(inputWeek);
 



    // var labelUser = document.createElement("label");
    // labelUser.setAttribute("for", idAttributeUser);
    // var kindLabelUser = document.createTextNode("User");
    // labelUser.appendChild(kindLabelUser);
    // li.appendChild(labelUser);
 
    //create input for Kind, set it's type, id and name attribute, 
    //and append it to <li> element
    var inputUser = document.createElement("INPUT");
    inputUser.setAttribute("type", "text");
    inputUser.setAttribute("id", idAttributeUser);
    inputUser.setAttribute("name", nameAttributeUser);
    inputUser.setAttribute("class", "invisible");
    inputUser.setAttribute("style", "width: 0px; height: 0px;");
    inputUser.value = '1';
    li.appendChild(inputUser);

    var labelName = document.createElement("label");
    labelName.setAttribute("for", idAttributeName);
    var kindLabelName = document.createTextNode("Name");
    labelName.appendChild(kindLabelName);
    li.appendChild(labelName);
 
    //create input for Kind, set it's type, id and name attribute, 
    //and append it to <li> element
    var inputName = document.createElement("INPUT");
    inputName.setAttribute("type", "text");
    inputName.setAttribute("id", idAttributeName);
    inputName.setAttribute("name", nameAttributeName);
    li.appendChild(inputName);



    var labelNumberOfHours = document.createElement("label");
    labelNumberOfHours.setAttribute("for", idAttributeNumberofHours);
    var kindLabelNumberofHours = document.createTextNode("Number of Hours");
    labelNumberOfHours.appendChild(kindLabelNumberofHours);
    li.appendChild(labelNumberOfHours);
 
    //create input for Kind, set it's type, id and name attribute, 
    //and append it to <li> element
    var inputNumberofHours = document.createElement("INPUT");
    inputNumberofHours.setAttribute("type", "text");
    inputNumberofHours.setAttribute("id", idAttributeNumberofHours);
    inputNumberofHours.setAttribute("name", nameAttributeNumberofHours);
    li.appendChild(inputNumberofHours);


    var labelVenue = document.createElement("label");
    labelVenue.setAttribute("for", idAttributeVenue);
    var kindLabelVenue = document.createTextNode("Venue");
    labelVenue.appendChild(kindLabelVenue);
    li.appendChild(labelVenue);
 
    //create input for Kind, set it's type, id and name attribute, 
    //and append it to <li> element
    var inputVenue = document.createElement("INPUT");
    inputVenue.setAttribute("type", "text");
    inputVenue.setAttribute("id", idAttributeVenue);
    inputVenue.setAttribute("name", nameAttributeVenue);
    li.appendChild(inputVenue);


    var labelWeightage = document.createElement("label");
    labelWeightage.setAttribute("for", idAttributeWeightage);
    var kindLabelVenue = document.createTextNode("Weightage");
    labelWeightage.appendChild(kindLabelVenue);
    li.appendChild(labelWeightage);
 
    //create input for Kind, set it's type, id and name attribute, 
    //and append it to <li> element
    var inputWeightage = document.createElement("INPUT");
    inputWeightage.setAttribute("type", "text");
    inputWeightage.setAttribute("id", idAttributeWeightage);
    inputWeightage.setAttribute("name", nameAttributeWeightage);
    li.appendChild(inputWeightage);


    // Create Row
    var tr = document.createElement("tr");



    // 1.  Week No
    var td_weekno = document.createElement("td");
    inputWeek.className += 'form-control';
    td_weekno.appendChild(inputWeek);



    // 2. date
    var td_date = document.createElement("td");

    inputDate.setAttribute("type", "date");
    inputDate.setAttribute("id", idAttributeDate);
    inputDate.setAttribute("value", "2018-06-14");
    inputDate.className += 'form-control';
    inputDate.value = "2018-06-14";
    td_date.appendChild(inputDate);




    // 3. Name
    var td_name = document.createElement("td");
    inputName.className += 'form-control';
    td_name.appendChild(inputName);




    // 4. Development Aspect
    // var td_dev = document.createElement("td");
    // var devselect = document.createElement("select");
    // devselect.setAttribute("type", "select");

    // devselect.setAttribute("name", nameAttributeDevelopmentAspect);

    // devselect.options.add( new Option("Physical","Physical") );
    // devselect.options.add( new Option("Cultural","Cultural") );
    // devselect.options.add( new Option("Spiritual","Spiritual") );
    // devselect.options.add( new Option("Social and Community","Social and Community") );
    // devselect.options.add( new Option("Mental and Psychological","Mental and Psychological") );
    // td_dev.appendChild(devselect);



    // 5. Venue
    var td_venue = document.createElement("td");
    inputVenue.className += 'form-control';
    td_venue.appendChild(inputVenue);

    // 6. No of Hours
    var td_hours = document.createElement("td");
    inputNumberofHours.className += 'form-control';
    td_hours.appendChild(inputNumberofHours);

    // 7. Weightage
    var td_weightage = document.createElement("td");
    inputWeightage.className += 'form-control';
    td_weightage.appendChild(inputWeightage);

    var inputUser = document.createElement("INPUT");
    inputUser.setAttribute("type", "text");
    inputUser.setAttribute("id", idAttributeUser);
    inputUser.setAttribute("name", nameAttributeUser);
    inputUser.setAttribute("class", "invisible");
    inputUser.setAttribute("style", "width: 0px; height: 0px;");
    inputUser.value = '1';
    table.appendChild(inputUser);


    tr.appendChild(td_weekno);
    tr.appendChild(td_date);
    tr.appendChild(td_name);
    // tr.appendChild(td_dev);
    tr.appendChild(td_venue);
    tr.appendChild(td_hours);
    tr.appendChild(td_weightage);

    table.appendChild(tr);


 
    //show address header
    //$("#addressHeader").show(); 
}