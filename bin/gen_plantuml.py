import re
import argparse

def parse_table_ddl(ddl):
    tables = {}
    current_table = None
    column_pattern = re.compile(r'^\s*"([^"]+)"\s+(\w+(\s*\(.*?\))?)', re.IGNORECASE)

    for line in ddl.splitlines():
        line = line.strip()
        if line.upper().startswith("CREATE TABLE"):
            # Extract the table name, assuming it is the second quoted string in the line
            match = re.findall(r'"([^"]*)"', line)
            if match and len(match) > 1:
                current_table = match[1]
                tables[current_table] = []
        elif line.startswith(")"):
            current_table = None
        elif current_table and not line.startswith("--") and line:
            # Match the column definition pattern
            match = column_pattern.match(line)
            if match:
                column_name = match.group(1)
                column_type = match.group(2).split("DEFAULT")[0].strip(',')
                tables[current_table].append((column_name, column_type))
    
    return tables

def generate_plantuml(tables):
    plantuml = "@startuml\n"
    for table, columns in tables.items():
        plantuml += f"class {table} {{\n"
        for column, column_type in columns:
            plantuml += f"  {column}: {column_type}\n"
        plantuml += "}\n"
    plantuml += "@enduml"
    return plantuml

def main(input_file_path, output_file_path):
    # Read the DDL content from the input file
    with open(input_file_path, 'r') as file:
        ddl_content = file.read()

    # Parse the DDL content and generate PlantUML code
    tables = parse_table_ddl(ddl_content)
    plantuml_code = generate_plantuml(tables)

    # Write the PlantUML code to the output file
    with open(output_file_path, 'w') as file:
        file.write(plantuml_code)

    print(f"PlantUML code has been saved to {output_file_path}")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Generate PlantUML class diagram from SQL DDL.')
    parser.add_argument('input_file', help='Path to the input SQL file.')
    parser.add_argument('output_file', help='Path to the output PlantUML file.')
    
    args = parser.parse_args()
    main(args.input_file, args.output_file)
