import 'package:internet_connection_checker/internet_connection_checker.dart';

// Rôle : Vérifie la connectivité réseau avant les appels API.
// Dépendances : internet_connection_checker
// Désactiver : supprimer ce fichier et les vérifications de connectivité dans les repositories.
abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfoImpl implements NetworkInfo {
  final InternetConnectionChecker connectionChecker;

  NetworkInfoImpl(this.connectionChecker);

  @override
  Future<bool> get isConnected => connectionChecker.hasConnection;
}
