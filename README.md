# Template for C++ Code base

This is a template for C++ code bases uses for Computer Networks (CS 528). 

## Getting Started (Development)

```bash
git submodule update --init --recursive
```

## Using Template-C++ For a New Project

Create a new repository ([GitHub](https://docs.github.com/en/repositories/creating-and-managing-repositories/quickstart-for-repositories), [GitLab](https://docs.gitlab.com/user/project/repository/))

### Setting up a new GitHub project
```
git clone https://github.com/BU-CS428/template-cpp.git new-project-name
cd new-project-name

git remote rm origin
git remote add origin https://github.com/BU-CS428/new-project-name
git push --set-upstream origin main
```

## VSCode Extensions
* Clang Format (with auto format on save turned on)
* C/C++
* C/C++ Extensions Pack
* CMake Tools

## VSCode Development Containers

This project uses vscode dev containers. Modified `docker/build-env.Dockerfile` for required project dependencies and run the vscode command `> Dev Containers: Rebuild and Reopen in Container` to open this project in a dev container. 

## Contributors

Binghamton University, School of Computing. 2025. 