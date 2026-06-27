# Hybrid Extractive-Abstractive Text Summarization Using TF-IDF and Fine-Tuned FLAN-T5

[![Hugging Face Space](https://img.shields.io/badge/%F0%9F%A4%97%20Hugging%20Face-Space-blue)](https://huggingface.co/spaces) 
[![FastAPI](https://img.shields.io/badge/FastAPI-005571?style=flat&logo=fastapi&logoColor=white)](https://fastapi.tiangolo.com)
[![PyTorch](https://img.shields.io/badge/PyTorch-%23EE4C2C.svg?style=flat&logo=PyTorch&logoColor=white)](https://pytorch.org)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This repository contains the official implementation of the paper: **"Hybrid Extractive-Abstractive Text Summarization Using TF-IDF and Fine-Tuned FLAN-T5"** authored by *Utkarsh Kumar, Basant, and Dr. Gaurav Singal* at the **Netaji Subhas University of Technology (NSUT)**, New Delhi.

The project features a full-stack, low-latency text summarization pipeline deployed as an asynchronous web application via **FastAPI** and hosted on the **Hugging Face Hub**.

---

## 🚀 Key Features
* **"Extract-then-Abstract" Pipeline:** Combines traditional statistical reliability with modern generative transformer fluency to eliminate large language model (LLM) hallucinations.
* **Context Window Optimization:** Uses a dynamic TF-IDF preliminary gatekeeper to strip out background noise and extract the top $K$ salient sentences, squeezing dense multi-page text into an optimized input tensor.
* **Multi-Format Parsing:** Integrated file parsers supporting real-time processing of user-uploaded **PDF, DOCX, and TXT** documents.
* **Production Deployment:** Deployed with high performance using a Python-based asynchronous FastAPI backend.

---

## 🧬 System Architecture & Methodology

The application relies on a synergistic two-stage hybrid framework designed to bound the creative generation of an abstractive model with strict, statistically verified factual context:
