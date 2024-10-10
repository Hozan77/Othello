% Définition du plateau initial avec les valeurs modifiées
initial_board([
    [0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 2, 1, 0, 0, 0],
    [0, 0, 0, 1, 2, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0]
]).

% Affichage du plateau
print_board([]).
print_board([Row|Rest]) :-
    print_row(Row), nl,
    print_board(Rest).

print_row([]).
print_row([Cell|Rest]) :-
    write(Cell), write(' '),
    print_row(Rest).

%Afficher joueurs
print_players() :-
    write('Player 1 - 2'), nl, nl.

% Afficher le plateau initial
display_initial_board :-
    print_players(),
    initial_board(Board),
    print_board(Board).