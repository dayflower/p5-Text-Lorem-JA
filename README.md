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

Text::Lorem::JA generates fake Japanese text via Markov chain.

# METHODS

Most of instance methods can be called as class methods.

- `new`

        $lorem = Text::Lorem::JA->new();
        $lorem = Text::Lorem::JA->new( dictionary => ..., chains => ... );

    Creates a new Text::Lorem::JA generator object.

    Can specify dictionary file and chains for generating sentences.

- `word`

        print Encode::encode_utf8( $lorem->word(10) );
        # => 好きな強みとを考えて

    Returns a exact given length string.
    Generated strings (by all methods) are in Perl's internal format (Unicode).

    Argument length represents number of Unicode characters.  Not bytes.

- `words`

        print Encode::encode_utf8( $lorem->words(10) );
        # => 主要な素質にしばしばあるまいまではっきりつかまえる

    Generates a string composed from morphemes of given number.

    At Japanese language, words are not delimited by whitespaces in normal style.

- `sentence`

        print Encode::encode_utf8( $lorem->sentence() );
        # => 科学者自身が、自分たちでつくるのが、もしもかなりな資産家であった。

    Generates a single sentence.

- `sentences`

        print Encode::encode_utf8( $lorem->sentences(3) );
        # => いちばん面白いいい方をはっきりさせない会社があっても、
        #    やがてかわって、許されない。人物の生きている、ほこり、
        #    品位のあらわれである。文明社会は、正しくそういう立場に
        #    いながら、求めて一塊の岩礁に膠着してみる。

    Generates sentences.

# TOOL

You can use [lorem\_jp](http://search.cpan.org/perldoc?lorem\_jp) executable for generating Japanese Lorem text from CLI.

# LICENSE

Copyright (C) ITO Nobuaki.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

ITO Nobuaki <dayflower@cpan.org>
