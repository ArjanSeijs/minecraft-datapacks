function tradetweaks:lib/jobsite { \
    storage_out: "tradetweaks:exec", \
    path_out:"jobsite", \
}

return run function soaplib:api/with.storage { \
    api:"soaplib:api/execute_at", \
    storage: "tradetweaks:exec", \
    path:"jobsite", \
    function:"tradetweaks:enchanter/set_trades.1", \
    args : {}, \
}