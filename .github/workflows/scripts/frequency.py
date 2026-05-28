import sys

def count_vowels(filename):
    vowels = "aeiouAEIOU"
    count = 0
    try:
        with open(filename, 'r') as file:
            text = file.read()
            for char in text:
                if char in vowels:
                    count += 1
        return count
    except FileNotFoundError:
        print(f"Error: {filename} not found.")
        sys.exit(1)

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python3 frequency.py <filename>")
        sys.exit(1)
    
    file_to_analyze = sys.argv[1]
    result = count_vowels(file_to_analyze)
    print(f"{result} vowels found")