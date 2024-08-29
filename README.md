# GtoG-Migration
# 🛠️ Repository Migration Script

Welcome to the **Repository Migration Script**! 🎉 This script automates the process of migrating repositories from one GitHub account to another. Whether you’re upgrading your GitHub account or consolidating repositories, this tool will make the transition smooth and straightforward.

## 📜 Overview

This script performs the following steps:
1. **Fetches Repository Lists** from both the old and new GitHub accounts.
2. **Identifies Missing Repositories** that need to be migrated.
3. **Creates New Repositories** on the new account.
4. **Clones and Pushes** the repositories from the old account to the new account.

## 🚀 Getting Started

### Prerequisites

- [Git](https://git-scm.com/downloads) - Ensure Git is installed on your system.
- [jq](https://stedolan.github.io/jq/download/) - A command-line JSON processor.
- A [GitHub Personal Access Token (PAT)](https://github.com/settings/tokens) - Needed for authentication with the new GitHub account.

### Configuration

1. **Clone the Repository**:
    ```sh
    git clone https://github.com/dharanicb98/Repositories-Migration.git
    cd Repositories-Migration
    ```

2. **Update the Script**:
    - Open `migrate_repos.sh` in your favorite text editor.
    - Replace `OLD_USERNAME`, `NEW_USERNAME`, and `NEW_PAT` with your actual GitHub usernames and PAT.

### Running the Script

1. **Make the Script Executable**:
    ```sh
    chmod +x migrate_repos.sh
    ```

2. **Execute the Script**:
    ```sh
    ./migrate_repos.sh
    ```

### ✨ Script Details

- **Author**: dharanicb
- **Date**: 2024-08-29
- **Time**: 15:30 UTC

This script will:
1. Fetch the list of repositories from the old account.
2. Compare it with the repositories on the new account.
3. Identify any missing repositories.
4. Create and migrate those repositories to the new account.

## 🔧 Features

- **Automated Migration**: Saves time by automating the repository creation and migration process.
- **Comprehensive Reporting**: Logs details of the migration process.
- **Clean Up**: Removes temporary files after the process is complete.

## 💡 Troubleshooting

- **Issues with Authentication**: Ensure your PAT is valid and has the correct permissions.
- **Error Messages**: Check the error messages for specific details and consult GitHub’s [API documentation](https://docs.github.com/en/rest).

## 🤝 Contributing

If you’d like to contribute to this project, please fork the repository and submit a pull request. We welcome any improvements or suggestions!

## 📜 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## 🎨 Credits

- [GitHub](https://github.com) - For hosting the repositories.
- [jq](https://stedolan.github.io/jq/) - For JSON processing.

---

Happy migrating! 🚀

For any questions or feedback, feel free to reach out to [dharanicb](https://github.com/dharanicb98) on GitHub.
