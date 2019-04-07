FROM opensuse/leap
LABEL author=Mehant
LABEL version=new
RUN zypper --non-interactive update && \
 zypper addrepo https://download.opensuse.org/repositories/devel:languages:misc/openSUSE_Leap_15.0/devel:languages:misc.repo \
    && zypper --gpg-auto-import-keys refresh \
    && zypper --non-interactive install gnu-cobol

VOLUME work
CMD ["cobc", "--version"]
