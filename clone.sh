# Clone reposities into the projects folder
function clone () {

  # Open source projects
	git clone git@github.com:jackw/mappy-breakpoints.git
	git clone git@github.com:jackw/typi.git
	git clone git@github.com:jackw/zl-fetch.git
  git clone git@github.com:jackw/css-reset.git

  # Website
	git clone git@github.com:jackw/jackw.com.git

}

$DIRECTORY=$HOME/Projects

if [! -d "$DIRECTORY" ]; then
  mkdir "$DIRECTORY"
fi

cd "$DIRECTORY"

clone
unset clone
