/* Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails */
// Added import "slick-carousel"
import "@hotwired/turbo-rails"
import "controllers"
import "channels"
import "image"
import "preview"
import 'slick-carousel'

import { Turbo } from "@hotwired/turbo-rails"

Turbo.start();
