Agent.destroy_all
agent = Agent.create(registered: true, first_name: "Registered", last_name: "Agent", license_number: "123456789", phone_number: "555-555-5555", email: 'test@test.local')
agent2 = Agent.create(registered: false, first_name: "Unregistred", last_name: "Agent", license_number: "987654321", phone_number: "555-555-5555", email: 'test2@test.local')

# Generate a theme
agent.build_theme
agent.save

agent2.build_theme
agent2.save
