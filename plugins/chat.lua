local function run(msg)
if msg.text == "وضعیت" then
	return "ربات انلاین است"
end
	
if msg.text == "سلام" then
	return "سلام"
end
	
if msg.text == "خوبی" then
	return "ممنون تو خوبی؟"
end

if msg.text == "مهدی" then
	return "با بابای من چیکار داری"
end
	
if msg.text == "امیر" then
	return "با بابای من چیکار داری"
end
	
if msg.text == "بای" then
	return "بای"
end
if msg.text == "مرسی" then
	return "فدات"
end
end

return {
	description = "Chat With Robot Server", 
	usage = "chat with robot",
	patterns = {
	"^وضعیت",
	"^سلام",
	"^خوبی",
	"^مهدی",
	"^امیر",
	"^بای",
	"^مرسی",
		
		}, 
	run = run,
    --privileged = true,
	pre_process = pre_process
}
