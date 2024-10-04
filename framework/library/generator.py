import random
import unicodedata
import platform
import pyautogui
import pyperclip
import time

def txt_to_dict(string):
    itens = string.split(';')
    lista = []
    for item in itens:
        lista.append(item)
    dict = {}
    for dados in lista:
        chaves = dados.split('=')
        dict.update({chaves[0]: chaves[1]})
    return dict

