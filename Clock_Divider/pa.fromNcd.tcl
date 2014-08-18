
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name Clock_Divider -dir "/home/danny/Papilio/Projects/Clock_Divider/planAhead_run_2" -part xc6slx9tqg144-2
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "/home/danny/Papilio/Projects/Clock_Divider/divider.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/danny/Papilio/Projects/Clock_Divider} }
set_property target_constrs_file "divider.ucf" [current_fileset -constrset]
add_files [list {divider.ucf}] -fileset [get_property constrset [current_run]]
link_design
read_xdl -file "/home/danny/Papilio/Projects/Clock_Divider/divider.ncd"
if {[catch {read_twx -name results_1 -file "/home/danny/Papilio/Projects/Clock_Divider/divider.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"/home/danny/Papilio/Projects/Clock_Divider/divider.twx\": $eInfo"
}
