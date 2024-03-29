# NAME

Plack::Middleware::HTMLLint - check syntax with HTML::Lint for PSGI application's response HTML

# VERSION

This document describes Plack::Middleware::HTMLLint version 0.01.

# SYNOPSIS

    use Plack::Builder;

    builder {
        enable_if { $ENV{PLACK_ENV} eq 'development' } 'HTMLLint';
        sub {
            my $env = shift;
            # ...
            return [
                200,
                ['Content-Type' => 'text/plain'],
                ['<html><head>...']
            ];
        };
    };

# DESCRIPTION

This module check syntax with HTML::Lint for PSGI application's response HTML.
to assist you to discover the HTML syntax errors during the development of Web applications.

# DEPENDENCIES

Perl 5.8.1 or later.

# BUGS

All complex software has bugs lurking in it, and this module is no
exception. If you find a bug please either email me, or add the bug
to cpan-RT.

# SEE ALSO

[Plack::Middleware](http://search.cpan.org/perldoc?Plack::Middleware) [Plack::Middleware::HTMLLint::Pluggable](http://search.cpan.org/perldoc?Plack::Middleware::HTMLLint::Pluggable) [HTML::Lint](http://search.cpan.org/perldoc?HTML::Lint) [HTML::Lint::Pluggable](http://search.cpan.org/perldoc?HTML::Lint::Pluggable)

# AUTHOR

Kenta Sato <karupa@cpan.org>

# LICENSE AND COPYRIGHT

Copyright (c) 2012, Kenta Sato. All rights reserved.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.
