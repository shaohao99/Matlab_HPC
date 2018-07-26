clear all

[dayNum, dayString] = weekday(date, 'long', 'en_US');
switch dayString
     case 'Monday'
         disp('Start of the work week')
    case 'Tuesday'
        disp('Day 2')
    case 'Wednesday'
        disp('Day 3')
    case 'Thursday'
          disp('Day 4')
    case 'Friday'
          disp('Last day of the work week')
    otherwise
          disp('Weekend!')
end

