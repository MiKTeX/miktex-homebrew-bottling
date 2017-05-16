{
    "package": {
	"name": "miktex",
	"repo": "bottles",
	"subject": "miktex"
    },
    "version": {
	"name": "${MIKTEX_VERSION}"
    },
    "files":
    [
	{
	    "includePattern": "${CMAKE_CURRENT_BINARY_DIR}/(.*\\.tar\\.gz)",
	    "uploadPattern": "$1"
	}
    ],
    "publish": true
}
