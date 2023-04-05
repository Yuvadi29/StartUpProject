import pandas as pd
import matplotlib.pyplot as plt
from sklearn.preprocessing import LabelEncoder
from sklearn.neighbors import NearestNeighbors
from sklearn.linear_model import LinearRegression

startup_data = pd.read_csv('mpj.csv')
startup_data = startup_data.dropna()

le_industry = LabelEncoder()
le_city = LabelEncoder()
le_investor = LabelEncoder()
le_investment_type = LabelEncoder()

startup_data['Industry Vertical'] = le_industry.fit_transform(startup_data['Industry Vertical'])
startup_data['City  Location'] = le_city.fit_transform(startup_data['City  Location'])
startup_data['Investors Name'] = le_investor.fit_transform(startup_data['Investors Name'])
startup_data['InvestmentnType'] = le_investment_type.fit_transform(startup_data['InvestmentnType'])

X = startup_data[['Industry Vertical', 'City  Location', 'InvestmentnType']].values
y = startup_data['Amount in USD'].values

reg_model = LinearRegression()
reg_model.fit(X, y)

r2_score = reg_model.score(X, y)

nn_model = NearestNeighbors(n_neighbors=15, algorithm='ball_tree')
nn_model.fit(X)

user_industry = input("Enter the industry vertical: ")
user_city = input("Enter the city: ")
user_investment_type = input("Enter the investment type: ")

if user_industry not in le_industry.classes_:
    print("Invalid input for industry vertical.")
    exit()
if user_city not in le_city.classes_:
    print("Invalid input for city.")
    exit()
if user_investment_type not in le_investment_type.classes_:
    print("Invalid input for investment type.")
    exit()

user_industry_encoded = le_industry.transform([user_industry])[0]
user_city_encoded = le_city.transform([user_city])[0]
user_investment_type_encoded = le_investment_type.transform([user_investment_type])[0]

new_data_point = [[user_industry_encoded, user_city_encoded, user_investment_type_encoded]]
_, indices = nn_model.kneighbors(new_data_point)

output_data = startup_data.iloc[indices[0]]

# Add a new column for predicted profit
output_data['Predicted Profit'] = reg_model.predict(output_data[['Industry Vertical', 'City  Location', 'InvestmentnType']].values)

# Calculate profit/loss percentage
output_data['Profit/Loss %'] = (output_data['Predicted Profit'] - output_data['Amount in USD']) / output_data['Amount in USD'] * 100

# Add a new column indicating whether there will be profit or loss
output_data['Outcome'] = output_data.apply(lambda row: 'Profit' if row['Predicted Profit'] > row['Amount in USD'] else 'Loss', axis=1)

print("Input data:")
print(f"Industry vertical: {user_industry}, City: {user_city}, Investment type: {user_investment_type}")
print()
print("Output data:")
print(output_data[['Startup Name', 'Amount in USD', 'Predicted Profit', 'Profit/Loss %', 'Outcome']])

print(f"R-squared score: {r2_score:.3f}")

