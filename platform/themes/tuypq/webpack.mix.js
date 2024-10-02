let mix = require('laravel-mix');
let tailwindcss = require('tailwindcss');

const path = require('path');
let directory = path.basename(path.resolve(__dirname));

const source = 'platform/themes/' + directory;
const dist = 'public/themes/' + directory;

mix
.sass(source + '/assets/sass/base.scss', dist + '/css')
.sass(source + '/assets/sass/buttons.scss', dist + '/css')
.sass(source + '/assets/sass/components.scss', dist + '/css')
.sass(source + '/assets/sass/main.scss', dist + '/css').options({
    postCss: [tailwindcss('./tailwind.config.js')],
})
.sass(source + '/assets/sass/navigation.scss', dist + '/css')
.sass(source + '/assets/sass/utilities.scss', dist + '/css')

.js(source + '/assets/plugins/swiper/swiper-bundle.js', dist + '/js')
.copy(dist + '/js/swiper-bundle.js', source + '/public/js');



 
