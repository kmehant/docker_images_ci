FROM opensuse/leap
RUN zypper --non-interactive update && \
 zypper addrepo https://download.opensuse.org/repositories/devel:languages:misc/openSUSE_Leap_15.0/devel:languages:misc.repo \
    && zypper --gpg-auto-import-keys refresh \
    && zypper --non-interactive install gnu-cobol

VOLUME work
LABEL author=Mehant
CMD ["cobc", "--version"]
