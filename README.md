# crash-test

This is cloned from Redhat QE kernel kdump tests, but which is modified a little bit.
    
It's using the TMT(Test Management Tool) to do crash-utility internal command tests,
you can submit a request from the ci-tests as below if you would like to trigger the
tests manually:

  $ testing-farm request --compose Fedora-Rawhide --arch x86_64 --git-url https://github.com/crash-utility/crash.git --git-ref master  --path ci-tests --plan local$

And also check the test results in the github action(see crash-utility), looks like:

  Testing Farm as a GitHub Action summary

  name    compose arch    status  started (UTC)   time    logs

  Fedora  Fedora-Rawhide  x86_64  ✅ passed   28.05.2025 02:24:55 15min 28s   test pipeline

Or you can also submit a request for other architectures:

  $ testing-farm request --compose Fedora-Rawhide --arch x86_64,aarch64,ppc64le,s390x --git-url https://github.com/crash-utility/crash.git --git-ref master  --path ci-tests --plan local$
