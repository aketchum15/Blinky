#Adam Ketchum, Purdue University
#ketchua@purdue.edu
#October 2020

scenario = "blinky";
no_logfile = true;
write_codes = true;
active_buttons = 3;
button_codes = 1, 2, 3;
response_matching = simple_matching;
default_clear_active_stimuli = true;
pcl_file = "Blinky.pcl";

#determines which list comes fist, when 1 experiment will alternate list 1, list 2, etc, when 2 will alternate list 2, list 1, etc.
$first_list = 2;

#size in px of the width and height of the stimuli, native resolution is 1080x1080
$width_height = 540;

#how long after the stimuli before the response trial shows
$delay_before_response = 500;

#duration of the response trial
$response_window = 2000;

#max duration of blank screen after response window
$max_post_response_delay = 1500;

#min duration of blank screen after response window
$min_post_response_delay = 500;

#number of blocks per session, should be even
$num_blocks = 2;

#time between start of video and sending of second port code (ms)
$code_delay = 1333;

#number of trials per block
$num_trials = 24;

begin;

#########################WRAPPERS#########################
text {caption = "$first_list";} first_list_wrapper;
text {caption = "$num_blocks";} num_blocks_wrapper;
text {caption = "$num_trials";} num_trials_wrapper;
text {caption = "$max_post_response_delay";} max_post_response_delay_wrapper;
text {caption = "$min_post_response_delay";} min_post_response_delay_wrapper;

#########################TRIALS#########################

trial {
	description = "PINK, square, horizontal to BLUE, square, horizontal";
	
	stimulus_event {
		video {
			filename = "Videos/Psh_Bsh_111_115.avi"; 
			width = $width_height;
			height = $width_height;
			use_audio = true;
		};
		port_code = 111;
	};
	stimulus_event {
		nothing{};
		port_code = 115;
		deltat = $code_delay;
	};
} Psh_Bsh_111_115;

trial {
	description = "PINK, square, vertical to BLUE, square, vertical";
	
	stimulus_event {
		video {
			filename = "Videos/Psv_Bsv_112_116.avi"; 
			width = $width_height;
			height = $width_height;
			use_audio = true;
		};
		port_code = 112;
	};
	stimulus_event {
		nothing{};
		port_code = 116;
		deltat = $code_delay;
	};
} Psv_Bsv_112_116;

trial {
	description = "PINK, circle, horizontal to BLUE circle, horizontal";
	
	stimulus_event {
		video {
			filename = "Videos/Pch_Bch_113_117.avi"; 
			width = $width_height;
			height = $width_height;
			use_audio = true;
		};
		port_code = 113;
	};
	stimulus_event {
		nothing{};
		port_code = 117;
		deltat = $code_delay;
	};
} Pch_Bch_113_117;

trial {
	description = "PINK, circle, vertical to BLUE, circle, vertical";
	
	stimulus_event {
		video {
			filename = "Videos/Pcv_Bcv_114_118.avi"; 
			width = $width_height;
			height = $width_height;
			use_audio = true;
		};
		port_code = 114;
	};
	stimulus_event {
		nothing{};
		port_code = 118;
		deltat = $code_delay;
	};
} Pcv_Bcv_114_118;

trial {
	description = "BLUE, square, horizontal to PINK, square, horizontal ";
	
	stimulus_event {
		video {
			filename = "Videos/Bsh_Psh_115_111.avi"; 
			width = $width_height;
			height = $width_height;
			use_audio = true;
		};
		port_code = 115;
	};
	stimulus_event {
		nothing{};
		port_code = 111;
		deltat = $code_delay;
	};
} Bsh_Psh_115_111;

trial {
	description = "BLUE, square, vertical to PINK, square, vertical ";
	
	stimulus_event {
		video {
			filename = "Videos/Bsv_Psv_116_112.avi"; 
			width = $width_height;
			height = $width_height;
			use_audio = true;
		};
		port_code = 116;
	};
	stimulus_event {
		nothing{};
		port_code = 112;
		deltat = $code_delay;
	};
} Bsv_Psv_116_112;

