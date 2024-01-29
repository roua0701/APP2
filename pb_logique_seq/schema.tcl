highlight_objects [get_bd_cells M5_parametre_1] -color red
highlight_objects [get_bd_cells M6_parametre_2] -color red
highlight_objects [get_bd_cells M8_commande] -color red
highlight_objects [get_bd_cells M1_decodeur_i2s/MEF_decodeur_i2s] -color red


set curDir [get_property DIRECTORY [current_project]]


set_property location {1 178 353} [get_bd_cells M1_decodeur_i2s]
set_property location {2 448 219} [get_bd_cells M2_fonction_distortion_dure1]
set_property location {2 434 305} [get_bd_cells M3_fonction_distorsion_dure2]
set_property location {2 410 384} [get_bd_cells M4_fonction3]
set_property location {2.5 737 268} [get_bd_cells Multiplexeur_choix_fonction]
set_property location {1 139 570} [get_bd_cells M9_codeur_i2s]
set_property location {2 429 734} [get_bd_cells M8_commande]
set_property location {3.5 1059 166} [get_bd_cells M5_parametre_1]
set_property location {4 1057 59} [get_bd_cells parametre_0]
set_property location {4 1026 341} [get_bd_cells M6_parametre_2]
set_property location {4 1070 477} [get_bd_cells M7_parametre_3]
set_property location {4.5 1369 284} [get_bd_cells Multiplexeur_choix_parametre]
set_property location {5.5 1637 268} [get_bd_cells M10_conversion_affichage]
set_property location {-72 570} [get_bd_ports o_pbdat]
set_property location {-134 728} [get_bd_ports i_btn]
set_property location {-116 750} [get_bd_ports i_sw]
set_property location {-89 380} [get_bd_ports clk_100MHz]
set_property location {-95 357} [get_bd_ports i_lrc]
set_property location {-96 341} [get_bd_ports i_recdat]
set_property location {2130 272} [get_bd_ports JPmod]
set_property location {2130 120} [get_bd_ports o_param]
set_property location {2130 700} [get_bd_ports o_sel_fct]
set_property location {2130 725} [get_bd_ports o_sel_par]


set_property USER_COMMENTS.comment_1 {Modules à modifier:
MEF_decodeur_i2s (dans M1_decodeur_i2s)
M5_parametre_1
M6_parametre_2
M8_commande
Pour plus de clarté, vous pouvez cacher les fils pour les horloges
et les resets dans les paramètres (engrenage en haut a droite de cette fenêtre).
} [current_bd_design]

