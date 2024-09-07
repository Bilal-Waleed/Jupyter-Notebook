# Jupyter-notebook
 This repository contains a Jupyter Notebook environment set up using a Dockerfile in Visual Studio Code. The project provides a containerized Jupyter Notebook environment, ensuring a consistent and reproducible setup across different systems.  Features:  Jupyter Notebook running inside a Docker container. Easy setup with a pre-configured Dockerfile. Ideal for data science, machine learning, and Python development. Getting Started:  Clone the repository. Build and run the Docker container to launch the Jupyter Notebook. Start coding and experimenting in a fully isolated environment.

Here's a step-by-step guide for creating a Markdown file that explains how to set up a Jupyter notebook in VS Code with a Dockerfile.

### Step 1: Create a Markdown File in Your GitHub Repository

1. **Open Your GitHub Repository in VS Code**:
   - Open Visual Studio Code.
   - Navigate to your repository by selecting `File` > `Open Folder` and choosing the folder where you want to store the project.

2. **Create a New Markdown File**:
   - In the Explorer pane (usually on the left side), click the `New File` button.
   - Name the file `README.md`.

3. **Write the Markdown Content**:
   - Open the newly created `.md` file and add the following content, step by step:

---

# Jupyter-Notebook Setup in VS Code Using Docker

This guide will help you set up a Jupyter Notebook in Visual Studio Code with Docker.

## Step 1: Install Docker and VS Code
Before starting, ensure that Docker and Visual Studio Code are installed on your machine.

1. **Install Docker**:
   - Download Docker from [Docker's official website](https://www.docker.com/get-started).
   - Follow the installation steps according to your operating system.

2. **Install Visual Studio Code**:
   - Download and install Visual Studio Code from [VS Code's official website](https://code.visualstudio.com/).
   - Install the **Remote - Containers** extension in VS Code for working with Docker containers.

---

## Step 2: Set Up the Dockerfile for Jupyter Notebook

1. **Create a New Folder**:
   - In your project directory, create a folder named `jupyter-docker`.

2. **Create a Dockerfile**:
   - Inside the `jupyter-docker` folder, create a file named `Dockerfile`.
   - Add the following content to the `Dockerfile`:
```
     ``` Dockerfile
     ## Use the official Python 3.12 base image
       ### FROM python:3.12

# # # Set the working directory inside the container
WORKDIR /workspace

# ##Copy the Jupyter notebook file from the local machine to the working directory in the container
COPY python.ipynb .

# ## Install Jupyter Notebook using pip
RUN pip install notebook

# ## Expose port 8888 to allow access to the Jupyter Notebook from outside the container
EXPOSE 8888

# Define the default command to run Jupyter Notebook
# - `--ip=0.0.0.0` allows the notebook to be accessed externally
# - `--allow-root` allows the notebook to run as root (inside the container)
# - `--no-browser` prevents opening a browser window (since this is inside a container)
CMD [ "jupyter","notebook","--ip=0.0.0.0","--allow-root","--no-browser"]

     ```

---
```
## Step 3: Build and Run the Docker Container

1. **Open a Terminal**:
   - Open a terminal inside VS Code (use `Ctrl + ` to open the terminal).

2. **Build the Docker Image**:
   - Navigate to your project folder in the terminal and run the following command to build the Docker image:
     ```bash
     docker build -t jupyter-notebook .
     ```

3. **Run the Docker Container**:
   - After the build completes, run the container with the following command:
     ```bash
     docker run -p 8888:8888 jupyter-notebook
     ```

4. **Access Jupyter Notebook**:
   - Once the container is running, open your browser and navigate to `http://localhost:8888`. You will be able to access the Jupyter Notebook interface.

---

## Step 4: Open Jupyter Notebooks in VS Code

1. **Install the Jupyter Extension**:
   - Install the **Jupyter** extension in Visual Studio Code to work with `.ipynb` files directly within the editor.

2. **Open or Create a Notebook**:
   - Open any existing Jupyter notebooks, or create a new `.ipynb` file to start writing Python code.

---

## Conclusion

You now have a fully working Jupyter Notebook environment set up in Visual Studio Code using Docker! This setup ensures consistency across different machines and isolates the development environment.

---

Once you finish writing this content, save the Markdown file and push it to GitHub.