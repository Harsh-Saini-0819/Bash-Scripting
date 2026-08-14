# Interactive Bash Calculator

A lightweight, interactive command-line calculator written in Bash. This script allows users to perform basic arithmetic operations—**Addition**, **Subtraction**, **Multiplication**, and **Division**—through a simple text-based menu.

---

## 🚀 Features

*   **Menu-Driven Interface:** Simple letter-based selection (`a`, `b`, `c`, `d`).
*   **Basic Arithmetic:** Supports standard integer mathematics.
*   **Error Prevention:** Built-in division-by-zero check to prevent runtime crashes.
*   **User Friendly:** Clear validation prompts and confirmation messages.

---

## 🛠️ Requirements

*   A Unix-like operating system (**Linux**, **macOS**, or **Windows Subsystem for Linux (WSL)**).
*   **Bash shell** (Bourne Again SHell).

---

## 💻 How to Use

### 1. Save the Script
Save the code into a file named `calculator.sh`.

### 2. Make the Script Executable
Before running the script, you must grant it execution permissions:
```bash
chmod +x calculator.sh
```

### 3. Run the Calculator
Execute the script using the following command:
```bash
./calculator.sh
```

---

## 📋 Code Architecture

The script uses a Bash `case` statement to handle user choices and conditional logic to manage division safety:

*   **`a` (Addition):** Computes `$(( $num1 + $num2 ))`
*   **`b` (Subtraction):** Computes `$(( $num1 - $num2 ))`
*   **`c` (Multiplication):** Computes `$(( $num1 * $num2 ))`
*   **`d` (Division):** Evaluates if the denominator is `0` via `[[ $den -eq 0 ]]`. If safe, computes `$(($num/$den))`.
*   **`*` (Wildcard):** Catches invalid menu entries and warns the user.

---

## ⚠️ Current Limitations

*   **Integer Math Only:** Bash arithmetic operations naturally truncate decimal values and do not natively support floating-point floating calculations.
*   **Input Validation:** The script assumes the user enters valid integers. Non-numeric input fields may throw errors during calculation.