trial {
	description = "BLUE, circle, horizontal to PINK, circle, horizontal ";
	
	stimulus_event {
		video {
			filename = "Videos/Bch_Pch_117_113.avi"; 
			width = $width_height;
			height = $width_height;
			use_audio = true;
		};
		port_code = 117;
	};
	stimulus_event {
		nothing{};
		port_code = 113;
		deltat = $code_delay;
	};
} Bch_Pch_117_113;

trial {
	description = "BLUE, circle, vertical to PINK, circle, vertical ";
	
	stimulus_event {
		video {
			filename = "Videos/Bcv_Pcv_118_114.avi"; 
			width = $width_height;
			height = $width_height;
			use_audio = true;
		};
		port_code = 118;
	};
	stimulus_event {
		nothing{};
		port_code = 114;
		deltat = $code_delay;
	};
} Bcv_Pcv_118_114;

trial {
	description = "pink, SQUARE, horizontal to pink, CIRCLE, horizontal";
	
	stimulus_event {
		video {
			filename = "Videos/pSh_pCh_121_123.avi"; 
			width = $width_height;
			height = $width_height;
			use_audio = true;
		};
		port_code = 121;
	};
	stimulus_event {
		nothing{};
		port_code = 123;
		deltat = $code_delay;
	};
} pSh_pCh_121_123;

trial {
	description = "pink, SQUARE, vertical to pink, CIRCLE, vertical";
	
	stimulus_event {
		video {
			filename = "Videos/pSv_pCv_122_124.avi"; 
			width = $width_height;
			height = $width_height;
			use_audio = true;
		};
		port_code = 122;
	};
	stimulus_event {
		nothing{};
		port_code = 124;
		deltat = $code_delay;
	};
} pSv_pCv_122_124;

trial {
	description = "pink, CIRCLE, horizontal to pink SQUARE, horizontal";
	
	stimulus_event {
		video {
			filename = "Videos/pCh_pSh_123_121.avi"; 
			width = $width_height;
			height = $width_height;
			use_audio = true;
		};
		port_code = 123;
	};
	stimulus_event {
		nothing{};
		port_code = 121;
		deltat = $code_delay;
	};
} pCh_pSh_123_121;

trial {
	description = "pink, CIRCLE, vertical to pink, SQUARE, vertical";
	
	stimulus_event {
		video {
			filename = "Videos/pCv_pSv_124_122.avi"; 
			width = $width_height;
			height = $width_height;
			use_audio = true;
		};
		port_code = 124;
	};
	stimulus_event {
		nothing{};
		port_code = 122;
		deltat = $code_delay;
	};
} pCv_pSv_124_122;

trial {
	description = "blue, SQUARE, horizontal to blue, CIRCLE, horizontal";
	
	stimulus_event {
		video {
			filename = "Videos/bSh_bCh_125_127.avi"; 
			width = $width_height;
			height = $width_height;
			use_audio = true;
		};
		port_code = 125;
	};
	stimulus_event {
		nothing{};
		port_code = 127;
		deltat = $code_delay;
	};
} bSh_bCh_125_127;

trial {
	description = "blue, SQUARE, vertical to blue, CIRCLE, vertical";
	
	stimulus_event {
		video {
			filename = "Videos/bSv_bCv_126_128.avi"; 
			width = $width_height;
			height = $width_height;
			use_audio = true;
		};
		port_code = 126;
	};
	stimulus_event {
		nothing{};
		port_code = 128;
		deltat = $code_delay;
	};
} bSv_bCv_126_128;

trial {
	description = "blue, CIRCLE, horizontal to blue SQUARE, horizontal";
	
	stimulus_event {
		video {
			filename = "Videos/bCh_bSh_127_125.avi"; 
			width = $width_height;
			height = $width_height;
			use_audio = true;
		};
		port_code = 127;
	};
	stimulus_event {
		nothing{};
		port_code = 125;
		deltat = $code_delay;
	};
} bCh_bSh_127_125;

