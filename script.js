<script>
document.documentElement.style.scrollBehavior = 'smooth';
const tocLinks = Array.from(document.querySelectorAll('#TOC a'));
const headers = tocLinks.map(a => document.getElementById(a.getAttribute('href').slice(1)));

function onScroll() {
  const top = window.scrollY + 120;
  let activeIndex = -1;
  for (let i = 0; i < headers.length; i++) {
    if (headers[i] && headers[i].offsetTop <= top) activeIndex = i;
  }
  tocLinks.forEach((a, i) => {
    a.classList.toggle('active', i === activeIndex);
  });
}
window.addEventListener('scroll', onScroll);
onScroll();
</script>
