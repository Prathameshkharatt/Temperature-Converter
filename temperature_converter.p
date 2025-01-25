def celsius_to_fahrenheit(celsius):
    return (celsius * 9/5) + 32

def fahrenheit_to_celsius(fahrenheit):
    return (fahrenheit - 32) * 5/9

def get_valid_temperature(prompt):
    while True:
        try:
            return float(input(prompt))
        except ValueError:
            print("Invalid input! Please enter a numeric value.")

def main():
    while True:
        print("\nTemperature Converter")
        print("1. Celsius to Fahrenheit")
        print("2. Fahrenheit to Celsius")
        print("3. Exit")
        
        choice = input("Choose an option (1, 2, or 3): ")

        if choice == "1":
            celsius = get_valid_temperature("Enter temperature in Celsius: ")
            print(f"{celsius}°C = {celsius_to_fahrenheit(celsius):.2f}°F")
        elif choice == "2":
            fahrenheit = get_valid_temperature("Enter temperature in Fahrenheit: ")
            print(f"{fahrenheit}°F = {fahrenheit_to_celsius(fahrenheit):.2f}°C")
        elif choice == "3":
            print("Exiting program...")
            break
        else:
            print("Invalid choice! Please select 1, 2, or 3.")

if __name__ == "__main__":
    main()



