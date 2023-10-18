# Write a bash script: stateexample that:
# – prints the contents of the state.txt file (if it exists)
# - if it does not exist, print the text: “Enter a message:” and stores the text entered by the user in a variable, 
# - write the contents of the variable to the state.txt file, and prints the contents of the state.txt file.

# – Dockerize this script using docker build -t stateexample .
# – Compare the difference in output when you run the script state-example twice in
# - a row on the console or when you run the created container image twice. 
# - Within the container run it as 
# docker run -it stateexample.

# - Now, create a Docker volume: stateexample.
# docker volume create stateexample

# – Modify the bash script so that it creates the file at /var/stateexample/state.txt.

# - Create the container image. Update the Dockerfile

# – Now, when starting the container, mount the volume stateexample under: /var/stateexample 
# - and observe the result after calling it twice.
# docker run --mount source=stateexample,target=/var/stateexample -it stateexample

writefile=/var/stateexample/state.txt
if [ -e $writefile ]; then
    cat $writefile
else
    echo "Enter a message:"
    read message
    echo $message >> $writefile
    cat $writefile
fi