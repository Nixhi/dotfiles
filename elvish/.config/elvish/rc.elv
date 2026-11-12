# ~/.config/elvish/rc.elv

## Builtin

# Colorize output
fn ls {|@a| e:ls --color=auto $@a}
fn grep {|@a| e:grep --color=auto $@a}

# Replaces
fn ls {|@a| e:lsd $@a}
fn cat {|@a| e:bat $@a}

# Aliases
fn la {|@a| ls -Ah $@a}
fn ll {|@a| ls -lh $@a}
fn l {|@a| ls -lah $@a}

## External

# Features
if (has-external zoxide) { eval (zoxide init elvish | slurp) }
if (has-external starship) { eval (starship init elvish | slurp) }
if (has-external carapace) { eval (carapace _carapace elvish | slurp) }
