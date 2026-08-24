import OpenAI from "openai";
import * as dotenv from "dotenv";

dotenv.config();

// initialize the client
const client = new OpenAI({
    baseURL: "https://openrouter.ai/api/v1",
    apiKey: process.env.OPENROUTER_API_KEY
});

// wrap the call in an async function
async function main() {
    const response = await client.chat.completions.create({
        model: "nvidia/nemotron-3-ultra-550b-a55b:free",
        max_tokens: 256,
        messages: [{
            role: "user",
            content: "What is a neural network in one sentence?"
        }]
    });

    console.log(response.choices[0].message.content);
}

main();

