from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from bs4 import BeautifulSoup
import mtggoldfish_password as mtg
import sys


# Configure Chrome to run in headless mode
chrome_options = Options()
chrome_options.add_argument('--headless')
chrome_options.add_argument('--disable-gpu')
chrome_options.add_argument('--log-level=3')

# Create a Chrome driver object
driver = webdriver.Chrome(options=chrome_options)

driver.get('https://www.mtggoldfish.com/login')

# find the email input and fill in the user's email address
email_input = driver.find_element(By.NAME, 'auth_key')
email_input.send_keys(sys.argv[1])

# find the password input and fill in the user's password
password_input = driver.find_element(By.NAME, 'password')
password_input.send_keys(mtg.PASSWORD)

# find the login button and click it

#wait = WebDriverWait(driver, 10)
#login_button = wait.until(EC.presence_of_element_located((By.NAME, 'commit')))

login_button = driver.find_element(By.NAME, 'commit')
login_button.click()

# navigate to the user's decks page
driver.get("https://www.mtggoldfish.com/decks")

page_source = driver.page_source

# Use BeautifulSoup to parse the HTML
soup = BeautifulSoup(page_source, 'html.parser')

# Find all the decks on the page
decks = soup.find_all('div', class_='superbrew-deck-tile')
colors = soup.find_all('span', class_ = 'manacost')

final = []
# Print the name of each deck and color identities
for deck, color in zip(decks, colors):
    deck_name = deck.get_text()
    result = " ".join(word for word in deck_name.split() if not word.startswith("\\"))

    color_identity = color['aria-label'][8:]
    print(f'{result} - {color_identity}')


driver.quit()