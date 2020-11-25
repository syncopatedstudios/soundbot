FROM ruby:latest

# Install needed dependencies
RUN apt-get update -qq && apt-get install -y libsqlite3-dev

# Some files & directories variables
ENV soundbot /opt/soundbot/
#ENV bundle_path /opt/box

# Create non-root user
RUN useradd -m user && \
# Create rom directory
mkdir $soundbot && \
# Set user as owner of rom directory
chown user:user $soundbot

# Path for bundles
#ENV BUNDLE_PATH $bundle_path
#RUN mkdir $bundle_path && chown user:user $bundle_path

# Work as non-root in rom directory
USER user
WORKDIR $soundbot

# Add the code
COPY --chown=user:user . $soundbot
