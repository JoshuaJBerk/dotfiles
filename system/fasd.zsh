# Fasd offers quick access to files and directories for POSIX shells.
# It is inspired by tools like autojump, z and v.

if [ "$(command -v fasd)" ]; then
    eval "$(fasd --init auto)"
fi
