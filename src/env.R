library(rix)

curren_path = getwd()

rix(
    r_ver = "latest",
    r_pkgs = c("shiny", "ggplot2", "ggsci"),
    system_pkgs = NULL,
    git_pkgs = NULL,
    ide = "code",
    shell_hook = NULL,
    project_path = curren_path,
    overwrite = TRUE,
    print = TRUE
)
