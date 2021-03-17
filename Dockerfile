FROM ubuntu:20.10
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install -y gettext
RUN apt-get install -y libjson-glib-dev
RUN apt-get install -y libwebkit2gtk-4.0-dev
RUN apt-get install -y libgtksourceview-4-0
RUN apt-get install -y libhandy-0.0-0
RUN apt-get install -y valac
RUN apt-get install -y meson 
RUN apt-get install -y git
RUN apt-get install -y libgee-0.8-dev
RUN apt-get install -y cmake
RUN apt-get install -y libgtksourceview-4-dev
RUN apt-get install -y libhandy-1-dev

RUN mkdir /src && cd /src && git clone https://gitlab.gnome.org/GNOME/libhandy.git && cd libhandy && apt-get build-dep -y . && meson . _build && ninja -C _build && ninja -C _build install

