-- https://www.tusij.com/color/F1BF99#online-palette
-- https://sunpma.com/other/rgb/
local palette = {
	gui_dim_inactive = "#EDEDF5",
	cterm_dim_inactive = 145,
	gui = {
		transparent = "none",
		white = {
			_0 = "#ffffff",
			_30 = "#f3f3f3",
			_50 = "#f5f5f5",
			-- _50 = "#FF0000",
			_52 = "#f0f0f0",
			_100 = "#eeeeee",
			_150 = "#e6e6e6",
			_200 = "#cccccc",
			_210 = "#dfdfdf",
			_220 = "#D9D9D9",
			_230 = "#EDEDF5",
		},
		black = {
			_0 = "#000000",
			_10 = "#1a1a1a",
			-- _50 = "#333333",
			_50 = "#444963",
			_100 = "#424242",
		},
		gray = {
			_0 = "#a8a19f",
			_50 = "#aaaaaa",
			_100 = "#a1a8b1",
			_110 = "#9E9E9E",
			_120 = "#959595",
			_150 = "#777777",
			_180 = "#6d705b",
			_200 = "#6C6C6C",
			_205 = "#686C6D",
			-- _205 = "#5F6363",
			_210 = "#c2c2c2",
		},
		green = {
			_0 = "#a6b39b",
			_50 = "#448c27",
			_100 = "#c1f5b0",
			_150 = "#e4f6d4",
			_200 = "#dfefdf",
		},
		red = {
			_0 = "#660000",
			_30 = "#cc0000",
			_50 = "#aa3731",
			_150 = "#A65353",
		},
		orange = {
			_0 = "#ab6526",
			_30 = "#ca7602",
			_50 = "#f7e7cc",
		},
		yellow = {
			_0 = "#ffe055",
		},
		blue = {
			_0 = "#00005f",
			_50 = "#91b3e0",
			_100 = "#4b83cd",
			_110 = "#4B69C6",
			-- PERF: ehanced for tree-sitter
			_150 = "#717AA8",
		},
		purple = {
			_0 = "#5f005f",
			_50 = "#7a3e9d",
			_100 = "#705697",
			_150 = "#c4b7d7",
		},
		cyan = {
			_0 = "#005f5f",
			_50 = "#00ad9c",
		},
	},
	cterm = {
		transparent = "none",
		white = {
			_0 = 15,
			_50 = 231,
		},
		black = {
			_0 = 0,
		},
		gray = {
			_0 = 59,
			_50 = 102,
			_100 = 145,
		},
		green = {
			_0 = 64,
			_50 = 157,
			_100 = 194,
		},
		red = {
			_0 = 52,
			_50 = 1,
			_100 = 131,
		},
		orange = {
			_0 = 130,
			_50 = 224,
		},
		yellow = {
			_0 = 221,
		},
		blue = {
			_0 = 17,
			_50 = 24,
			_100 = 68,
			_150 = 104,
			_200 = 110,
		},
		purple = {
			_0 = 53,
			_50 = 97,
			_100 = 60,
		},
	},
}

return palette
