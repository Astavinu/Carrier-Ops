TF_defaultWestRiflemanRadio = "tf_anprc152";

TF_same_sw_frequencies_for_side = true;
[] spawn {
	waitUntil{!isNil "TF_freq_west"};
	TF_freq_west set [2,["35","36","37","38","39","40","41","42","43"]];
};

TF_same_lr_frequencies_for_side = true;
[] spawn {
	waitUntil{!isNil "TF_freq_west_lr"};
	TF_freq_west_lr set [2,["35","36","37","38","39","40","41","42","43"]];
};
