import React from "react"

class BackgroundHeader extends React.Component {
  render () {
  }
}

function scrollHeader() {
  const nav = document.getElementById('header')
  if (this.scrollY >= 100) nav.classList.add('scroll-header'); else nav.classList.remove('scroll-header')
}
window.addEventListener('scroll', scrollHeader)

export default BackgroundHeader
