do
 function run(msg, matches)
 local reply_id = msg['id']
 local text = 'nerkh'
 local text1 ="👥 لیست قیمت های ربات Ir_Poker_Bot 👥\n==========================\n👥گروه یک ماهه👥\n💶 4000 تومان 💶\n👌قيمت ها بسيار پايين و مناسب هستند 👌"
   reply_msg(reply_id, text1, ok_cb, false)
 end
 return {
  description = "!nerkh",
  usage = " !nerkh",
  patterns = {
    "^[#/!][Pp]rice$",
	"^[Pp]rice$"
  },
  run = run
}
end
