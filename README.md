# portage-private
Gentoo overlay to fool around with


## Build qcollect

```
$ docker run -ti --rm --privileged \
             -v $(pwd)/app-admin/qcollect/:/usr/portage/app-admin/qcollect/ \
             -w /usr/portage/app-admin/qcollect/ \
             qnib/gentoo-golang bash
f58f795bd6ff qcollect # build qcollect-0.6.3.3.ebuild manifest clean merge
>>> Creating Manifest for /usr/portage/app-admin/qcollect
>>> Downloading 'http://distfiles.gentoo.org/distfiles/qcollect.tar'
*snip*
>>> Compiling source in /var/tmp/portage/app-admin/qcollect-0.6.3.3/work/qcollect-0.6.3.3 ...
*snip*
>>> Completed installing qcollect-0.6.3.3 into /var/tmp/portage/app-admin/qcollect-0.6.3.3/image/

 * Final size of build directory: 8536 KiB
 * Final size of installed tree: 11712 KiB

strip: x86_64-pc-linux-gnu-strip --strip-unneeded -R .comment -R .GCC.command.line -R .note.gnu.gold-version
   usr/bin/qcollect
 * checking 1 files for package collisions
>>> Merging app-admin/qcollect-0.6.3.3 to /
--- /usr/
--- /usr/bin/
>>> /usr/bin/qcollect
>>> app-admin/qcollect-0.6.3.3 merged.
>>> Regenerating /etc/ld.so.cache...
f58f795bd6ff qcollect # qcollect -h
NAME:
   qcollect - Diamond compatible metrics collector
```
