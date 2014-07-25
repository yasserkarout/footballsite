
module DateTimeFixer
  def get_date (datetime)
  	weekday = datetime.wday
  	datetimeString = datetime.to_s
  	arr = datetimeString.split( ' ' , 3 )
  	dateArray = arr.first.split('-',3)

  	if (dateArray[1] == "01") 
  	month =  "January"
  	elsif (dateArray[1] == "02") 
  	month =  "February"
  	elsif (dateArray[1] == "03") 
  	month =  "March"
  	elsif (dateArray[1] == "04") 
  	month =  "April"
  	elsif (dateArray[1] == "05") 
  	month =  "May"
  	elsif (dateArray[1] == "06") 
  	month =  "June"
  	elsif (dateArray[1] == "07") 
  	month =  "July"
  	elsif (dateArray[1] == "08") 
  	month =  "August"
  	elsif (dateArray[1] == "09") 
  	month =  "September"
  	elsif (dateArray[1] == "10") 
  	month =  "October"
  	elsif (dateArray[1] == "11") 
  	month = "November"
  	else  (dateArray[1] == "12") 
  	month = "December"
  	end
  	day = dateArray[2]
  	year = dateArray[0]
  	
  	return "#{get_week_day(weekday.to_s)}, #{month}  #{day}, #{year}" 

  end

  def get_week_day (day_num)
  	if (day_num == "1")
  	return "Monday"
  	elsif (day_num == "2")
  	return "Tuesday"
  	elsif (day_num == "3")
  	return "Wednesday"
  elsif (day_num == "4")
  	return "Thursday"
  elsif (day_num == "5")
  	return "Friday"
  elsif (day_num == "6")
  	return "Saturday"
  elsif (day_num == "7")
  	return "Sunday"
  end
end
 

def get_time(datetime)
	datetimeString = datetime.to_s
  	arr = datetimeString.split( ' ' , 3 )
  	timeArray = arr[1].split(':',3)
  	hour = get_hour(timeArray[0].to_i).to_s
  	minute = timeArray[1]
  	meridian = get_meridian(timeArray[0].to_i).to_s
  	return "#{hour}:#{minute} #{meridian}"



end
def get_hour(hour)
 
  hour = case hour
        when 0, 12
          12
        when 13 .. 23
          hour - 12
        else
          hour
        end
        return hour
  
end
def get_meridian(hour)
	 meridian = (hour >= 12) ? 'pm' : 'am'
	 return meridian
	end


















 
end