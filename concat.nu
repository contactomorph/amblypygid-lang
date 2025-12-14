let files = ls ./brainstorming/stable/*.ayy;
let output = "./brainstorming/all.ayy";

"%%%% Examples \n\n" | save -f $output;

for f in $files {
    "%% -----------------------\n" | save --append $output;
    "%% " + $f.name + "\n" | save --append $output;
    "%% -----------------------\n\n" | save --append $output;
    open $f.name | save --append $output;
    "\n\n" | save --append $output;
}