trial {
	description = "blue, CIRCLE, vertical to blue, SQUARE, vertical";
	
	stimulus_event {
		video {
			filename = "Videos/bCv_bSv_128_126.avi"; 
			width = $width_height;
			height = $width_height;
			use_audio = true;
		};
		port_code = 128;
	};
	stimulus_event {
		nothing{};
		port_code = 126;
		deltat = $code_delay;
	};
} bCv_bSv_128_126;

trial {
	description = "pink, square, HORIZONTAL to pink, square, VERTICAL";
	
	stimulus_event {
		video {
			filename = "Videos/psH_psV_131_132.avi"; 
			width = $width_height;
			height = $width_height;
			use_audio = true;
		};
		port_code = 131;
	};
	stimulus_event {
		nothing{};
		port_code = 132;
		deltat = $code_delay;
	};
} psH_psV_131_132;

trial {
	description = "pink, square, VERTICAL to pink, square, HORIZONTAL";
	
	stimulus_event {
		video {
			filename = "Videos/psV_psH_132_131.avi"; 
			width = $width_height;
			height = $width_height;
			use_audio = true;
		};
		port_code = 132;
	};
	stimulus_event {
		nothing{};
		port_code = 131;
		deltat = $code_delay;
	};
} psV_psH_132_131;

trial {
	description = "pink, circle, HORIZONTAL to pink, circle, VERTICAL";
	
	stimulus_event {
		video {
			filename = "Videos/pcH_pcV_133_134.avi"; 
			width = $width_height;
			height = $width_height;
			use_audio = true;
		};
		port_code = 133;
	};
	stimulus_event {
		nothing{};
		port_code = 134;
		deltat = $code_delay;
	};
} pcH_pcV_133_134;

trial {
	description = "pink, circle, VERTICAL to pink, circle, HORIZONTAL";
	
	stimulus_event {
		video {
			filename = "Videos/pcV_pcH_134_133.avi"; 
			width = $width_height;
			height = $width_height;
			use_audio = true;
		};
		port_code = 134;
	};
	stimulus_event {
		nothing{};
		port_code = 133;
		deltat = $code_delay;
	};
} pcV_pcH_134_133;

trial {
	description = "blue, square, HORIZONTAL to blue, square, VERTICAL";
	
	stimulus_event {
		video {
			filename = "Videos/bsH_bsV_135_136.avi"; 
			width = $width_height;
			height = $width_height;
			use_audio = true;
		};
		port_code = 135;
	};
	stimulus_event {
		nothing{};
		port_code = 136;
		deltat = $code_delay;
	};
} bsH_bsV_135_136;

trial {
	description = "blue, square, VERTICAL to blue, square, HORIZONTAL";
	
	stimulus_event {
		video {
			filename = "Videos/bsV_bsH_136_135.avi"; 
			width = $width_height;
			height = $width_height;
			use_audio = true;
		};
		port_code = 136;
	};
	stimulus_event {
		nothing{};
		port_code = 135;
		deltat = $code_delay;
	};
} bsV_bsH_136_135;

trial {
	description = "blue, circle, HORIZONTAL to blue, circle, VERTICAL";
	
	stimulus_event {
		video {
			filename = "Videos/bcH_bcV_137_138.avi"; 
			width = $width_height;
			height = $width_height;
			use_audio = true;
		};
		port_code = 137;
	};
	stimulus_event {
		nothing{};
		port_code = 138;
		deltat = $code_delay;
	};
} bcH_bcV_137_138;

trial {
	description = "blue, circle, VERTICAL to blue, circle, HORIZONTAL";
	
	stimulus_event {
		video {
			filename = "Videos/bcV_bcH_138_137.avi"; 
			width = $width_height;
			height = $width_height;
			use_audio = true;
		};
		port_code = 138;
	};
	stimulus_event {
		nothing{};
		port_code = 137;
		deltat = $code_delay;
	};
} bcV_bcH_138_137;

