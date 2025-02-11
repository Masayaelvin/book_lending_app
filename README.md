Sure! Below is a well-structured `README.md` file for your **Book Lending App** project:  

```markdown
# 📚 Book Lending App

The **Book Lending App** is a Ruby on Rails 8 application that allows users to browse available books, borrow them, and return them. Books that are available are shown in **green**, while borrowed books appear in **red**. Users must create an account to borrow books.

## 🚀 Prerequisites

To run this application, ensure you have **Ruby** and **Ruby on Rails 8** installed on your system.  

### ✅ Check if Ruby and Rails are Installed

Run the following commands to verify if you have **Ruby** and **Rails 8**:

```sh
ruby -v
rails -v
```

If Ruby or Rails 8 is not installed, follow the installation steps below.

### 🔧 Install Ruby and Rails 8

#### **For macOS & Linux (using RVM)**
```sh
\curl -sSL https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm install ruby
gem install rails -v 8.0
```

#### **For Ubuntu/Debian (using APT)**
```sh
sudo apt update
sudo apt install ruby-full
gem install rails -v 8.0
```

#### **For Windows (using RubyInstaller)**
1. Download and install **Ruby** from [RubyInstaller](https://rubyinstaller.org/).
2. Open Command Prompt and install Rails 8:
   ```sh
   gem install rails -v 8.0
   ```

---

## 📥 Clone the Repository

Navigate to your preferred directory and clone the **Book Lending App** repository:

```sh
git clone https://github.com/Masayaelvin/book_lending_app.git
cd book-lending-app
```

---

## 🏃‍♂️ Run the Application

Once inside the project directory, start the Rails server by running:

```sh
rails server
```

By default, the app will run on **localhost:3000**. Open your browser and visit:

🔗 **http://localhost:3000**

---

## 📖 Using the Application

1. **View Available Books:**  
   - Green: **Available**  
   - Red: **Borrowed**  

2. **Borrow a Book:**  
   - Click on a book title.  
   - If not logged in, you will be redirected to a login page.  
   - Create an account or log in to proceed.  

3. **View Borrowed Books:**  
   - After logging in, visit the **"My Books"** section from the navigation bar.  

4. **Return a Book:**  
   - Navigate to **"My Books"** and return any borrowed book.  

---

## 🤝 Contributing

Feel free to submit issues and pull requests. Contributions are welcome! 🚀

---

## 📜 License

This project is licensed under the MIT License.

---

Happy coding! 🎉
```

### 🔥 Features of This Markdown:
- Clearly structured sections.
- Easy-to-copy commands for installing dependencies and running the app.
- Explanation of how to use the app.
- Includes a contribution and license section.

Let me know if you'd like any modifications! 🚀