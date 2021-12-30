pkgname=stupidfetch-git
pkgver=r8.27f8ab3
pkgrel=1
pkgdesc="Very-minimized neoftech but stupid"
arch=('any')
provides=('stupidfetch')
conflicts=('stupidfetch')
url="http://rosiu.site"
license=('WTFPL')
source=("${pkgname}"::git+https://github.com/awitech/stupidfetch.git)
sha256sums=('SKIP')

pkgver() {
  cd "$pkgname"
  printf "r%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)"
}

package() {
    echo -e "\033[0;34m:: \033[0mLoading installation script of stupidfetch..."
    install -Dm755 "${srcdir}"/"${pkgname}"/stupidfetch.sh "${pkgdir}"/usr/bin/stupidfetch
    install -Dm644 "${srcdir}"/"${pkgname}"/LICENSE "${pkgdir}"/usr/share/licenses/"${pkgname}"/LICENSE
    echo -e "\033[1;32m:: \033[0mInstallating of STUPIDFETCH completed."
}