trial {
	description = "pink, SQUARE, HORIZNTAL to pink, CIRCLE, VERTICAL";
	
	stimulus_event {
		video {
			filename = "Videos/pSH_pCV_211_214.avi"; 
			width = $width_height;
			height = $width_height;
			use_audio = true;
		};
		port_code = 211;
	};
	stimulus_event {
		nothing{};
		port_code = 214;
		deltat = $code_delay;
	};
} pSH_pCV_211_214;

trial {
	description = "pink, SQUARE, VERTICAL to pink, CIRCLE, HORIZONTAL";
	
	stimulus_event {
		video {
			filename = "Videos/pSV_pCH_212_213.avi"; 
			width = $width_height;
			height = $width_height;
			use_audio = true;
		};
		port_code = 212;
	};
	stimulus_event {
		nothing{};
		port_code = 213;
		deltat = $code_delay;
	};
} pSV_pCH_212_213;

trial {
	description = "pink, CIRCLE, HORIZONTAL to pink, SQUARE, VERTICAL";
	
	stimulus_event {
		video {
			filename = "Videos/pCH_pSV_213_212.avi"; 
			width = $width_height;
			height = $width_height;
			use_audio = true;
		};
		port_code = 213;
	};
	stimulus_event {
		nothing{};
		port_code = 212;
		deltat = $code_delay;
	};
} pCH_pSV_213_212;

trial {
	description = "pink, CIRCLE, VERTICAL to pink, SQUARE, HORIZNTAL";
	
	stimulus_event {
		video {
			filename = "Videos/pCV_pSH_214_211.avi"; 
			width = $width_height;
			height = $width_height;
			use_audio = true;
		};
		port_code = 214;
	};
	stimulus_event {
		nothing{};
		port_code = 211;
		deltat = $code_delay;
	};
} pCV_pSH_214_211;

trial {
	description = "blue, SQUARE, HORIZNTAL to blue, CIRCLE, VERTICAL";
	
	stimulus_event {
		video {
			filename = "Videos/bSH_bCV_215_218.avi"; 
			width = $width_height;
			height = $width_height;
			use_audio = true;
		};
		port_code = 215;
	};
	stimulus_event {
		nothing{};
		port_code = 218;
		deltat = $code_delay;
	};
} bSH_bCV_215_218;

trial {
	description = "blue, SQUARE, VERTICAL to blue, CIRCLE, HORIZONTAL";
	
	stimulus_event {
		video {
			filename = "Videos/bSV_bCH_216_217.avi"; 
			width = $width_height;
			height = $width_height;
			use_audio = true;
		};
		port_code = 216;
	};
	stimulus_event {
		nothing{};
		port_code = 217;
		deltat = $code_delay;
	};
} bSV_bCH_216_217;

trial {
	description = "blue, CIRCLE, HORIZONTAL to blue, SQUARE, VERTICAL";
	
	stimulus_event {
		video {
			filename = "Videos/bCH_bSV_217_216.avi"; 
			width = $width_height;
			height = $width_height;
			use_audio = true;
		};
		port_code = 217;
	};
	stimulus_event {
		nothing{};
		port_code = 216;
		deltat = $code_delay;
	};
} bCH_bSV_217_216;

trial {
	description = "blue, CIRCLE, VERTICAL to blue, SQUARE, HORIZNTAL";
	
	stimulus_event {
		video {
			filename = "Videos/bCV_bSH_218_215.avi"; 
			width = $width_height;
			height = $width_height;
			use_audio = true;
		};
		port_code = 218;
	};
	stimulus_event {
		nothing{};
		port_code = 215;
		deltat = $code_delay;
	};
} bCV_bSH_218_215;

trial {
	description = "PINK, square, HORIZONTAL to BLUE, square, VERTICAL";
	
	stimulus_event {
		video {
			filename = "Videos/PsH_BsV_221_226.avi"; 
			width = $width_height;
			height = $width_height;
			use_audio = true;
		};
		port_code = 221;
	};
	stimulus_event {
		nothing{};
		port_code = 226;
		deltat = $code_delay;
	};
} PsH_BsV_221_226;

