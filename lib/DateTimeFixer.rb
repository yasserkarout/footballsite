module DateTimeFixer
  def get_date (datetime)
  	arr = datetime.split( ' ' , 3 )
  	dateArray = arr.first.split('-',3)

  	if (dateArray[1] == "01") 
  	return  "January"
  	elsif (dateArray[1] == "02") 
  	return  "February"
  	elsif (dateArray[1] == "03") 
  	return  "March"
  	elsif (dateArray[1] == "04") 
  	return  "April"
  	elsif (dateArray[1] == "05") 
  	return  "May"
  	elsif (dateArray[1] == "06") 
  	return  "June"
  	elsif (dateArray[1] == "07") 
  	return  "July"
  	elsif (dateArray[1] == "08") 
  	return  "August"
  	elsif (dateArray[1] == "09") 
  	return  "September"
  	elsif (dateArray[1] == "10") 
  	return  "October"
  	elsif (dateArray[1] == "11") 
  	return "November"
  	else  (dateArray[1] == "12") 
  	return "December"
  	end
  end
end