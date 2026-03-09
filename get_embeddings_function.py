import os
from langchain_ollama import OllamaEmbeddings
from dotenv import load_dotenv

load_dotenv()

def get_embedding_function():
    embeddings = OllamaEmbeddings(
        model=os.getenv("OLLAMA_EMBED_MODEL", "nomic-embed-text"),
        base_url=os.getenv("OLLAMA_BASE_URL", "http://localhost:11434"),
    )
    return embeddings