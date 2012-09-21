use strict;
use warnings;
package MasonX::Component::RunMain;
{
  $MasonX::Component::RunMain::VERSION = '0.001';
}
use parent 'HTML::Mason::Component::FileBased';
# ABSTRACT: a component with a "main" method, not just a bunch of text


sub run {
  my $self = shift;
  $self->call_method(main => @_);
}

1;

__END__

=pod

=head1 NAME

MasonX::Component::RunMain - a component with a "main" method, not just a bunch of text

=head1 VERSION

version 0.001

=head1 OVERVIEW

In concept, a Mason component is broken down into special blocks (like once,
shared, init), methods, and subcomponents.  When you render a Mason component,
using it as a template, you aren't calling one of its methods or blocks.
Instead, all the stray code and text that was found I<outside> all of those is
concatenated together and run.

This is sort of a mess.

If you use MasonX::Component::RunMain as your component class instead,
rendering the component will call its C<main> method instead of all that other
junk.  This component class extends HTML::Mason::Component::FileBased.  If this
is a problem because of your esoteric Mason configuration, don't panic.  Just
read the source.  Seriously, it's tiny.

This component class is meant to work well with L<MasonX::Compiler::Strict>,
which will let you throw a syntax exception if there's any significant content
outside of blocks.

=head1 AUTHOR

Ricardo Signes <rjbs@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2012 by Ricardo Signes.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
