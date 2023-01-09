# Semola - Hyphenation engine for the italian language

## Features
Semola is used to hyphenate italian words. It mainly uses regular expressions
built upon the rules of the Accademia della Crusca but also has some built-in
exceptions and allows for user-defined exceptions.
The *hyphenate* method accepts a word (String) and returns a list the syllables.
The *addException* method is used to add a user-defined exception (a String where syllables
are separated using '-'), whereas the *clearExceptions* method is used do delete
all user-defined exceptions.

## Getting started
This package only provides the *Semola* class, which exposes several static methods: *hyphenate* (to hyphenate a word), *addException* (to add a user-defined exception), and *clearExceptions* (to remove all user-defined exceptions).

## Usage
Semola can hyphenate simple words (even with some punctuation at the end):
```dart
    expect(Semola.hyphenate(r"suonò"), ["suo", "nò"]);
    expect(Semola.hyphenate(r"pompiere"), ["pom", "pie", "re"]);
    expect(Semola.hyphenate(r"lunghissimo"), ["lun", "ghis", "si", "mo"]);
    expect(Semola.hyphenate(r"per"), ["per"]);
    expect(Semola.hyphenate(r"perché,"), ["per", "ché,"]);
    expect(Semola.hyphenate("perché\""), ["per", "ché\""]);
    expect(Semola.hyphenate("CACTUS"), ["CAC", "TUS"]);
    expect(Semola.hyphenate("Cactus"), ["Cac", "tus"]);
    expect(Semola.hyphenate("cactus"), ["cac", "tus"]);
    expect(Semola.hyphenate(r"appioppare"), ["ap", "piop", "pa", "re"]);
    expect(Semola.hyphenate(r"viola"), ["vio", "la"]);
    expect(Semola.hyphenate(r"suonò..."), ["suo", "nò..."]);
    expect(Semola.hyphenate(r"pompiere..."), ["pom", "pie", "re..."]);
    expect(Semola.hyphenate(r"lunghissimo..."), ["lun", "ghis", "si", "mo..."]);
    expect(Semola.hyphenate(r"per..."), ["per..."]);
```

Since there is no built-in dictionary, some words are dealt with using exceptions:
```dart
    expect(Semola.hyphenate("piovra"), ["pio", "vra"]);
    expect(Semola.hyphenate("pioli"), ["pi", "o", "li"]);
    expect(Semola.hyphenate("piovra..."), ["pio", "vra..."]);
    expect(Semola.hyphenate("pioli..."), ["pi", "o", "li..."]);
```

It is also possible to add new exceptions:
```dart
    Semola.addException("p-i-o-v-r-a");
    expect(Semola.hyphenate("piovra"), ["p", "i", "o", "v", "r", "a"]);
    Semola.clearExceptions();
    expect(Semola.hyphenate("piovra"), ["pio", "vra"]);
```

## Additional information

Built-in exceptions will be updated in future versions.
