### **📚 Book Lending App**  

The **Book Lending App** is a Ruby on Rails 8 application that allows users to browse available books, borrow them, and return them. Books that are available are shown in **green**, while borrowed books appear in **red**. Users must create an account to borrow books.  

---

## **🚀 Prerequisites**  

To run this application, ensure you have **Ruby**, **Ruby on Rails 8**, **Bundler**, and other required dependencies installed.  

---

## **✅ Check if Ruby, Rails, and Bundler are Installed**  

Run the following commands to verify if you have **Ruby**, **Rails 8**, and **Bundler**:  

```sh
ruby -v      # Check Ruby version
rails -v     # Check Rails version
bundler -v   # Check Bundler version
```

If **Ruby, Rails 8, or Bundler** is not installed, follow the installation steps below.

---

## **🔧 Install Ruby, Rails 8, and Dependencies**  

### **📌 For macOS & Linux (Using RVM)**  
```sh
\curl -sSL https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm install ruby
gem install rails -v 8.0
gem install bundler
```

### **📌 For Ubuntu/Debian (Using APT)**  
```sh
sudo apt update
sudo apt install ruby-full build-essential libsqlite3-dev
gem install rails -v 8.0
gem install bundler
```

### **📌 For Windows (Using RubyInstaller)**  
1. Download and install **Ruby** from [RubyInstaller](https://rubyinstaller.org/).  
2. Open Command Prompt and install Rails 8:  
   ```sh
   gem install rails -v 8.0
   gem install bundler
   ```

---

## **📥 Clone the Repository**  

Navigate to your preferred directory and clone the **Book Lending App** repository:  

```sh
git clone https://github.com/Masayaelvin/book_lending_app.git
cd book_lending_app
```

---

## **📦 Install Dependencies**  

📌 Inside the project folder, **install all required Ruby gems** by running:  
```sh
bundle install
```
This ensures all dependencies (like `sqlite3`, `bcrypt`, etc.) are installed.

---

## **🔧 Setup the Database**  

📌 Run the following commands to set up the database:  
```sh
rails db:create        # Create the database
rails db:migrate       # Run migrations
rails db:seed          # Seed initial data (if applicable)
```
If you're running tests, also **migrate the test database**:  
```sh
rails db:migrate RAILS_ENV=test
```

---

## **🏃‍♂️ Start the Rails Server**  

📌 Once everything is set up, start the Rails server by running:  
```sh
rails server
```
By default, the app will run on **localhost:3000**. Open your browser and visit:  
🔗 **http://localhost:3000**

---

## **📖 Using the Application**  

### **1️⃣ View Available Books:**  
   - ✅ **Green**: **Available**  
   - 🚨 **Red**: **Borrowed**  

### **2️⃣ Borrow a Book:**  
   - Click on a book title.  
   - If not logged in, you will be redirected to a login page.  
   - Create an account or log in to proceed.  
   - Click the borrow button to borrow the selected book.  
   - The book will now appear in **red** under **"My Books"**.  
   - You will see the **due date** for your borrowed book.  

### **3️⃣ View Borrowed Books:**  
   - After logging in, visit the **"My Books"** section from the navigation bar.  
   - Click **"Book Library"** to view all books again.  

### **4️⃣ Return a Book:**  
   - Navigate to **"My Books"** and return any borrowed book.  
   - Click the **"Return"** button to return a book.  

### **5️⃣ UI Overview**  
   - **Home Page** → Displays all available books.  
   - **My Books** → Shows all books borrowed by the user.  
   - **Book Details** → Displays the details of a selected book.  
   - **Login** → Allows users to log in.  
   - **Sign Up** → Allows users to create an account.  

---

## **🚀 Summary of Required Commands**
Here’s a **quick summary** of all the commands needed to **set up and run the app**:

```sh
# Clone the repository
git clone https://github.com/Masayaelvin/book_lending_app.git
cd book_lending_app

# Install dependencies
bundle install

# Setup the database
rails db:create
rails db:migrate
rails db:seed  # If applicable

# Run the application
rails server

```

---

### **🔥 Features of This Markdown**
✔ **Clearly structured sections**  
✔ **All required installation and setup commands included**  
✔ **Easy-to-follow instructions for running the app**  
