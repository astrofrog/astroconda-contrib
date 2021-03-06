
pip install --no-deps --upgrade --force d2to1 || exit 1

( cd engine && \
(python setup.py install || exit 1 ) ) && \
( cd ui && \
(python setup.py install || exit 1 ) )

DOCDIR="$PREFIX/share/doc/pandeia-engine"
mkdir -p $DOCDIR
cp -a doc/{api_overview,user,install} $DOCDIR