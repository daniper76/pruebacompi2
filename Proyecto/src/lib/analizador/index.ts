import * as Parser from './analizador';

export default function parseInput(input: string) {
    try {
        Parser.parse(input);
    } catch (e) {
        return e as string;
    }
    return "La entrada proporcionada es correcta";
}