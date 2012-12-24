use strict;
use warnings FATAL => 'all';

use Module::Build::Pluggable (
    'Repository',
    (-d '.git' || $ENV{RELEASE_TESTING}) ? 'ReadmeMarkdownFromPod' : (),
);

my $builder = Module::Build::Pluggable->new(
    license              => 'perl',
    dynamic_config       => 0,
    build_requires       => {
        'Test::More'     => '0.88',
        'Test::Requires' => '0.06',
        'Plack::Builder' => 0,
        'Plack::Test'    => 0,
        'HTTP::Request'  => 0,
    },
    configure_requires   => {
        'Module::Build'                                   => '0.40',
        'Module::Build::Pluggable'                        => '0.04',
        'Module::Build::Pluggable::ReadmeMarkdownFromPod' => '0.02',
    },
    requires             => {
        perl => '5.009_004',
        'parent'                => 0,
        'constant'              => 0,
        'HTML::Lint'            => 0,
        'Plack::Middleware'     => 0,
        'Plack::Util'           => 0,
        'Plack::Util::Accessor' => 0,
        'HTML::Escape'          => 0,
    },
    auto_features => {
        'HTML::Lint::Pluggable' => {
            description => "use HTML::Lint::Pluggable",
            requires => {
                'HTML::Lint::Pluggable' => 0,
            },
        },
    },
    no_index    => { 'directory' => [ 'inc' ] },
    name        => 'Plack-Middleware-HTMLLint',
    module_name => 'Plack::Middleware::HTMLLint',
    test_files => (-d '.git' || $ENV{RELEASE_TESTING}) ? 't/ xt/' : 't/',
    recursive_test_files => 1,
    create_readme  => 1,
    create_license => 1,
);

$builder->create_build_script();