trial {
	description = "PINK, square, VERTICAL to BLUE, square, HORIZONTAL";
	
	stimulus_event {
		video {
			filename = "Videos/PsV_BsH_222_225.avi"; 
			width = $width_height;
			height = $width_height;
			use_audio = true;
		};
		port_code = 222;
	};
	stimulus_event {
		nothing{};
		port_code = 225;
		deltat = $code_delay;
	};
} PsV_BsH_222_225;

trial {
	description = "PINK, circle, HORIZONTAL to BLUE, circle, VERTICAL";
	
	stimulus_event {
		video {
			filename = "Videos/PcH_BcV_223_228.avi"; 
			width = $width_height;
			height = $width_height;
			use_audio = true;
		};
		port_code = 223;
	};
	stimulus_event {
		nothing{};
		port_code = 228;
		deltat = $code_delay;
	};
} PcH_BcV_223_228;

trial {
	description = "PINK, circle, VERTICAL to BLUE, circle, HORIZONTAL";
	
	stimulus_event {
		video {
			filename = "Videos/PcV_BcH_224_227.avi"; 
			width = $width_height;
			height = $width_height;
			use_audio = true;
		};
		port_code = 224;
	};
	stimulus_event {
		nothing{};
		port_code = 227;
		deltat = $code_delay;
	};
} PcV_BcH_224_227;

trial {
	description = "BLUE, square, HORIZONTAL to PINK, square, VERTICAL";
	
	stimulus_event {
		video {
			filename = "Videos/BsH_PsV_225_222.avi"; 
			width = $width_height;
			height = $width_height;
			use_audio = true;
		};
		port_code = 225;
	};
	stimulus_event {
		nothing{};
		port_code = 222;
		deltat = $code_delay;
	};
} BsH_PsV_225_222;

trial {
	description = "BLUE, square, VERTICAL to PINK, square, HORIZONTAL";
	
	stimulus_event {
		video {
			filename = "Videos/BsV_PsH_226_221.avi"; 
			width = $width_height;
			height = $width_height;
			use_audio = true;
		};
		port_code = 226;
	};
	stimulus_event {
		nothing{};
		port_code = 221;
		deltat = $code_delay;
	};
} BsV_PsH_226_221;

trial {
	description = "BLUE, circle, HORIZONTAL to PINK, circle, VERTICAL";
	
	stimulus_event {
		video {
			filename = "Videos/BcH_PcV_227_224.avi"; 
			width = $width_height;
			height = $width_height;
			use_audio = true;
		};
		port_code = 227;
	};
	stimulus_event {
		nothing{};
		port_code = 224;
		deltat = $code_delay;
	};
} BcH_PcV_227_224;

trial {
	description = "BLUE, circle, VERTICAL to PINK, circle, HORIZONTAL";
	
	stimulus_event {
		video {
			filename = "Videos/BcV_PcH_228_223.avi"; 
			width = $width_height;
			height = $width_height;
			use_audio = true;
		};
		port_code = 228;
	};
	stimulus_event {
		nothing{};
		port_code = 223;
		deltat = $code_delay;
	};
} BcV_PcH_228_223;

trial {
	description = "PINK, SQUARE, horizontal to BLUE, CIRCLE, horizontal";
	
	stimulus_event {
		video {
			filename = "Videos/PSh_BCh_231_237.avi"; 
			width = $width_height;
			height = $width_height;
			use_audio = true;
		};
		port_code = 231;
	};
	stimulus_event {
		nothing{};
		port_code = 237;
		deltat = $code_delay;
	};
} PSh_BCh_231_237;

trial {
	description = "PINK, SQUARE, vertical to BLUE, CIRCLE, vertical";
	
	stimulus_event {
		video {
			filename = "Videos/PSv_BCv_232_238.avi"; 
			width = $width_height;
			height = $width_height;
			use_audio = true;
		};
		port_code = 232;
	};
	stimulus_event {
		nothing{};
		port_code = 238;
		deltat = $code_delay;
	};
} PSv_BCv_232_238;

