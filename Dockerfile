FROM nginx:alpine

MAINTAINER Yosuke Matsusaka <yosuke.matsusaka@gmail.com>

ADD . /usr/share/nginx/html
