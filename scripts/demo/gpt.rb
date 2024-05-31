# enter prompt for ChatGPT
prompt = "write a haiku about tacos"

# OpenAI api key:
access_token = ENV.fetch("OPENAI_ACCESS_TOKEN")

# connect to the ChatGPT API
# DON'T CHANGE THIS CODE!!!!
# ------------------------
client = OpenAI::Client.new(:access_token => access_token)
response = client.chat(
  :parameters => {
    :model => "gpt-3.5-turbo",
    :messages => [
      { :role => "user", :content => prompt }
    ]
  }
)
# ------------------------

# output ChatGPT response to the prompt
content = response["choices"][0]["message"]["content"]
puts content