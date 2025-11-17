# Tap Game – Flutter Mini Project

A simple and fun two-player tap game built using **Flutter**.  
The screen is divided into two colored sections (Blue & Red).  
Each player taps their section to increase their score and expand their area.  
The player who fills most of the screen first, wins the game.

---

## 🎮 Game Rules

- Player A taps on the **Blue** section.
- Player B taps on the **Red** section.
- Each tap:
  - Increases your section height.
  - Decreases the opponent's section height.
  - Adds **5 points** to your score.
- If a player's card reaches the maximum height → **That player wins**.
- The winner screen shows:
  - Final Score  
  - Winner Name  
  - Background color matching the winner  
  - Restart button  

---

## 📱 Screens Included

### **1. Main Page**
- Two halves (Blue & Red)
- “Start” button to begin the game
![Main Screen](https://raw.githubusercontent.com/username/repo/main/images/main.png)

### **2. Game Page**
- Dynamic height animation for both players
- Score counter
- Tap to increase your section and try to win
  flutter game/Screenshot 2025-11-17 195954.png

### **3. Result Page**
- Displays score and winner
- Restart game button

---

## 🛠️ Tech Used
- **Flutter**
- **Dart**
- **Material UI Components**

---

## 🚀 How to Run
1. Install Flutter SDK  
2. Clone the repository:
   ```bash
   git clone https://github.com/your-repo-link
