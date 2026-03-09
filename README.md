I love tabletop games, do you?

This is a specially designed RAG retrieval augmented generation. 
You can add documentation to the RAG of other game instructions and it will first take the text and divide it into chunks and then vectorize those chunks.

A local model is used to handle the embeddings and queries. 
Embed model: OLLAMA_EMBED_MODEL (defaults to nomic-embed-text)
Chat model: OLLAMA_MODEL (defaults to llama3.2:3b)
This can be scaled to better models for better performance if needed.

When queried it will vectorize the question and find the vector of embeddings that most likely matches the question, using that part to produce a natural language response.

I really enjoyed making this project and invite any improvements or criticism to help me improve it. 

you can reach me best at emayes528@gmail.com

Useage:

if you want to use via command line.
python query.py "[type your question inside the quotes]"
                  or
python3 query.py "[type your question inside the quotes]"
