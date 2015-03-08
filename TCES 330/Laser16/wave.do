onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testLaser16/CLK
add wave -noupdate /testLaser16/Reset
add wave -noupdate /testLaser16/B
add wave -noupdate /testLaser16/XL
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {56 ns} 0} {{Cursor 2} {490 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {319 ns}
