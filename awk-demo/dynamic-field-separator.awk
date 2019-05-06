#!/bin/awk -f

# One Two:Three:4 Five

BEGIN {
# why does this line need a semi-colon at the end of it? -> for code readibility
  field=1;
}
{
# if any part of the whole line "matches" ie contains the regex :
  if ( $0 ~ /:/ ) {
    # field separator is now :
    FS=":";
    # what does this line do?
    # maybe it resets the attributes of the whole line, ie the field separator value
    # this would then cause the actions to be run again on this line
    $0=$0
    } else {
      FS=" ";
      $0=$0
      }
#print the third field, whatever format
  
  print $field 
  field++
}
