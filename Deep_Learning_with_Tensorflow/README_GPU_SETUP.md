{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "6c9468bf-f898-468b-85df-3bdc34c9ae37",
   "metadata": {},
   "source": [
    "## Guide: Setting up TensorFlow with GPU (RTX 4080) on Windows via WSL2:"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "2000a72e-8ad3-446c-a3a7-f18a08090a39",
   "metadata": {},
   "source": [
    "Author: Shailya\n",
    "\n",
    "Date: January 2026\n",
    "\n",
    "System: Windows 11 | Intel i9-13900HX | NVIDIA RTX 4080 (12GB)\n",
    "\n",
    "This document details the step-by-step process to bypass native Windows GPU limitations by setting up WSL2 (Windows Subsystem for Linux), installing the NVIDIA drivers, and configuring a robust Deep Learning environment."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "18127ca8-1cc3-4471-9383-8b5e4e51127f",
   "metadata": {},
   "outputs": [],
   "source": []
  },
  {
   "cell_type": "markdown",
   "id": "80ca8a64-6646-4392-a567-4607d639dae4",
   "metadata": {},
   "source": [
    "#### Phase 1: Installing the Linux Subsystem\n",
    "Goal: Enable the Linux kernel inside Windows to run high-performance AI tools.\n",
    "\n",
    "1. Install WSL2 (Run in Windows PowerShell as Admin):\n",
    "\n",
    "   `wsl --install`\n",
    "\n",
    "What this does: Downloads the necessary Linux kernel components and installs the default distribution (Ubuntu). A system restart is required after this step.\n",
    "\n",
    "2. Initialize Ubuntu:\n",
    "After restart, open the \"Ubuntu\" app from the Start menu.\n",
    "Create a username and password when prompted."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "1678928c-55bc-45c4-aa64-ce17c2b41e9e",
   "metadata": {},
   "source": [
    "`----------------------------------------------------------------------------------------------------------------------`"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "cfe1c38f-f162-4dfe-a7d1-e2afe356142d",
   "metadata": {},
   "source": [
    "#### Phase 2: Setting up the Python Manager (Miniconda)\n",
    "Goal: Install conda to manage Python versions and environments cleanly, separate from the system Python.\n",
    "\n",
    "1. Download the Installer:\n",
    "\n",
    "   `mkdir -p ~/miniconda3`\n",
    "\n",
    "    `wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh`\n",
    "\n",
    "What this does: Creates a directory and fetches the latest Linux version of Miniconda from the web.\n",
    "\n",
    "2. Run the Installer:\n",
    "\n",
    "   `bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3`\n",
    "\n",
    "What this does: Executes the installation script in \"batch\" mode (-b), so it doesn't ask for manual confirmations.\n",
    "\n",
    "3. Cleanup and Initialization:\n",
    "\n",
    "   `rm -rf ~/miniconda3/miniconda.sh`\n",
    "\n",
    "   `~/miniconda3/bin/conda init bash`\n",
    "\n",
    "What this does: Deletes the installer file to save space and adds Conda to the system path (.bashrc) so the conda command works every time we open the terminal. (Restart terminal after this step)."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "e2f53946-3ca7-42ef-a1de-fd1341b6b40d",
   "metadata": {},
   "source": [
    "`----------------------------------------------------------------------------------------------------------------------`"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f0db1776-071b-410b-b65c-d502e54a1a9c",
   "metadata": {},
   "source": [
    "#### Phase 3: Creating the Deep Learning Environment\n",
    "Goal: Create an isolated environment with Python 3.11 and the necessary GPU drivers.\n",
    "\n",
    "1. Accept Anaconda Terms of Service (Necessary to download packages without interruption):\n",
    "\n",
    "   `conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/main`\n",
    "\n",
    "   `conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/r`\n",
    "\n",
    "2. Create the Environment:\n",
    "\n",
    "   `conda create --name tf-gpu python=3.11 -y`\n",
    "\n",
    "What this does: Creates a sandbox named tf-gpu running Python 3.11 (a stable version for ML libraries).\n",
    "\n",
    "3. Activate the Environment:\n",
    "\n",
    "   `conda activate tf-gpu`\n",
    "\n",
    "What this does: Switches the shell to use our new environment. You should see (tf-gpu) on the command line."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "7f69221a-1406-4907-b22a-bf0398f04d27",
   "metadata": {},
   "source": [
    "`----------------------------------------------------------------------------------------------------------------------`"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "bd1260df-41cb-4378-b23d-7a46ffc68ea8",
   "metadata": {},
   "outputs": [],
   "source": []
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "Python 3 (ipykernel)",
   "language": "python",
   "name": "python3"
  },
  "language_info": {
   "codemirror_mode": {
    "name": "ipython",
    "version": 3
   },
   "file_extension": ".py",
   "mimetype": "text/x-python",
   "name": "python",
   "nbconvert_exporter": "python",
   "pygments_lexer": "ipython3",
   "version": "3.11.14"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
