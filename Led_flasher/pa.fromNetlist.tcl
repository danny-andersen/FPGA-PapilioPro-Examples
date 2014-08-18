
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name Led_flasher -dir "C:/Users/S243372/Dropbox/Workspaces/Projects_FPGA/Led_flasher/planAhead_run_3" -part xc6slx9tqg144-2
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/S243372/Dropbox/Workspaces/Projects_FPGA/Led_flasher/led_flash.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/S243372/Dropbox/Workspaces/Projects_FPGA/Led_flasher} {ipcore_dir} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "led_flash.ucf" [current_fileset -constrset]
add_files [list {led_flash.ucf}] -fileset [get_property constrset [current_run]]
link_design
