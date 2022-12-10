export ismimetype

function ismimetype(str::AbstractString)::Bool
    mimeTypeReg = r"(application|audio|font|image|message|model|multipart|text|video)\/[a-zA-Z0-9\.\-\+]{1,100}$"i
    mimeTypeTextReg = r"^text\/[a-zA-Z0-9\.\-\+]{1,100};\s?charset=(\"[a-zA-Z0-9\.\-\+\s]{0,70}\"|[a-zA-Z0-9\.\-\+]{0,70})(\s?\([a-zA-Z0-9\.\-\+\s]{1,20}\))?$"i
    mimeTypeMultipartReg = r"^multipart\/[a-zA-Z0-9\.\-\+]{1,100}(;\s?(boundary|charset)=(\"[a-zA-Z0-9\.\-\+\s]{0,70}\"|[a-zA-Z0-9\.\-\+]{0,70})(\s?\([a-zA-Z0-9\.\-\+\s]{1,20}\))?){0,2}$"i

    return contains(str, mimeTypeReg) || contains(str, mimeTypeTextReg) || contains(str, mimeTypeMultipartReg)
end