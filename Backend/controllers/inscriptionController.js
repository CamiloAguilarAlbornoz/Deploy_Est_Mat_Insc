"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.inscriptionController = void 0;
const database_1 = __importDefault(require("../database"));
class InscriptionController {
    list(req, res) {
        const inscripciones = database_1.default.query('select e.nombre, e.apellido, m.nombre_materia, i.estado_inscripcion from ESTUDIANTES e, MATERIAS m, INSCRIPCION_MATERIAS i WHERE e.id_estudiante = i.id_estudiante AND m.id_materia = i.id_materia', (err, results, fields) => {
            res.json(results);
            console.log(err);
            if (err) {
                res.status(400).json({
                    status: 'error 400',
                    message: err.message
                });
                return;
            }
            else if (!results) {
                res.status(204).json({
                    status: '204',
                    result: 'No se encontró ningun registro que coincida con los parametros dados'
                });
            }
            else {
                res.status(200).json({
                    status: '200',
                    result: results
                });
            }
        });
    }
    getId(req, res) {
        const inscripciones = database_1.default.query('select e.nombre, e.apellido, m.nombre_materia, i.estado_inscripcion from ESTUDIANTES e, MATERIAS m, INSCRIPCION_MATERIAS i where e.id_estudiante = i.id_estudiante AND m.id_materia = i.id_materia AND i.id_materia = ? and i.id_estudiante = ?', [req.params.idm, req.params.ide], (err, results, fields) => {
            console.log(err);
            if (err) {
                res.status(400).json({
                    status: 'error 400',
                    message: err.message
                });
                return;
            }
            else if (!results) {
                res.status(204).json({
                    status: '204',
                    result: 'No se encontró ningun registro que coincida con los parametros dados'
                });
            }
            else {
                res.status(200).json({
                    status: '200',
                    result: results
                });
            }
        });
    }
    create(req, res) {
        database_1.default.query('INSERT INTO INSCRIPCION_MATERIAS set ?', [req.body], (err, results, fields) => {
            console.log(err);
            if (err) {
                res.status(400).json({
                    status: 'error 400',
                    message: err.message
                });
                return;
            }
            else {
                res.status(200).json({
                    status: '200',
                    message: 'Se realizó la inscripcion de materia'
                });
            }
        });
    }
    delete(req, res) {
        res.json({ text: 'Eliminado una materia ' + req.params.idm });
    }
    update(req, res) {
        database_1.default.query('UPDATE INSCRIPCION_MATERIAS set ? WHERE id_materia = ? AND id_estudiante = ?', [req.body, req.params.idm, req.params.ide], (err, results, fields) => {
            console.log(err);
            if (err) {
                res.status(400).json({
                    status: 'error 400',
                    message: err.message
                });
                return;
            }
            else {
                res.status(200).json({
                    status: '200',
                    message: 'Se actualizó la inscripción de materia ' + req.params.idm
                });
            }
        });
    }
    patch(req, res) {
        database_1.default.query('UPDATE INSCRIPCION_MATERIAS set estado_inscripcion = ? WHERE id_materia = ? AND id_estudiante = ?', [req.body.estado_inscripcion, req.params.idm, req.params.ide], (err, results, fields) => {
            console.log(err);
            if (err) {
                res.status(400).json({
                    status: 'error 400',
                    message: err.message
                });
                return;
            }
            else {
                res.status(200).json({
                    status: '200',
                    message: 'Se cambío el estado de la inscripción'
                });
            }
        });
    }
}
exports.inscriptionController = new InscriptionController();
