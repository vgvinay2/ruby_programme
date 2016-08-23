Difference between Ruby JSON and Javascript JSON
In Ralis Console
publisher_json = {
        "publisher_jid" => "publisher_jid",
        "publisher_password" => "publisher_password",
        "node" => "publisher_node"
    }
 => {"publisher_jid"=>"publisher_jid", "publisher_password"=>"publisher_password", "node"=>"publisher_node"} 

publisher_json.to_json
 => "{\"publisher_jid\":\"publisher_jid\",\"publisher_password\":\"publisher_password\",\"node\":\"publisher_node\"}" 

Now Open console of WebBrowser and execute the above string ....Now you could see the defference between these two.

> "{\"publisher_jid\":\"publisher_jid\",\"publisher_password\":\"publisher_password\",\"node\":\"publisher_node\"}"
< "{"publisher_jid":"publisher_jid","publisher_password":"publisher_password","node":"publisher_node"}"

==========================================================================
a = "{key:'14',data:{order: '154'}}"

JSON.parse(a)

SyntaxError: unexpected tIDENTIFIER, expecting end-of-input

Valid JSON requires both property and values to be enclosed in double quotes.
It is not JSON. Your hash is stored as string not JSON. so you need eval for expected output:
> a = "{key:'14',data:{order: '154'}}"
> eval(a)
#=> {:key=>"14", :data=>{:order=>"154"}}

Let me convert your hash to json and show you how it looks and how you can parse JSON.
# sample of your hash
> hash = {key:'14',data:{order: '154'}} 

# convert hash to json and assign it to a
> a = hash.to_json 
#=> "{\"key\":\"14\",\"data\":{\"order\":\"154\"}}" 

# parse correct JSON format
> JSON.parse(a) 
#=> {"key"=>"14", "data"=>{"order"=>"154"}} 




