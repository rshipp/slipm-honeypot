# Maintainer: george <rpubaddr0 {at} gmail [dot] com>

pkgname=slipm-honeypot
pkgver=0.1
_gitver='864c'
pkgrel=1
pkgdesc='An extendable, simple, low interaction, port monitoring honeypot.'
arch=('i686' 'x86_64')
url='https://github.com/george2/slipm-honeypot'
license=('GPL')
depends=('bash' 'nc')
optdepends=('libnotify: notifications'
            'tshark: network sniffing'
            'qtshark: network sniffing')
source=("https://raw.github.com/george2/${pkgname}/${_gitver}/${pkgname}")
sha256sums=()

package() {
    install -Dm755 "${srcdir}/${pkgname}" "${pkgdir}/usr/bin/${pkgname}"
}
