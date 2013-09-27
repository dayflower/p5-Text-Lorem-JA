package Text::Lorem::JA;
use 5.008005;
use strict;
use warnings;

our $VERSION = "0.01";

1;
__END__

=encoding utf-8

=head1 NAME

Text::Lorem::JA - Japanese Lorem Ipsum generator

=head1 SYNOPSIS

    use Text::Lorem::JA;
    
    my $lorem = Text::Lorem::JA->new();
    
    # Generate a string of text with 2 sentences
    my $words = $lorem->words(2);
    
    # Generate a string of text with 2 sentences
    my $sentences = $lorem->sentences(2);

=head1 DESCRIPTION

Text::Lorem::JA generates fake Japanese text.

=head1 LICENSE

Copyright (C) ITO Nobuaki.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

ITO Nobuaki E<lt>daydream.trippers@gmail.comE<gt>

=cut

