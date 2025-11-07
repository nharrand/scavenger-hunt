# Use the official Ubuntu 22.04 image as the base
FROM ubuntu:22.04

# Install Python for running the scripts
RUN apt-get update && \
    apt-get install -y man manpages-posix man-db manpages python3 sudo wbritish && \
    apt-get clean

# Restoring inclusion of man pages when installing packages
RUN yes | unminimize

# Create a new user 'ubnt' with password 'ubnt'
RUN useradd -ms /bin/bash ubnt && \
    echo "ubnt:ubnt" | chpasswd

# Add 'ubnt' to the sudoers file, requiring a password for sudo commands
RUN usermod -aG sudo ubnt && \
    echo "ubnt ALL=(ALL) ALL" >> /etc/sudoers

#Create secret file in root directory
RUN echo "acpi" > /root/secret

# Set the working directory
WORKDIR /home/ubnt/scavenger-hunt

# Copy the scavenger hunt files to the container
COPY .clue-templates /home/ubnt/scavenger-hunt/.clue-templates
COPY README.md APPENDIX.md next_clue.py generate_clues.py conf /home/ubnt/scavenger-hunt

# Change ownership of the copied files to the 'ubnt' user
RUN chown -R ubnt:ubnt /home/ubnt

# Make scripts executable
RUN chmod u+x next_clue.py generate_clues.py

# Switch to non-root user 'ubnt'
USER ubnt

# Set default command to start a bash shell
CMD ["bash"]

