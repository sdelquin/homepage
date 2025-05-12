FROM debian

RUN apt-get update && \
    apt-get install -y curl
    
RUN curl -L -o /tmp/hugo.deb $(curl -s https://api.github.com/repos/gohugoio/hugo/releases/latest | perl -ne 'print $1 if /(https:\/\/.*hugo_[\d.]+_linux-amd64.deb)/') && \
    dpkg -i /tmp/hugo.deb

WORKDIR /docs
COPY . /docs

CMD ["hugo"]
