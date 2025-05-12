# crash-test

This is cloned from Redhat QE kernel kdump tests, but which is modified a little bit.

It's using the TMT frame to do crash-utility internal command tests, you can submit a request as below:

$ testing-farm request --compose Fedora-41 --arch x86_64 --git-url https://github.com/lian-bo/crash.git --git-ref master  --path ci-tests --plan local$  --reserve

And also check the test result here:
https://artifacts.osci.redhat.com/testing-farm/00f5ac16-d2a7-41d9-bd26-c0426162c9e6/
