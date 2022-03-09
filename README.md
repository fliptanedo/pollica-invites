# pollica-invites
Bash + XeLaTeX script for generating invitation letters for Pollica

## Known issues

## Files

`PollicaInvite.tex` is a XeLaTeX letter template. It assumes that one has the Rift and Fira Sans fonts available. (You can edit this in `FlipLetteHeader.tex`.) The `\figures` folder contains images.

The `generate_participant.sh` and `generate_invited.sh` files are bash scripts that run XeLaTeX on `PollicaInvite.tex` with the names of regular and invited participants fed in. It generates a new file `PollicaInviteFirstLast.pdf` (where `FirstLast` is the invitee's name) with a personalized invite for each participant.

## Inputs
Assume files `PARTICIPANTS_regular.csv` and `PARTICIPANTS_invited.csv` containing the first and names of the participants (regular and invited, respectively) as a comma separated list. Typical format:

```
Participant,One
Participant,Deux
Participant,Tres
```

## Make executable

You need to make the bash scripts executable. At the terminal, run
```
chmod +x generate_participant.sh
chmod +x generate_invited.sh
```

To run these, simply type in `./generate_participant.sh` for regular participants or `./generate_invited.sh` for invited participants at the terminal.

It takes under 10 seconds to generate each pdf, so be careful when running large numbers of names.      
