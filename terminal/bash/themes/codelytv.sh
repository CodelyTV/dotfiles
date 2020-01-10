PROMPT_COMMAND="codelytv_theme"

FIRST_CHARACTER="☝️"

codelytv_theme() {
  current_dir=$(dot filesystem short_pwd)

  export PS1="${FIRST_CHARACTER} ${current_dir} "
}
