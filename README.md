# 🔍 Root Locus and Time Response Analysis using MATLAB

This repository contains MATLAB code for analyzing the **Root Locus** and **Step Response** of different control system transfer functions. The code visualizes how system behavior changes with varying values of gain \(k\), and how the presence of poles or zeros affects the stability and transient response.

---

## 📌 Objective

To understand the **Root Locus method** and analyze the **time-domain response** of control systems using MATLAB. The goal is to observe how:

- Gain \(k\),
- Adding poles (e.g., integrators), and
- Adding zeros

impact the **stability**, **speed**, and **damping** of a system.

---

## 🔧 How to Use

1. Open MATLAB.
2. Place the file `lab4_root_locus_analysis.m` in your working directory.
3. Run the script.
4. The code will generate root locus and step response plots for three different systems, across multiple values of gain \(k\).

---

## 📁 Transfer Functions Covered and Detailed Analysis

### ✅ **TF1: \( G(s)H(s) = \frac{k}{(s+4)(s+20)} \)**

**Structure**:
- 2 poles at \(s = -4\) and \(s = -20\)
- No pole at origin (no integrator)
- No zero

**Root Locus Analysis**:
- Poles are on the left half-plane (LHP), and no zeros exist.
- Root locus starts at poles and moves toward infinity along asymptotes.
- The system remains **stable for all positive values of \(k\)**.

**Step Response**:
- As \(k\) increases:
  - **Settling time** decreases (faster system).
  - **Overshoot** may increase slightly.
- System is always **underdamped but stable**.

**Interpretation**:
- A classical second-order system.
- No integrator \(\Rightarrow\) **steady-state error exists** for step input.
- Good reference model.

---

### ✅ **TF2: \( G(s)H(s) = \frac{k}{s(s+4)(s+20)} \)**

**Structure**:
- 3 poles: \(s = 0, -4, -20\)
- Includes an **integrator** (pole at origin)

**Root Locus Analysis**:
- Root locus starts at 3 poles and ends at 2 finite zeros and 1 at infinity.
- Pole at origin introduces **low-frequency dynamics**, making system slower or less stable for high \(k\).
- Stability depends on the value of \(k\).

**Step Response**:
- Small \(k\): stable but slow.
- Medium \(k\): better speed, still stable.
- Large \(k\): risk of instability or high overshoot.

**Interpretation**:
- This is a **Type 1 system**.
- Advantage: **zero steady-state error** for step input.
- Drawback: May become **oscillatory or unstable**.


<img width="700" height="656" alt="image" src="https://github.com/user-attachments/assets/24fc71f3-8342-4e18-9203-c2161add52fa" />

---

### ✅ **TF3: \( G(s)H(s) = \frac{k(s+10)}{(s+4)(s+20)} \)**

**Structure**:
- 2 poles at \(s = -4\), \(s = -20\)
- 1 zero at \(s = -10\)

**Root Locus Analysis**:
- Zero at \(s = -10\) attracts the root locus branches.
- This pulls poles to the left \(\Rightarrow\) better damping and faster response.
- System remains stable for all \(k\).

**Step Response**:
- Compared to TF1:
  - **Lower overshoot**
  - **Faster settling time**

**Interpretation**:
- Adding a **left-half-plane zero** improves transient response.
- Common in lead compensator design.


<img width="662" height="692" alt="image" src="https://github.com/user-attachments/assets/bbb131e5-528c-424f-98f1-1106afbe3c48" />

---

## 📊 Observations Summary

| S.No | Transfer Function                  | Added Element  | Type | Stability Trend              | Notes                                 |
|------|------------------------------------|----------------|------|------------------------------|----------------------------------------|
| 1    | \( \frac{k}{(s+4)(s+20)} \)        | None           | 0    | Always Stable                | Basic underdamped 2nd-order system     |
| 2    | \( \frac{k}{s(s+4)(s+20)} \)       | Pole at Origin | 1    | Stable for small/medium \(k\)| Better steady-state, reduced damping   |
| 3    | \( \frac{k(s+10)}{(s+4)(s+20)} \)  | Zero at -10    | 0    | Always Stable                | Faster, more damped response           |

---

## 📘 Author

Prepared as part of the **Control Systems Lab (EC5)** at  
**PDPM IIITDM Jabalpur**  
by [@ex2uply](https://github.com/ex2uply)

---

## 📝 Additional Notes

- If plots are not showing up, ensure you’re using **MATLAB Desktop** (not online/headless mode).
- You may also use `saveas(gcf, 'filename.png')` inside the script to save plots as image files.
