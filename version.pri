# keep it all lowercase to match program naming convention on *nix systems
PROJECT_NAME = qbittorrent

# Define version numbers here
VER_MAJOR = 1
VER_MINOR = 6
VER_BUGFIX = 1
VER_BUILD = 0
VER_STATUS = alpha1 # Should be empty for stable releases!

# Don't touch the rest part
PROJECT_VERSION = $${VER_MAJOR}.$${VER_MINOR}.$${VER_BUGFIX}

!equals(VER_BUILD, 0) {
    PROJECT_VERSION = $${PROJECT_VERSION}.$${VER_BUILD}
}

PROJECT_VERSION = $${PROJECT_VERSION}$${VER_STATUS}

DEFINES += QBT_VERSION_MAJOR=$${VER_MAJOR}
DEFINES += QBT_VERSION_MINOR=$${VER_MINOR}
DEFINES += QBT_VERSION_BUGFIX=$${VER_BUGFIX}
DEFINES += QBT_VERSION_BUILD=$${VER_BUILD}

DEFINES += QBT_VERSION=\\\"v$${PROJECT_VERSION}\\\"
DEFINES += QBT_VERSION_2=\\\"$${PROJECT_VERSION}\\\"
