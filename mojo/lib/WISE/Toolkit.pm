package WISE::Toolkit
use Mojo::Base 'Mojolicious::Controller';
use Path::Class;

sub new {
	my $self = {};
	bless($self);
	return $self;
}


sub mddir2tab {
	my $self = shift;
	my $dh = Path::Class->new(shift);
	my $findings;
	while (my $file = $dh->next) {
		push(@$findings, $self->md2html($fh)); # $fh is in fact the equivalent of file($file), not really a FH
	}
}

sub md2html {
	my $self = shift;
	my $fh = shift; # And here is our file($file)
	my $sections = [split(/\n\n/, $fh->slurp)];

	# On en est là

}

1;