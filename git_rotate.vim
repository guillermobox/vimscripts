py3 << EOL
def _rotate_git_command():
    commands = ('pick', 'reword', 'edit', 'squash', 'fixup')
    cmd, rest = vim.current.line.split(' ', maxsplit=1)
    if cmd not in commands:
        return
    next_cmd = commands[(commands.index(cmd) + 1) % len(commands)]
    vim.current.line = next_cmd + ' ' + rest
EOL
nmap <buffer> <silent> <Tab> :py3 _rotate_git_command()<CR>
