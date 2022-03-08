#!/bin/bash
# ASSUMING REGULAR PARTICIPANT

while IFS=, read -r firstname lastname 
do

  xelatex "\def\participantname{$firstname $lastname} \input{PollicaInvite.tex}"
  mv PollicaInvite.pdf PollicaInvite$firstname$lastname.pdf
done < PARTICIPANTS_regular.csv

# NOTES: please run chmod +x generate_participant.sh to make executable