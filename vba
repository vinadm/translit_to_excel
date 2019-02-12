Function Translit(Txt As String) As String
 
    Dim Rus As Variant
    Rus = Array("а", "б", "в", "г", "д", "е", "ё", "ж", "з", "и", "й", "к", _
    "л", "м", "н", "о", "п", "р", "с", "т", "у", "ф", "х", "ц", "ч", "ш", _
    "щ", "ъ", "ы", "ь", "э", "ю", "я", "А", "Б", "В", "Г", "Д", "Е", _
    "Ё", "Ж", "З", "И", "Й", "К", "Л", "М", "Н", "О", "П", "Р", _
    "С", "Т", "У", "Ф", "Х", "Ц", "Ч", "Ш", "Щ", "Ъ", "Ы", "Ь", "Э", "Ю", "Я")
 
    Dim Eng As Variant
    Eng = Array("a", "b", "v", "g", "d", "e", "jo", "zh", "z", "i", "j", _
    "k", "l", "m", "n", "o", "p", "r", "s", "t", "u", "f", "kh", "ts", "ch", _
    "sh", "sch", "''", "y", "'", "e", "yu", "ya", "A", "B", "V", "G", "D", _
    "E", "JO", "ZH", "Z", "I", "J", "K", "L", "M", "N", "O", "P", "R", _
    "S", "T", "U", "F", "KH", "TS", "CH", "SH", "SCH", "''", "Y", "'", "E", "YU", "YA")
     
    For I = 1 To Len(Txt)
        с = Mid(Txt, I, 1)
     
        flag = 0
        For J = 0 To 65
            If Rus(J) = с Then
                outchr = Eng(J)
                flag = 1
                Exit For
            End If
        Next J
        If flag Then outstr = outstr & outchr Else outstr = outstr & с
    Next I
     
    Translit = outstr
     
End Function
