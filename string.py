def string_manipulation(string: str):
    max_count = 0
    dic = {}
    
    for i in string:
        if i in dic:
            dic[i] =+ 1
        else:
            dic[i] = 1
    
    for i in dic:
        if dic[i] > max_count:
            max_count = dic[i]
            freqeunt_letter = i
    
    print(freqeunt_letter)
    return freqeunt_letter

string_manipulation("ggggaahytrokhgfs")
