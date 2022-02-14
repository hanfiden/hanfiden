import React from "react"
import PropTypes from "prop-types"
class QualificationTabs extends React.Component {
  render () {
  }
}

const tabs = document.querySelectorAll('[data-target]'),
  tabContents = document.querySelectorAll('[data-content]')

tabs.forEach(tab => {
  tab.addEventListener('click', () => {
    const target = document.querySelector(tab.dataset.target)

    tabContents.forEach(tabContent => {
      tabContent.classList.remove('qualification__active')
    })
    target.classList.add('qualification__active')

    tabs.forEach(e => {
      e.classList.remove('qualification__active')
    })
    tab.classList.add('qualification__active')
  })
})

export default QualificationTabs
