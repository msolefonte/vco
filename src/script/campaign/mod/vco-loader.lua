local vco = core:get_static_object("vco");

cm:add_first_tick_callback(function()
    vco:trigger_custom_missions("vco-ie");
end);