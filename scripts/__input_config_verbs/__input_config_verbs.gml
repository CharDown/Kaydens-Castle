// Feather disable all

//This script contains the default profiles, and hence the default bindings and verbs, for your game
//
//  Please edit this macro to meet the needs of your game!
//
//The struct return by this script contains the names of each default profile.
//Default profiles then contain the names of verbs. Each verb should be given a binding that is
//appropriate for the profile. You can create bindings by calling one of the input_binding_*()
//functions, such as input_binding_key() for keyboard keys and input_binding_mouse() for
//mouse buttons

function __input_config_verbs()
{
    return {
        keyboard_and_mouse:
        {
            up:    input_binding_key(vk_space),
            left:  input_binding_key("A"),
            right: input_binding_key("D"),

            shield: input_binding_mouse_button(mb_left),
            
            restart: input_binding_key("R"),
			
			zoomIn: input_binding_mouse_wheel_up(),
			zoomOut: input_binding_mouse_wheel_down(),
			
			Map: input_binding_key("M"),
			
			Fullscreen: input_binding_key(vk_f11),
			
        },
        
        gamepad:
        {
            up:    input_binding_gamepad_button(gp_face1),
            left:  [input_binding_gamepad_axis(gp_axislh, true),  input_binding_gamepad_button(gp_padl)],
            right: [input_binding_gamepad_axis(gp_axislh, false), input_binding_gamepad_button(gp_padr)],
          
            shield: [input_binding_gamepad_button(gp_shoulderlb), input_binding_gamepad_button(gp_shoulderrb)],
            
            restart: input_binding_gamepad_button(gp_start),
			
			zoomIn:  input_binding_gamepad_axis(gp_axisrv, true),
            zoomOut: input_binding_gamepad_axis(gp_axisrv, false), 
        
			Map: input_binding_gamepad_button(gp_select),
			
			Fullscreen: input_binding_gamepad_button(gp_padu),
			
		},
        
        touch:
        {
        }
    };
}