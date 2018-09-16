
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name proj2 -dir "/home/pedro/Documents/unb/labCD/proj2/planAhead_run_2" -part xc3s100ecp132-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/home/pedro/Documents/unb/labCD/proj2/adder.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/pedro/Documents/unb/labCD/proj2} }
set_property target_constrs_file "adder.ucf" [current_fileset -constrset]
add_files [list {adder.ucf}] -fileset [get_property constrset [current_run]]
link_design
