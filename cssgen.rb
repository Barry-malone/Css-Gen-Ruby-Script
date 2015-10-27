print <<-eos
--------------------------------------------------
Phorest Quick Online Booking CSS Gen
If you dont want to change a value leave it blank
If you dont want to change a value leave it blank
You can find hex colours using: 

- http://www.flatuicolorpicker.com/

- http://www.color-hex.com/

__________________________________________________
eos
semicolon = "\;"
colon = "\:"
closebracket = "\}"
print "\n" 
puts "\033[36m Enter Background Color: \033[0m\n"
bgcolour = gets.chomp.to_s
puts "\033[36m Colour of body text: \033[0m\n"
bgtext = gets.chomp.to_s
puts "\033[36m Booking Instructions Text Color: \033[0m\n"
bookinstructcol = gets.chomp.to_s
puts "\033[36m Button colour: \033[0m\n"
btncol = gets.chomp.to_s
puts "\033[36m Button Hover Color: \033[0m\n"
btnhovcol = gets.chomp.to_s
puts "\033[36m Modal Header Color: \033[0m\n"
modalhead = gets.chomp.to_s
puts "\033[36m Modal Text Color: \033[0m\n"
modaltextcol = gets.chomp.to_s
puts "\033[36m Service Category Color: \033[0m\n"
servicecatcol = gets.chomp.to_s
puts "\033[36m Service Category Text Color: \033[0m\n"
servicecattextcol = gets.chomp.to_s
if bgcolour.empty? && bgtext.empty?
	print "Nothing generated you didnt type anything.."
elsif bgcolour == true || bgtext.empty?
	print "\n"
print ".body" "{" "\n" "background-color: #{bgcolour}" + semicolon + closebracket
print "\n"
else bgcolour == true || bgtext == true && bookinstructcol == true && btncol == true && btnhovcol == true
	print "\n"
print "body" "{" "\n" "background: #{bgcolour}" + semicolon + "\n" + "colour: #{bgtext}" + semicolon + closebracket 
print "\n"
print"\n" ".booking-instructions" "{" + "\n" + "color: #{bookinstructcol}" + semicolon + closebracket 
print "\n"
print "\n" ".btn-success,"
print "\n" ".btn-info,"
print "\n" ".btn-danger,"
print "\n" ".btn-primary,"
print "\n" ".btn-default" "{"
print "\n" "background-image: linear-gradient(to bottom, #{btncol}" + " 0"'%' ", #{btncol}" + " 100" '%' ")" + semicolon 
print "\n" "background-repeat: repeat-x;"
print "\n" "border-color: #{btncol}" + semicolon
print "\n" "box-shadow: " "0 " "1px " "0 " "rgba (255, 255, 255, 0.1) inset" + semicolon
print "\n" "color: #fff" + semicolon 
print "\n" "text-shadow: none" + semicolon
print "\n" 
print closebracket
print "\n" 
print "\n" ".btn-success:hover,
.btn-success:focus,
.btn-success:active,
.btn-primary:hover,
.btn-primary:focus,
.btn-success:hover,
.btn-success:focus,
.btn-success:active,
.btn-success.active,
.btn-primary:hover,
.btn-primary:focus,
.btn-primary:active,
.btn-primary.active,
.btn-danger:hover,
.btn-danger:focus,
.btn-danger:active,
.btn-danger.active,
.btn-info:hover,
.btn-info:focus,
.btn-info:active,
.btn-info.active,
.btn-default:hover,
.btn-default:focus,
.btn-default:active"
print "{" 
print "\n" "background-image: linear-gradient(to bottom, #{btnhovcol}" + " 0"'%' ", #{btnhovcol}" + " 100" '%' ")" + semicolon 
print "\n" "background-repeat: repeat-x;"
print "\n" "border-color: #{btnhovcol}" + semicolon
print "\n" "color:#fff" + semicolon
print "\n" + closebracket 
print "\n"
print "\n" ".modal-header {"
print "\n" "background-color: #{modalhead}" + semicolon
print "\n" "color:#fff" + semicolon
print "\n" + closebracket
print "\n"
print "\n" ".modal-content,"
print "\n" ".modal-content h5 {"
print "\n" "color:" "#{modaltextcol}" + "!important" + semicolon 
print "\n" + closebracket
print "\n"
print "\n" ".service-categories-list {"
print "\n" "background: #{servicecatcol}" + semicolon
print "\n" "color: #{servicecattextcol}" + semicolon
print "\n" + closebracket
print "\n"

end
