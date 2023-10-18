FROM bash:4.4
COPY stateexample.sh /
CMD ["bash", "/stateexample.sh"]

# Write a bash script: stateexample that:
# – prints the contents of the state.txt file (if it exists), prints the text: “Enter a
# message:”, stores the text entered by the user in a variable, writes the contents of
# the variable to the state.txt file, and prints the contents of the state.txt file.
# – Dockerize this script using docker build -t stateexample .
# – Compare the difference in output when you run the script state-example twice in
# a row on the console or when you run the created container image twice. Within
# the container run it as docker run -it stateexample.
# – Now, create a Docker volume: stateexample.
# – Modify the bash script so that it creates the file at /var/stateexample/state.txt.
# Create the container image and verify that everything works when called twice.
# – Now, when starting the container, mount the volume stateexample under:
# /var/stateexample and observe the result after calling it twice.