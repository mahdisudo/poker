function run(msg, matches)
local url , res = http.request('http://www.omdbapi.com/?t='..matches[2])
if res ~= 200 then return "No connection" end
local jdat = json:decode(url)
local text = '<code>Title : </code>'..jdat.Title..'\n<code>Year : </code>'..jdat.Year..'\n<code>Runtime : </code>'..jdat.Runtime..'\n<code>Genre : </code>'..jdat.Genre..'\n<code>Language : </code>'..jdat.Language..'\n\n@Mehdi_Morphin'
local sticker = jdat.Poster
download_to_file(sticker,'sticker.webp')
 if jdat.Poster then
    local file = '/tmp/sticker.webp'
    send_document(get_receiver(msg), file, ok_cb, false)
    end
return reply_msg(msg.id,text,ok_cb,false)
end
return {
  patterns = {"^[/!](imdb) (.*)$"},
run = run 
}
