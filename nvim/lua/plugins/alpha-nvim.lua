return {
	"goolord/alpha-nvim",
	dependencies = {
		"echasnovski/mini.icons",
		"nvim-lua/plenary.nvim",
	},
	config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.startify")

--    dashboard.section.header.val = {
--      [[                               __                ]],
--      [[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
--      [[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
--      [[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
--      [[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
--      [[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
--    }

    dashboard.section.header.val = {
      [[  __                 ____     ____     ______     ]],
      [[ /\ \   __          /\  _`\  /\  _`\  /\  _  \    ]],
      [[ \_\ \ /\_\   __  __\ \ \/\ \\ \ \L\ \\ \ \L\ \   ]],
      [[ /'_` \\/\ \ /\ \/\ \\ \ \ \ \\ \  _ <'\ \  __ \  ]],
      [[/\ \L\ \\ \ \\ \ \_\ \\ \ \_\ \\ \ \L\ \\ \ \/\ \ ]],
      [[\ \___,_\\ \_\\/`____ \\ \____/ \ \____/ \ \_\ \_\]],
      [[ \/__,_ / \/_/ `/___/> \\/___/   \/___/   \/_/\/_/]],
      [[                  /\___/                          ]],
      [[                  \/__/                           ]],
    }

    alpha.setup(dashboard.config)

    vim.keymap.set('n', '<leader>a', ':Alpha<CR>', {desc = "Show Alpha Dashboard"})
  end,
}
