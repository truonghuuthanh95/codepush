import express, { Request, Response, Application, NextFunction, json, urlencoded } from 'express';
import session from 'express-session';
import cors from 'cors';
import helmet from 'helmet';
import morgan from 'morgan';
import 'dotenv/config';
import os from 'os';
import { userRoute } from './routes/index';
const app: Application = express();
const PORT = 9000;

//SET UV_THREADPOOL_SIZE
process.env.UV_THREADPOOL_SIZE = os.cpus().length as unknown as string;

/**
 * MIDDLEWARE
 */
app.use(
    session({
        secret: 'keyboard cat',
        resave: true,
        saveUninitialized: true,
        cookie: {
            secure: false,
            httpOnly: true,
            maxAge: 365 * 24 * 60 * 60 * 60 * 60,
        },
    })
);

app.use(json());
app.use(urlencoded({ extended: true }));
app.use(morgan('combined'));
app.use(helmet());
app.use(cors());

/**
 * ROUTES
 */

app.use('/user', userRoute);

/**
 * ERROR
 */
app.use((err: Error, req: Request, res: Response, next: NextFunction) => {
    console.log(err);

    res.status(500).send('something went wrong');
});

/**
 * NOT FOUND
 */
app.use((req: Request, res: Response) => {
    res.status(404).send("Sorry can't find that!");
});

/**
 * START APP
 */
app.listen(PORT, () => {
    console.log(`⚡️[server]: Server is running at port:${PORT}`);
});
