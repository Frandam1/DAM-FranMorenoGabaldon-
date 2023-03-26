import re

email = "infofranmoreno.com"

regla = r'\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,7}\b'

validacion = re.search(regla,email)

print(validacion)
