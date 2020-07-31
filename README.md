# pkg-builder container

Container image for building packages for multiple distributions using
[fpm](https://github.com/jordansissel/fpm).

Currently builds RPMs and DEBs.

## Notes

### rpm-changelog-cleanup

This simple script filters git logs into a format suitable for RPM changelogs.
