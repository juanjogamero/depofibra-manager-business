import 'package:flutter_test/flutter_test.dart';
import 'package:depofibra/models/cliente.dart';
import 'package:depofibra/models/producto.dart';

void main() {
  group('Cliente', () {
    test('serializes business fields without document ID', () {
      final cliente = Cliente(
        id: 'cliente-1',
        nombre: 'Cliente de prueba',
        email: 'cliente@example.com',
        telefono: '600000000',
      );
      expect(cliente.toMap(), {
        'nombre': 'Cliente de prueba',
        'email': 'cliente@example.com',
        'telefono': '600000000',
      });
    });

    test('deserializes a Firestore document and preserves ID', () {
      final cliente = Cliente.fromMap({
        'nombre': 'Cliente',
        'email': 'contacto@example.com',
        'telefono': '611111111',
      }, 'doc-1');
      expect(cliente.id, 'doc-1');
      expect(cliente.nombre, 'Cliente');
      expect(cliente.email, 'contacto@example.com');
    });
  });

  group('Producto', () {
    test('serializes product details', () {
      final producto = Producto(
        nombre: 'Depósito 5000 L',
        tipo: 'deposito',
        capacidad: 5000,
        precio: 800,
      );
      expect(producto.toMap(), {
        'nombre': 'Depósito 5000 L',
        'tipo': 'deposito',
        'capacidad': 5000.0,
        'precio': 800.0,
      });
    });

    test('converts integer numeric fields to doubles', () {
      final producto = Producto.fromMap({
        'nombre': 'Piscina',
        'tipo': 'piscina',
        'capacidad': 12000,
        'precio': 4000,
      }, 'prod-1');
      expect(producto.id, 'prod-1');
      expect(producto.capacidad, 12000.0);
      expect(producto.precio, 4000.0);
    });

    test('provides sensible defaults for missing fields', () {
      final producto = Producto.fromMap({}, 'empty');
      expect(producto.nombre, '');
      expect(producto.tipo, 'deposito');
      expect(producto.capacidad, 0.0);
      expect(producto.precio, 0.0);
    });
  });
}
