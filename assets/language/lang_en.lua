return {
    -- Info
    sureText={
        back="Press again to Back",
        quit="Press again to Quit",
        reset="Press again to Reset",
        enter="Press again to Enter",
    },
    setting_needRestart="This setting takes effect after restart",
    noMode="Cannot load mode '$1': $2",
    interior_crash="Sandbox crashed: performance rate overflow",
    musicroom_lowVolume="Please turn up BGM volume (At bottom right)",

    -- Game
    clearName={
        "Single",
        "Double",
        "Triple",
        "Techrash",
        "Pentacrash",
        "Hexacrash",
        "Heptacrash",
        "Octacrash",
        "Nonacrash",
        "Decacrash",
        "Undecacrash",
        "Dodecacrash",
        "Tridecacrash",
        "Tetradecacrash",
        "Pentadecacrash",
        "Hexadecacrash",
        "Heptadecacrash",
        "Octadecacrash",
        "Nonadecacrash",
        "Ultracrash",
        "Impossicrash",
    },

    combo_small="$1 Combo",
    combo_large="$1 Combo!",
    mega_combo="MEGACMB",

    b2b='B2B',
    spin='$1-spin',
    tuck='Tuck',

    allClear='ALL CLEAR',
    halfClear='Half Clear',

    -- Key setting
    keyset_mino_moveLeft=   "Move Left",
    keyset_mino_moveRight=  "Move Right",
    keyset_mino_rotateCW=   "Twist CW",
    keyset_mino_rotateCCW=  "Twist CCW",
    keyset_mino_rotate180=  "Twist 180",
    keyset_mino_softDrop=   "Soft Drop",
    keyset_mino_hardDrop=   "Hard Drop",
    keyset_mino_holdPiece=  "Hold Piece",
    keyset_mino_sonicDrop=  "Sonic Drop",
    keyset_mino_sonicLeft=  "Sonic Left",
    keyset_mino_sonicRight= "Sonic Right",

    keyset_puyo_moveLeft=   "Move Left",
    keyset_puyo_moveRight=  "Move Right",
    keyset_puyo_rotateCW=   "Rotate CW",
    keyset_puyo_rotateCCW=  "Rotate CCW",
    keyset_puyo_rotate180=  "Rotate180",
    keyset_puyo_softDrop=   "Soft Drop",
    keyset_puyo_hardDrop=   "Hard Drop",

    keyset_gem_swapLeft=    "Swap Left",
    keyset_gem_swapRight=   "Swap Right",
    keyset_gem_swapUp=      "Swap Up",
    keyset_gem_swapDown=    "Swap Down",
    keyset_gem_twistCW=    "Rotate CW",
    keyset_gem_twistCCW=   "Rotate CCW",
    keyset_gem_twist180=   "Rotate180",
    keyset_gem_moveLeft=    "Cursor Left",
    keyset_gem_moveRight=   "Cursor Right",
    keyset_gem_moveUp=      "Cursor Up",
    keyset_gem_moveDown=    "Cursor Down",

    keyset_func1= "Function 1",
    keyset_func2= "Function 2",
    keyset_func3= "Function 3",
    keyset_func4= "Function 4",
    keyset_func5= "Function 5",
    keyset_func6= "Function 6",

    keyset_sys_restart= "Restart",
    keyset_sys_chat=    "Chat",
    keyset_sys_up=      "Up",
    keyset_sys_down=    "Down",
    keyset_sys_left=    "Left",
    keyset_sys_right=   "Right",
    keyset_sys_select=  "Select",
    keyset_sys_back=    "Back",

    keyset_pressKey="Press a key",
    keyset_deleted= "*Deleted*",
    keyset_info=    "[Esc]: cancel\n[Backspace]: delete",

    stick2_switch="2-way joystick",
    stick4_switch="4-way joystick",
    setting_touch_button="Add/Remove button",
    setting_touch_buttonSize="Button size",
    settinh_touch_buttonShape="Change button shape",
    setting_touch_stickSize="Stick length",
    setting_touch_ballSize="Stick size",

    -- Widget texts
    button_back="Back",

    title_positioning="Positioning",
    title_mode_mino="Graph",-- Traslating note: from "Knowledge Graph" from AI domain
    title_settings="Settings",

    setting_das="DAS",
    setting_arr="ARR",
    setting_sdarr="SDARR",
    setting_dasHalt="DAS halt",
    setting_hdLockA="Auto hard-drop lock",
    setting_hdLockM="Manual hard-drop lock",
    setting_shakeness="Shakeness",
    setting_hitWavePower="Hitwave Power",

    setting_mainVol="Main Volume",
    setting_bgm="BGM",
    setting_sfx="SFX",
    setting_vib="VIB",
    setting_handling="Handling...",
    setting_keymapping="Key mappings...",
    setting_enableTouching="Enable touch control",
    setting_touching="Touch controls...",
    setting_test="Test",

    setting_sysCursor="External cursor",
    setting_clickFX="Click FX",
    setting_power="Terminal State",
    setting_clean="VRAM Boost",
    setting_fullscreen="Fullscreen",
    setting_portrait="Portrait",
    setting_autoMute="Mute when idle",
    setting_showTouch="Show touches",

    setting_maxFPS="Max FPS",
    setting_updRate="Update rate",
    setting_drawRate="Draw rate",
    setting_msaa="MSAA",

    main_in_dig="Dig Practice",
    main_in_sprint="40 Lines",
    main_in_marathon="Marathon",
    main_in_tutorial="Tutorial",
    main_in_sandbox="Sandbox",
    main_in_settings="Settings",

    main_out_settings="Settings",
    main_out_stat="Statistics",
    main_out_dict="Dictionary",
    main_out_lang="Language",
    main_out_about="System info",
    main_out_single="Single",
    main_out_multi="Multiple",

    title_musicroom="Musicroom",
    musicroom_fullband='Full Band',

    about_title="About",
    about_love="Z-UI powered by LÖVE",
    about_module="Modules:",
    about_toolchain="Toolchain:",
    about_peopleLost="You lost $1 !",

    -- Mode name
    exteriorModeInfo={
        marathon=              {"Marathon","Clear 200 lines with acceleration"},
        techrash_easy=         {"Techrash Easy","Clear more Techrash as you can"},
        techrash_hard=         {"Techrash Hard","Clear more Techrash as you can, but not too close"},
        classic_lo=            {"Classic LO","Classic game in low speed"},
        classic_hi=            {"Classic HI","Classic game in high speed"},
        lightspeed_lo=         {"Lightspeed LO","Light speed with low difficulty to practice"},
        lightspeed_hi=         {"Lightspeed HI","Light speed challenging high difficulty"},
        lightspeed_ti=         {"Lightspeed TI","Light speed\nTerror Instinct"},
        lightspeed_hd=         {"Lightspeed HD","Light speed with hidden blocks"},
        lightspeed_ex=         {"Lightspeed EX","Light speed\nExtra challenge"},
        combo_practice=        {"Combo Practice","Clear more combo questions"},
        tsd_practice=          {"TSD Practice","Clear more TSD questions"},
        tsd_easy=              {"TSD Easy","Clear more TSDs in a row"},
        tsd_hard=              {"TSD Hard","Clear more TSDs in a row, but not at same column"},
        pc_practice=           {"PC Practice","Clear more PC questions"},
        pc_easy=               {"PC Easy","Make more PC in a row"},
        pc_hard=               {"PC Hard","Make more PC in a row with harder limits"},
        exam_marathon=         {"Exam Marathon","Exam_01"},
        dig_practice=          {"Dig Practice","Clear the garbage lines"},
        dig_40=                {"Dig 40","Clear 40 random garbage lines"},
        dig_100=               {"Dig 100","Clear 100 random garbage lines"},
        dig_400=               {"Dig 400","Clear 400 random garbage lines"},
        dig_shale=             {"Dig Shale","Clear some compilicated random garbage lines"},
        dig_slate=             {"Dig Slate","Clear some compilicated random garbage lines"},
        dig_checker=           {"Dig Checker","Clear ten checker board garbage lines"},
        survivor_cheese=       {"Survivor Cheese","Survive under scattered attacks"},
        survivor_b2b=          {"Survivor B2b","Survive under fierce attacks"},
        survivor_spike=        {"Survivor Spike","Survive under huge spike attacks"},
        backfire_100=          {"Backfire 100","Clear 100 lines, but with backfire"},
        backfire_amplify_100=  {"Backfire Amplify 100","Clear 100 lines, but with amplified backfire"},
        backfire_cheese_100=   {"Backfire Cheese 100","Clear 100 lines, but with cheese backfire"},
        exam_dig=              {"Exam Dig","Exam_02"},
        sprint_40=             {"Sprint 40","Clear 40 lines"},
        sprint_10=             {"Sprint 10","Clear 10 lines"},
        sprint_obstacle_4=     {"Sprint 4 Obstacle","Clear 4 lines with random starting field"},
        sprint_200=            {"Sprint 200","Clear 200 lines"},
        sprint_1000=           {"Sprint 1000","Clear 1000 lines"},
        sprint_drought_40=     {"Sprint 40 Drought","Clear 40 lines without I piece"},
        sprint_flood_40=       {"Sprint 40 Flood","Clear 40 lines with too much S & Z"},
        sprint_penta_40=       {"Sprint 40 Penta","Clear 40 lines with pentominoes"},
        sprint_sym_40=         {"Sprint 40 Sym","Clear 40 lines with symmetry field"},
        sprint_mph_40=         {"Sprint 40 MPH","Clear 40 lines without sequence information"},
        sprint_delay_20=       {"Sprint 20 Delay","Clear 20 lines with massive input delay"},
        sprint_wind_40=        {"Sprint 40 Wind","Clear 40 lines under strong wind"},
        sprint_lock_20=        {"Sprint 20 Lock","Clear 20 lines without rotating piece"},
        sprint_fix_20=         {"Sprint 20 Fix","Clear 20 lines without moving piece"},
        sprint_hide_40=        {"Sprint 40 Hide","Clear 40 lines with disappearing field"},
        sprint_invis_40=       {"Sprint 40 Invis","Clear 40 lines with invisible field"},
        sprint_blind_40=       {"Sprint 40 Blind","Clear 40 lines with blindfold"},
        sprint_big_100=        {"Sprint 100 Big","Clear 100 lines with big pieces"},
        sprint_small_20=       {"Sprint 20 Small","Clear 20 lines with small pieces"},
        sprint_low_40=         {"Sprint 40 Low","Clear 40 lines with low field"},
        sprint_flip_40=        {"Sprint 40 Flip","Clear 40 lines with flipping field\n*Angular Momentum*"},
        sprint_dizzy_40=       {"Sprint 40 Dizzy","Clear 40 lines with strange direction\n*Hello Cleveland*"},
        sprint_float_40=       {"Sprint 40 Float","Clear 40 lines without gravity"},
        sprint_randctrl_40=    {"Sprint 40 Random","Clear 40 lines with broken input device"},
        exam_rule=             {"Exam Rule","Exam_03"},
    },

    -- Level
    tutorial_basic="The Basics",
    tutorial_sequence="Next & Hold",
    tutorial_stackBasic="Basic Stacking",
    tutorial_twoRotatingKey="Two-way Rotating",
    tutorial_stackAdvanced="Advanced Stacking",
    tutorial_finesse="Finesse",

    tutorial_pass="PASS",

    tutorial_basic_1="Welcome to Techmino!",
    tutorial_basic_2="1. The Basics",
    tutorial_basic_3="Use the left and right keys to move your current piece.",
    tutorial_basic_4="Press the hard drop key to place the piece into the field.",
    tutorial_basic_5="You can also rotate the piece using the rotation keys.",

    tutorial_sequence_1="2. Next & Hold",
    tutorial_sequence_2="Oops, this piece seems doesn't fit into the hole…",
    tutorial_sequence_3="…but now, you can see what pieces are coming next. ",
    tutorial_sequence_4="Use the hold key to adjust the order of the pieces.",

    tutorial_stackBasic_1="3. Basic Stacking",
    tutorial_stackBasic_m1="Please follow the guide",
    tutorial_stackBasic_m2="At first, it's recommened to keep the upper surface flatter",
    tutorial_stackBasic_m3="Pieces are often placed on lying position, not standing position",
    tutorial_stackBasic_m4="Flat upper surface is easier to keep, avoid making holes",
    tutorial_stackBasic_m5="You were usually awarded more at clearing four lines at one time, try make another one",
    tutorial_stackBasic_m6="Try to finish the Techrash using the last pieces without guide",

    tutorial_twoRotatingKey_1="4. Two-way Rotating",
    tutorial_twoRotatingKey_m1="Please follow the guide, but rotating least times",
    tutorial_twoRotatingKey_m2="If you can rotate CCW one time, don't rotate CCW three times",
    tutorial_twoRotatingKey_m3="Not only waste effort, it slows down your speed",
    tutorial_twoRotatingKey_m4="You should already decided where to place, do not rely on shadow piece.",
    tutorial_twoRotatingKey_unnecessaryRotation="Redundant Rotation",
}
