import os

text = ''

fontfamilies = os.listdir(r'./assets/fonts')
for fontfamily in fontfamilies:
    text += '  - family: '+ fontfamily + '\n'
    fontaddress = r'./assets/fonts/'+fontfamily
    fonts = os.listdir(fontaddress)
    text += '      fonts:\n'
    for font in fonts:
        text += '        - asset: ' + fontaddress+'/' + font + '\n'


with open('./abc.txt', 'w') as file:
    file.write(text)
    



