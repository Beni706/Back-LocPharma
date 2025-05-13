import express from 'express'
import cors from 'cors'
const app = express()

// Middlewaires
export const configurationMiddleware = (app) => {
    app.use(cors({
        origin: ['https://pharmalabs.onrender.com'], // ton frontend
        credentials: true,
    }))
    app.use(express.json());
    app.use(express.urlencoded({ extended: true }))
}
