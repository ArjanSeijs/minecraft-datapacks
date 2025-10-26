function tradetweaks:lib/jobsite
# function soaplib:api/with.storage { \
#     api:"soaplib:api/execute_at", \
#     storage: "tradetweaks:exec", \
#     path:"jobsite", \
#     function:"tradetweaks:librarian/set_enchantments", \
#     args : {}, \
# }
function soaplib:api/with.storage { \
    api:"soaplib:api/execute_at", \
    storage: "tradetweaks:exec", \
    path:"jobsite", \
    function:"tradetweaks:librarian/enchantments/lectern", \
    args : {}, \
}