
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name Clock_Divider -dir "/home/danny/Papilio/Projects/Clock_Divider/planAhead_run_3" -part xc6slx9tqg144-2
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/home/danny/Papilio/Projects/Clock_Divider/divider.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/danny/Papilio/Projects/Clock_Divider} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "divider.ucf" [current_fileset -constrset]
add_files [list {divider.ucf}] -fileset [get_property constrset [current_run]]
link_design
