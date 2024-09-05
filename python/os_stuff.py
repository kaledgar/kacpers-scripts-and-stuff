import os


def get_files(
    directory: str, 
    return_file_paths: bool = True, 
    file_format = "xyz"
) -> list:
    """
    Get a list of filenames or absolute paths of all .xyz files in the specified directory and its subdirectories.
    Args:
        directory (str): The absolute path of the directory.
        return_file_paths (bool, optional): Whether to return absolute paths (default is True).
        file_format (str, optional): filter files with specific formats.
    Returns:
        list: A list of filenames or absolute paths of all .xyz files in the directory and its subdirectories.
    """
    try:
        if not os.path.isdir(directory):
            raise ValueError(f"The provided path is not a valid directory: {directory}")

        xyz_files = []

        for root, dirs, files in os.walk(directory):
            for file in files:
                if file.endswith(file_format):
                    file_path = os.path.abspath(os.path.join(root, file))
                    (xyz_files.append(file_path) if return_file_paths else xyz_files.append(file))

        return xyz_files

    except Exception as e:
        print(f"An error occurred: {str(e)}")
        return []
