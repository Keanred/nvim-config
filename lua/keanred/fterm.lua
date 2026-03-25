
local M = {}

local state = {
  floating = {
    buf = -1,
    win = -1,
  }
}

local function get_terminal_job_id(buf)
  if not (buf and vim.api.nvim_buf_is_valid(buf) and vim.bo[buf].buftype == "terminal") then
    return nil
  end

  return vim.b[buf].terminal_job_id
end

local function create_floating_window(opts)
  opts = opts or {}
  local width = opts.width or math.floor(vim.o.columns * 0.8)
  local height = opts.height or math.floor(vim.o.lines * 0.8)

  -- Calculate the position to center the window
  local col = math.floor((vim.o.columns - width) / 2)
  local row = math.floor((vim.o.lines - height) / 2)

  -- Create a buffer (always create a new terminal buffer if invalid or not a terminal)
  local buf = opts.buf
  if not (buf and vim.api.nvim_buf_is_valid(buf) and vim.bo[buf].buftype == "terminal") then
    buf = vim.api.nvim_create_buf(false, true)
  end

  -- Define window configuration
  local win_config = {
    relative = "editor",
    width = width,
    height = height,
    col = col,
    row = row,
    style = "minimal",
    border = "rounded",
  }

  -- Create the floating window
  local win = vim.api.nvim_open_win(buf, true, win_config)

  -- If this is a new buffer, start terminal and enter insert mode
  if vim.bo[buf].buftype ~= "terminal" then
    vim.cmd("terminal")
    vim.cmd("startinsert")
  else
    -- If already a terminal, just enter insert mode
    vim.cmd("startinsert")
  end

  vim.keymap.set("t", "<C-c>", function()
    require("keanred.fterm").interrupt()
  end, { buffer = buf, silent = true, desc = "Interrupt terminal process" })

  vim.keymap.set("t", "<Esc><Esc>", function()
    require("keanred.fterm")._close()
  end, { buffer = buf, silent = true, desc = "Hide floating terminal" })

  -- Autocmd to reset state only if the buffer itself is destroyed
  vim.api.nvim_create_autocmd("BufWipeout", {
    buffer = buf,
    callback = function()
      state.floating = { buf = -1, win = -1 }
    end,
    once = true,
  })

  return { buf = buf, win = win }
end


function M.interrupt()
  local job_id = get_terminal_job_id(state.floating.buf)
  if not job_id then
    return
  end

  vim.api.nvim_chan_send(job_id, "\003")
end


function M.toggle()
  if not vim.api.nvim_win_is_valid(state.floating.win) then
    state.floating = create_floating_window { buf = state.floating.buf }
  else
    vim.api.nvim_win_hide(state.floating.win)
    state.floating.win = -1
  end
end

-- Internal close function for <C-c> mapping
function M._close()
  if vim.api.nvim_win_is_valid(state.floating.win) then
    vim.api.nvim_win_hide(state.floating.win)
    state.floating.win = -1
  end
end


function M.setup()
  vim.keymap.set("n", "<leader>tft", ":Floaterminal<CR>", { desc = "Toggle Floaterminal" })
  vim.keymap.set("n", "<leader>tfc", function()
    require("keanred.fterm").interrupt()
  end, { desc = "Interrupt Floaterminal process" })
  vim.api.nvim_create_user_command("Floaterminal", M.toggle, {})
end

return M
