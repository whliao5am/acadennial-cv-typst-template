// SVG icon registry and helpers for contact links.
#import "@preview/scienceicons:0.1.0" as scienceicons

#let google-scholar-svg = ``` <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M12 2 1 8l11 6 9-4.91V17h2V8L12 2z"/><path d="M6 12.91V17c0 2.21 2.69 4 6 4s6-1.79 6-4v-4.09l-6 3.27-6-3.27z"/></svg>```.text
#let google-scholar-icon(color: luma(40%), height: 0.95em, baseline: 20%) = {
  box(height: height, baseline: baseline, image(bytes(google-scholar-svg.replace("currentColor", color.to-hex()))))
}

#let git-svg = ``` <svg xmlns="http://www.w3.org/2000/svg" width="92pt" height="92pt" viewBox="0 0 78 78"><path fill="currentColor" transform="translate(10 10) rotate(-45 29 29)" d="M5,58c-2.76142,0 -5,-2.23858 -5,-5v-48c0,-2.76142 2.23858,-5 5,-5h33v12.54404c-2.06553,0.94801 -3.5,3.03446 -3.5,5.45596c0,0.73514 0.13221,1.43941 0.37415,2.09031l-15.28384,15.28384c-0.6509,-0.24194 -1.35517,-0.37415 -2.09031,-0.37415c-3.31371,0 -6,2.68629 -6,6c0,3.31371 2.68629,6 6,6c3.31371,0 6,-2.68629 6,-6c0,-0.73514 -0.13221,-1.43941 -0.37415,-2.09031l14.87415,-14.87415l0,11.50851c-2.06553,0.94801 -3.5,3.03446 -3.5,5.45596c0,3.31371 2.68629,6 6,6c3.31371,0 6,-2.68629 6,-6c0,-2.42149 -1.43447,-4.50795 -3.5,-5.45596l0,-12.08808c2.06553,-0.94801 3.5,-3.03446 3.5,-5.45596c0,-2.42149 -1.43447,-4.50795 -3.5,-5.45596l0,-12.54404h10c2.76142,0 5,2.23858 5,5v48c0,2.76142 -2.23858,5 -5,5z"/></svg>```.text
#let git-icon(color: luma(40%), height: 0.95em, baseline: 20%) = {
  box(height: height, baseline: baseline, image(bytes(git-svg.replace("currentColor", color.to-hex()))))
}

#let link-svg = ```
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M10 14a5 5 0 0 0 7.07 0l2.83-2.83a5 5 0 1 0-7.07-7.07L11.4 5.5" /><path d="M14 10a5 5 0 0 0-7.07 0L4.1 12.83a5 5 0 1 0 7.07 7.07L12.6 18.5" /></svg>```.text
#let link-icon(color: luma(40%), height: 0.95em, baseline: 20%) = {
  box(height: height, baseline: baseline, image(bytes(link-svg.replace("currentColor", color.to-hex()))))
}

// Manually maintained icon table used by the resume layout.
// Add any extra scienceicons/custom icons here if you want unified defaults.
#let icon-registry = (
  "google-scholar-icon": google-scholar-icon,
  "link-icon": link-icon,
  "git-icon": git-icon,
  "linkedin-icon": scienceicons.linkedin-icon,
  "github-icon": scienceicons.github-icon,
  "orcid-icon": scienceicons.orcid-icon,
  "x-icon": scienceicons.x-icon,
)

#let configure-icon-registry(
  registry: icon-registry,
  color: luma(40%),
  height: 0.95em,
  baseline: 20%,
) = {
  let configured = (:)
  for (name, icon-fn) in registry.pairs() {
    configured.insert(
      name,
      icon-fn.with(color: color, height: height, baseline: baseline),
    )
  }
  configured
}
