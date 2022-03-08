#!/bin/bash
# ASSUMING INVITED SPEAKER

while IFS=, read -r firstname lastname 
do

  xelatex "\def\participantname{$firstname $lastname} \def\invitedspeaker{1} \input{PollicaInvite.tex}"
  mv PollicaInvite.pdf PollicaInvite$firstname$lastname.pdf
done < PARTICIPANTS_invited.csv

# NOTES: please run chmod +x generate_invited.sh to make executable