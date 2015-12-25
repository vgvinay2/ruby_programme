a = "{key:'14',data:{order: '154'}}"

JSON.parse(a)

SyntaxError: unexpected tIDENTIFIER, expecting end-of-input


It is not JSON. Your hash is stored as string not JSON. so you need eval for expected output:
