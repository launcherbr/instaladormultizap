#!/bin/bash
#
# Print banner art.

#######################################
# Print a board. 
# Globals:
#   BG_BROWN
#   NC
#   WHITE
#   CYAN_LIGHT
#   RED
#   GREEN
#   YELLOW
# Arguments:
#   None
#######################################
print_banner() {

  clear

  printf "\n\n"

printf "${YELLOW}";


printf ${YELLOW}"         SISTEMA PARA MÚLTIPLOS ATENDIMENTOS \n" 
printf ${GREEN}"\n"
printf ${GREEN}" M   M  U   U  L      TTTTT  III  ZZZZZ      A     PPPP \n"
printf ${GREEN}" MM MM  U   U  L        T     I      Z      AAA    P   P \n"
printf ${GREEN}" M M M  U   U  L        T     I     Z      AAAAA   PPPP  \n"
printf ${GREEN}" M   M  U   U  L        T     I    Z       A   A   P     \n"
printf ${GREEN}" M   M   UUU   LLLLLL   T    III  ZZZZZ    A   A   P     \n"
printf "\n" 
                                                                                                                                                         
  printf "            \033[1;33m        ";
  printf "${NC}";

  printf "\n"
}
