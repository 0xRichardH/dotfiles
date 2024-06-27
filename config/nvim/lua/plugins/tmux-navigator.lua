-- Inside the tmux
if os.getenv("TMUX") then
  return {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  }
else
  return {}
end
