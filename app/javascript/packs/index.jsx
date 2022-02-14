import React from 'react'
import ReactDOM from 'react-dom'
import ScrollUp from '../components/ScrollUp'
import BackgroundHeader from '../components/BackgroundHeader'
// import DarkMode from '../components/DarkMode'
import NavbarToggle from '../components/NavbarToggle'
import AccordionSkills from '../components/AccordionSkills'
import QualificationTabs from '../components/QualificationTabs'
import ServicesModal from '../components/ServicesModal'

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <ScrollUp/>,
    document.body.appendChild(document.createElement('div')),
  )
})
