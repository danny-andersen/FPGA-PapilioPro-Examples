
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name scrolling_display -dir "C:/Users/S243372/Dropbox/Workspaces/Projects_FPGA/scrolling_display/planAhead_run_2" -part xc6slx4tqg144-2
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/S243372/Dropbox/Workspaces/Projects_FPGA/scrolling_display/scrolling_display.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/S243372/Dropbox/Workspaces/Projects_FPGA/scrolling_display} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "scrolling_display.ucf" [current_fileset -constrset]
add_files [list {scrolling_display.ucf}] -fileset [get_property constrset [current_run]]
link_design
