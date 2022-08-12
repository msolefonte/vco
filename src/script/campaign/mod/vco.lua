local vco = core:get_static_object("vco");

cm:add_first_tick_callback(
  function()
    -- TODO ADD MCT SUPPORT
    vco:trigger_custom_missions("vco");
    vco:trigger_custom_missions("vco-roc");
  end
);
