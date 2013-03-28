package WISE::Toolkit;
use Mojo::Base 'Mojolicious::Controller';
use Path::Class;
use Text::Markdown;
use Data::Dumper;

sub new {
	my $self = {};
	bless($self);
	return $self;
}


sub mddir2tab {
	my $self = shift;
	my $dh = Path::Class::Dir->new(shift);
	my $findings;
	while (my $fh = $dh->next) {
		next if (-d $fh);
		push(@$findings, "<tr>" . join("", @{$self->md2row($fh)}[0..2]) . "</tr>"); # $fh is in fact the equivalent of file($file), not really a FH
	}
	return $findings;
}

sub md2row {
	my $self = shift;
	my $fh = shift; # And here is our file($file)
	my $sections = [split(/\n\n/, $fh->slurp)];
	map { $_ = "<td>" . $self->md2html($_) . "</td>"} @$sections;
	return $sections;
}

sub md2html {
	my $self = shift;
	my $md = Text::Markdown->new;
    my $html = $md->markdown(shift);
    return $html;
}


1;