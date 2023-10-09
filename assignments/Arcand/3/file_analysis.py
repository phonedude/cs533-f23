import re
import os

# Directory where the response files are stored
response_directory = r'C:\Users\17572\cs533-f23\assignments\Arcand\3\response_files'  # Replace with your directory path

# Initialize variables to store aggregated information
aggregated_data = {
    'Final_Status_Codes': [],
    'Num_Cookies': [],
    'HttpOnly_Count': 0,
    'Secure_Count': 0,
    'SameSite_Strict_Count': 0,
    'SameSite_Lax_Count': 0,
    'SameSite_None_Count': 0,
    'Path_Count': 0,
    'NonRoot_Path_Count': 0,
    'Cookie_Attributes': [],  # To store attributes for each cookie
    'SameSite_Count': 0,  # Corrected SameSite count
}

# Function to extract cookie information from a response file
def extract_cookie_info(file_path):
    with open(file_path, 'r') as file:
        content = file.read()

    # Extract final status code
    final_status_code_match = re.search(r'HTTP/[\d.]+\s+(\d+)\s+', content)
    if final_status_code_match:
        final_status_code = final_status_code_match.group(1)
        aggregated_data['Final_Status_Codes'].append(final_status_code)

    # Extract cookies
    cookie_matches = re.findall(r'Set-Cookie: (.+)', content)
    num_cookies = len(cookie_matches)
    aggregated_data['Num_Cookies'].append(num_cookies)

    cookie_attributes = []  # To store attributes for each cookie in this response

    for cookie_str in cookie_matches:
        # Check if the cookie has HttpOnly attribute
        http_only = 'HttpOnly' in cookie_str

        # Check if the cookie has Secure attribute
        secure = 'Secure' in cookie_str

        # Check if the cookie has SameSite attribute and its corresponding policy
        samesite_match = re.search(r'SameSite=([^\s;]+)', cookie_str)
        samesite = None
        if samesite_match:
            samesite = samesite_match.group(1).strip().lower()
            aggregated_data['SameSite_Count'] += 1  # Increment SameSite count

            # Increment SameSite Strict or Lax count based on the policy
            if samesite == 'strict':
                aggregated_data['SameSite_Strict_Count'] += 1
            elif samesite == 'lax':
                aggregated_data['SameSite_Lax_Count'] += 1
            elif samesite == 'none':
                aggregated_data['SameSite_None_Count'] += 1

        # Check if the cookie has Path attribute and its corresponding value
        path_match = re.search(r'Path=([^\s;]+)', cookie_str)
        path = None
        if path_match:
            path = path_match.group(1)

        cookie_attributes.append({
            'HttpOnly': http_only,
            'Secure': secure,
            'SameSite': samesite,
            'Path': path,
        })

        # Update aggregated counts
        if http_only:
            aggregated_data['HttpOnly_Count'] += 1
        if secure:
            aggregated_data['Secure_Count'] += 1
        if path:
            aggregated_data['Path_Count'] += 1
            if path != '/':
                aggregated_data['NonRoot_Path_Count'] += 1

    aggregated_data['Cookie_Attributes'].append(cookie_attributes)

# Loop through each response file in the directory
for filename in os.listdir(response_directory):
    if filename.endswith('.txt'):
        response_file_path = os.path.join(response_directory, filename)
        extract_cookie_info(response_file_path)

# Write the aggregated data to a single output file
output_file_path = r'C:\Users\17572\cs533-f23\assignments\Arcand\3\aggregated_data.txt'

try:
    with open(output_file_path, 'w') as output_file:
        output_file.write(f'The terminating (final) status codes: {aggregated_data["Final_Status_Codes"]}\n')
        output_file.write(f'The number of different cookies set: {aggregated_data["Num_Cookies"]}\n')
        output_file.write(f'HttpOnly Count: {aggregated_data["HttpOnly_Count"]}\n')
        output_file.write(f'Secure Count: {aggregated_data["Secure_Count"]}\n')
        output_file.write(f'SameSite Count: {aggregated_data["SameSite_Count"]}\n')
        output_file.write(f'SameSite Strict Count: {aggregated_data["SameSite_Strict_Count"]}\n')
        output_file.write(f'SameSite Lax Count: {aggregated_data["SameSite_Lax_Count"]}\n')
        output_file.write(f'SameSite None Count: {aggregated_data["SameSite_None_Count"]}\n')
        output_file.write(f'Path Count: {aggregated_data["Path_Count"]}\n')
        output_file.write(f'Non-Root Path Count: {aggregated_data["NonRoot_Path_Count"]}\n')
        
        # Write the Cookie Attributes section
        output_file.write('Cookie Attributes:\n')
        for i, cookie_attrs in enumerate(aggregated_data['Cookie_Attributes']):
            output_file.write(f'Response {i + 1}:\n')
            for j, cookie in enumerate(cookie_attrs):
                output_file.write(f'  Cookie {j + 1}:\n')
                output_file.write(f'    HttpOnly: {cookie["HttpOnly"]}\n')
                output_file.write(f'    Secure: {cookie["Secure"]}\n')
                output_file.write(f'    SameSite: {cookie["SameSite"]}\n')
                output_file.write(f'    Path: {cookie["Path"]}\n')
                output_file.write('\n')
except Exception as e:
    print(f'An error occurred: {str(e)}')

print(f'Aggregated data written to {output_file_path}')