trial {
	description = "PINK, CIRCLE, horizontal to BLUE, SQUARE, horizontal";
	
	stimulus_event {
		video {
			filename = "Videos/PCh_BSh_233_235.avi"; 
			width = $width_height;
			height = $width_height;
			use_audio = true;
		};
		port_code = 233;
	};
	stimulus_event {
		nothing{};
		port_code = 235;
		deltat = $code_delay;
	};
} PCh_BSh_233_235;

trial {
	description = "PINK, CIRCLE, verticle to BLUE, SQUARE, verticle";

	stimulus_event {
		video {
			filename = "Videos/PCv_BSv_234_236.avi"; 
			width = $width_height;
			height = $width_height;
			use_audio = true;
		};
		port_code = 234;
	};
	stimulus_event {
		nothing{};
		port_code = 236;
		deltat = $code_delay;
	};
} PCv_BSv_234_236;

trial {
	description = "BLUE, SQUARE, horizontal to PINK, CIRCLE, horizontal";
	
	stimulus_event {
		video {
			filename = "Videos/BSh_PCh_235_233.avi"; 
			width = $width_height;
			height = $width_height;
			use_audio = true;
		};
		port_code = 235;
	};
	stimulus_event {
		nothing{};
		port_code = 233;
		deltat = $code_delay;
	};
} BSh_PCh_235_233;

trial {
	description = "BLUE, SQUARE, vertical to PINK, CIRCLE, vertical";
	
	stimulus_event {
		video {
			filename = "Videos/BSv_PCv_236_234.avi"; 
			width = $width_height;
			height = $width_height;
			use_audio = true;
		};
		port_code = 236;
	};
	stimulus_event {
		nothing{};
		port_code = 234;
		deltat = $code_delay;
	};
} BSv_PCv_236_234;

trial {
	description = "BLUE, CIRCLE, horizontal to PINK, SQUARE, horizontal";
	
	stimulus_event {
		video {
			filename = "Videos/BCh_PSh_237_231.avi"; 
			width = $width_height;
			height = $width_height;
			use_audio = true;
		};
		port_code = 237;
	};
	stimulus_event {
		nothing{};
		port_code = 231;
		deltat = $code_delay;
	};
} BCh_PSh_237_231;

trial {
	description = "BLUE, CIRCLE, vertical to PINK, SQUARE, vertical";
	
	stimulus_event {
		video {
			filename = "Videos/BCv_PSv_238_232.avi"; 
			width = $width_height;
			height = $width_height;
			use_audio = true;
		};
		port_code = 238;
	};
	stimulus_event {
		nothing{};
		port_code = 232;
		deltat = $code_delay;
	};
} BCv_PSv_238_232;


trial {
	trial_type = fixed;
	trial_duration = stimuli_length;
	start_delay = $delay_before_response;
	stimulus_event {
		picture {
			text {
				caption = "1 or 2?";
				font = "Times New Roman";
				font_size = 36;
			};
			x = 0;
			y = 0;
		};
		port_code = 31;
	};
	
	stimulus_event {
		nothing {};
		deltat = $response_window;
		port_code = 32;
	};
	
} response_trial;

trial {
	trial_duration = forever;
	trial_type = specific_response;
	terminator_button = 3;
	picture {
		text 
		{
			caption = "Time for a break!";
			font = "Times New Roman";
			font_size = 36;
		};
		x = 0;
		y = 0;
	};
} break_trial;

trial {
	trial_duration = forever;
	trial_type = specific_response;
	terminator_button = 3;
	picture {
		text {
			caption = "Ready?";
			font = "Times New Roman";
			font_size = 36;
		};
		x = 0;
		y = 0;
	};
} ready_trial;

trial {
	trial_duration = forever;
	trial_type = specific_response;
	terminator_button = 3;
	picture {
		text {
			caption = "Set";
			font = "Times New Roman";
			font_size = 36;
		};
		x = 0;
		y = 0;
	};
} set_trial;

trial {
	trial_duration = forever;
	trial_type = first_response;
	picture {
		text 
		{
			caption = "We're done!";
			font = "Times New Roman";
			font_size = 36;
		};
		x = 0;
		y = 0;
	};
} done_trial;

