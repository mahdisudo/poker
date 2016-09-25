do
 function run(msg, matches)
 local reply_id = msg['id']
 local text = 'nerkh'
 local text1 ="<code>ربات</code> <b>Ir_poker</b>\n==========================\n<code>👥گروه یک ماهه👥\n💶 4000 تومان 💶\n👌قيمت ها بسيار پايين و مناسب هستند 👌</code>"
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
