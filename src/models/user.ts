import { DataTypes, Model, Optional } from 'sequelize';
import db from './db';

interface UserAttributes {
    id: string;
    title: string;
    firstName: string;
    lastName: string;
    gender: string;
    email: string;
    dateOfBirth: string;
    registerDate: string;
    phone: string;
    picture: string;
}

export type UserInput = Optional<UserAttributes, 'id'>;
export type UserOutput = Required<UserAttributes>;

class User extends Model<UserAttributes, UserInput> implements UserOutput {
    id!: string;
    title!: string;
    firstName!: string;
    lastName!: string;
    gender!: string;
    email!: string;
    dateOfBirth!: string;
    registerDate!: string;
    phone!: string;
    picture!: string;
}

User.init(
    {
        id: {
            type: DataTypes.STRING,
            primaryKey: true,
        },
        title: DataTypes.STRING,
        firstName: DataTypes.STRING,
        lastName: DataTypes.STRING,
        gender: DataTypes.STRING,
        email: DataTypes.STRING,
        dateOfBirth: DataTypes.STRING,
        registerDate: DataTypes.STRING,
        phone: DataTypes.STRING,
        picture: DataTypes.STRING,
    },
    {
        sequelize: db,
        timestamps: false,
        tableName: 'users',
    }
);

export default User;
