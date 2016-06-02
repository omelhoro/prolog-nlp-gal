%prolog
%tests for chapter 2
:- begin_tests(chap2_2).
:- use_module('chap2_2.pdb').
test(mother_1) :-
    mother(paul,mary),!.
test(mother_2,[all(Y =@= [mary,mary,sue])]):-
    mother(_,Y).
test(mother_2_child,[all(X =@= [paul,sue,ben])]):-
    mother(X,_).
test(sibling_3,[all(X =@= [paul,paul,sue,sue])]):-
    sibling(X,paul).
:- end_tests(chap2_2).

:- begin_tests(chap2_3).
:- use_module('chap2_3.pdb').
test(my_mother):-
    mother(igor,viktoria).
test(my_parent,[all(X =@= [eugen,viktoria])]):-
    parent(igor,X).
test(my_grandpa):-
    grandfather(igor,andrej).
test(my_cousin):-
    cousin(igor,sergej).
test(my_grandma,[all(X =@= [nadja,vera])]):-
    grandmother(igor,X).

:- end_tests(chap2_3).

:- begin_tests(chap2_4).
:- use_module('chap2_4.pdb').
%a
test(igor_happy):-
    is_happy(igor).
test(michael_not_happy,[fail]):-
    is_happy(michael).
%b
test(know_other_job):-
    knows(igor,michael).
test(know_other_friend):-
    knows(john,cate).
%c
test(wear_monday):-
    wear(coat,monday).
test(monday_weather):-
    weather(rainy,monday).
test(friday_weather):-
    weather(wet,friday).
test(wear_monday_two,[all(Clothes =@= [coat,hat])]):-
    wear(Clothes,monday).
:- end_tests(chap2_4).

:- begin_tests(chap2_2_2).
:- use_module('chap2_2_2.pdb').
test(sleeping):-
    np((the,sleeping,man)).
test(delicious):-
    np((a,delicious,cake)).
test(tall):-
    np( (this,tall,sheep) ).
test(awesome):-
    np((these,awesome,sites)).
:- end_tests(chap2_2_2).

:- begin_tests(chap2_2_4).
:- use_module('chap2_2_4.pdb').
test(gen_agr):-
    np((des,autos)).
test(plur_gen):-
    np((der,autos)).
test(dat):-
    np((dem,mann)).
test(plur_nom):-
    np((die,maenner)).
:- end_tests(chap2_2_4).

:- begin_tests(chap2_4_1).
:- use_module('chap2_4_1.pdb').
test(x_is5):-
    .prefix([i,n,t,e,r,n,a,t,i,o,n,a,l],[n,a,t,i,o,n,a,l],X).
test(x_is0):-
    prefix([n,a,t,i,o,n,a,l],[n,a,t,i,o,n,a,l],X).
test(x_isno,[fail]):-
    prefix([u,n,i,v,e,r,s,a,l],[n,a,t,i,o,n,a,l],X).
:- end_tests(chap2_4_1).

:- begin_tests(chap2_4_2).
:- use_module('chap2_4_2.pdb').
test(hate):-
    ing_form([h,a,t,e],[h,a,t,i,n,g]).
test(hop):-
    ing_form([h,o,p],[h,o,p,p,i,n,g]).
test(try):-
    ing_form([t,r,y],[t,r,y,i,n,g]).
:- end_tests(chap2_4_2).

:- begin_tests(chap2_5_1).
:- use_module('chap2_5_1.pdb').
test(hate):-
    ing_form(hate,hating).
test(hop):-
    ing_form(hop,hopping).
test(try):-
    ing_form(try,trying).
:- end_tests(chap2_5_1).

:- begin_tests(chap2_5_2).
:- use_module('chap2_5_2.pdb').
test(kiss):- affix(kiss,plural,kisses).
test(phase):- affix(phase,plural,phases).
test(dish):- affix(dish,plural,dishes).
test(judge):- affix(judge,plural,judges).

test(lap):- affix(lap,plural,laps).
test(chair):- affix(chair,plural,chairs).

test(boy):- affix(boy,plural,boys).
test(girl):- affix(girl,plural,girls).

test(photo):- affix(photo,plural,photos).
test(kimono):- affix(kimono,plural,kimonos).

test(cherry):- affix(cherry,plural,cherries).
test(lady):- affix(lady,plural,ladies).

test(cat):- affix(cat,plural,cats).
test(sheep):-affix(sheep,plural,sheep).
:- end_tests(chap2_5_2).

