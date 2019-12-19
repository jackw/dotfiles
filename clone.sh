# Clone reposities into the projects folder
function clone () {

  # Open source projects
	git clone git@github.com:jackw/sass-fire.git
	git clone git@github.com:jackw/sass-fire.io.git
	git clone git@github.com:jackw/eyeglass-image-dimensions.git

  # Private projects
  git clone git@github.com:jackw/server-setup.git
	git clone git@github.com:jackw/holidayaberdaron.co.uk.git
	git clone git@github.com:jackw/televisivo.git

}

$DIRECTORY=$HOME/Projects

mkdir -p "$DIRECTORY"
cd "$DIRECTORY"

clone
unset clone
