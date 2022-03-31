import { Dialect, Sequelize } from 'sequelize';
import 'dotenv/config';

const dbName = process.env.NODE_CODEPUSH_DB_NAME as string;
const dbUser = process.env.NODE_CODEPUSH_DB_USER as string;
const dbHost = process.env.NODE_CODEPUSH_DB_HOST as string;
const dbPort = process.env.NODE_CODEPUSH_USER_SERVICE_DB_PORT as unknown as number;
const dbDriver = process.env.NODE_CODEPUSH_DB_DRIVER as Dialect;
const dbPassword = process.env.NODE_CODEPUSH_DB_PASSWORD as string;

const sequelize = new Sequelize(dbName, dbUser, dbPassword, {
    host: dbHost,
    port: dbPort,
    dialect: 'mysql',
});

export default sequelize;
