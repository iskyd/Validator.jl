export ismacaddress

function ismacaddress(str::AbstractString, eui::Union{Int,Nothing}=nothing)::Bool
    if eui === 48
        macAddressReg = r"^(?:[0-9a-fA-F]{2}([-:\s]))([0-9a-fA-F]{2}\1){4}([0-9a-fA-F]{2})$"
        macAddressWithDots = r"^([0-9a-fA-F]{4}\.){2}([0-9a-fA-F]{4})$"

        return contains(str, macAddressReg) || contains(str, macAddressWithDots)
    elseif eui === 64
        macAddressReg = r"^(?:[0-9a-fA-F]{2}([-:\s]))([0-9a-fA-F]{2}\1){6}([0-9a-fA-F]{2})$"
        macAddressWithDots = r"^([0-9a-fA-F]{4}\.){3}([0-9a-fA-F]{4})$"

        return contains(str, macAddressReg) || contains(str, macAddressWithDots)
    else
        return ismacaddress(str, 48) || ismacaddress(str, 64)
    end
end