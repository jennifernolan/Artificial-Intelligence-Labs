male(dudley).
male(vernon).
male(harry).
male(james).
male(paul).
male(albert).

female(petunia).
female(lili).
female(helen).
female(ruth).
female(jessica).

parent_of(dudley,vernon).
parent_of(dudley,petunia).
parent_of(harry,james).
parent_of(harry,lili).
parent_of(petunia,paul).
parent_of(petunia,helen).
parent_of(lili,paul).
parent_of(lili,helen).
parent_of(james,albert).
parent_of(james,ruth).
parent_of(jessica,albert).
parent_of(jessica,ruth).

married_to(vernon,petunia).
married_to(petunia,vernon).
married_to(lili,james).
married_to(james,lili).
married_to(paul,helen).
married_to(helen,paul).
married_to(albert,ruth).
married_to(ruth,albert).

father_of(Father,Child) :- male(Father), parent_of(Child,Father).
mother_of(Mother,Child) :- female(Mother), parent_of(Child,Mother).

grandfather_of(Grandfather,Child) :- male(Grandfather), parent_of(Child,Parent), parent_of(Parent,Grandfather).
grandmother_of(Grandmother,Child) :- female(Grandmother), parent_of(Child,Parent), parent_of(Parent,Grandmother).

sister_of(Sister,Person) :- female(Sister), father_of(Father,Person), father_of(Father,Sister), Sister \= Person, mother_of(Mother,Person), mother_of(Mother,Sister).
brother_of(Brother,Person) :- male(Brother), father_of(Father,Person), father_of(Father, Brother), Brother \= Person, mother_of(Mother,Person), mother_of(Mother,Brother).

aunt_of(Aunt,Person) :- female(Aunt), parent_of(Person,Parent), sister_of(Parent,Aunt).
uncle_of(Uncle,Person) :- male(Uncle), parent_of(Person,Parent), sister_of(Parent,Aunt),  married_to(Uncle,Aunt).
