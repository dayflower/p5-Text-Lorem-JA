[![Build Status](https://travis-ci.org/dayflower/p5-Text-Lorem-JA.png?branch=master)](https://travis-ci.org/dayflower/p5-Text-Lorem-JA)
# NAME

Text::Lorem::JA - Japanese Lorem Ipsum generator

# SYNOPSIS

    use Text::Lorem::JA;
    

    my $lorem = Text::Lorem::JA->new();
    

    # Generate a string of text with 10 characters
    my $words = $lorem->word(10);
    

    # Generate a string of text with 2 tokens
    my $words = $lorem->words(2);
    

    # Generate a string of text with 2 sentences
    my $sentences = $lorem->sentences(2);

# DESCRIPTION

Text::Lorem::JA generates fake Japanese text.

# METHODS

Most of instance methods can be called as class methods.

- `new`

        $lorem = Text::Lorem::JA->new();
        $lorem = Text::Lorem::JA->new( dictionary => ..., chains => ... );

    Creates a new Text::Lorem::JA generator object.

    Can specify dictionary file and chains for generating sentences.

- `word`

        $word = $lorem->word(10);

    Generates a exact given length string.

    Length is in Unicode characters.  Not bytes.

- `words`

        $words = $lorem->words(10);

    Generates a string composed from morphemes of given number.

    At Japanese language, words are not delimited by whitespaces in normal style.

- `sentence`

        $sentence = $lorem->sentence();

    Generates a single sentence.

- `sentences`

        $sentences = $lorem->sentences(3);

    Generates sentences.

# LICENSE

Copyright (C) ITO Nobuaki.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

ITO Nobuaki <dayflower@cpan.org>
