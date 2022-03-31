import { DataTypes, Model, Optional } from 'sequelize';
import db from './db';
import User from './user';

interface MatchAttributes {
    id: Number;
    userId: string;
    matchedUserId: string;
}

export type MatchInput = Optional<MatchAttributes, 'id'>;
export type MatchOutput = Required<MatchAttributes>;

class Match extends Model<MatchAttributes, MatchInput> implements MatchOutput {
    id!: Number;
    userId!: string;
    matchedUserId!: string;
}

Match.init(
    {
        id: {
            type: DataTypes.STRING,
            primaryKey: true,
        },
        userId: DataTypes.STRING,
        matchedUserId: DataTypes.STRING,
    },
    {
        sequelize: db,
        timestamps: false,
        tableName: 'matches',
    }
);

Match.belongsTo(User, { foreignKey: 'matchedUserId' });

export default Match;
