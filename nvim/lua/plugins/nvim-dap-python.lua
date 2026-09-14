return {
	"mfussenegger/nvim-dap-python",
	ft = "python",
	dependencies = {
		"mfussenegger/nvim-dap",
		"rcarriga/nvim-dap-ui",
		"nvim-neotest/nvim-nio",
		"theHamsta/nvim-dap-virtual-text",
	},
	config = function()
		local dapui = require("dapui")
		local dap = require("dap-python")

		dapui.setup()

		-- Setup virtual text (shows variable values inline)
		require("nvim-dap-virtual-text").setup({
			enabled = true,
			enabled_commands = true,
			highlight_changed_variables = true,
			show_stop_reason = true,
			commented = false,
		})

		dap.setup("uv")
		-- dap.listeners.after.event_initialized["dapui_config"] = function()
		-- 	dapui.open()
		-- end
		-- dap.listeners.before.event_terminated["dapui_config"] = function()
		-- 	dapui.close()
		-- end
		-- dap.listeners.before.event_exited["dapui_config"] = function()
		-- 	dapui.close()
		-- end

		local map = vim.keymap.set

		-- testing the debug session
		map("n", "<leader>dc", function()
			require("dap").continue()
		end, { desc = "Python-DAP test debug session" })

		-- Breakpoints & Execution
		map("n", "<leader>db", function()
			require("dap").toggle_breakpoint()
		end, { desc = "DAP Toggle Breakpoint" })

		-- Step Line by Line
        
		map("n", "<leader>di", function()
			require("dap").step_into()
		end, { desc = "DAP Step Into" })

		map("n", "<leader>do", function()
			require("dap").step_over()
		end, { desc = "DAP Step Over" })

		map("n", "<leader>dO", function()
			require("dap").step_out()
		end, { desc = "DAP Step Out" })


		-- UI Toggle
		map("n", "<leader>du", function()
			require("dapui").toggle()
		end, { desc = "DAP UI Toggle" })
	end,
}
