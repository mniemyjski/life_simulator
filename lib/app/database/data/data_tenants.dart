import 'package:life_simulator/app/real_assets/models/tenant/tenant_model.dart';

class DataTenants {
  static List<Tenant> db() {
    return const [
      Tenant(minLevel: 0, rent: 800, rating: 1, hasAnimal: true, chance: 10),
      Tenant(minLevel: 0, rent: 800, rating: 2, hasAnimal: true, chance: 10),
      Tenant(minLevel: 0, rent: 800, rating: 3, hasAnimal: true, chance: 10),
      Tenant(minLevel: 0, rent: 800, rating: 4, hasAnimal: true, chance: 10),
      Tenant(minLevel: 0, rent: 800, rating: 5, hasAnimal: true, chance: 10),
      //
      Tenant(minLevel: 0, rent: 800, rating: 1, hasAnimal: false, chance: 10),
      Tenant(minLevel: 0, rent: 800, rating: 2, hasAnimal: false, chance: 10),
      Tenant(minLevel: 0, rent: 800, rating: 3, hasAnimal: false, chance: 10),
      Tenant(minLevel: 0, rent: 800, rating: 4, hasAnimal: false, chance: 10),
      Tenant(minLevel: 0, rent: 800, rating: 5, hasAnimal: false, chance: 10),
      //1
      Tenant(minLevel: 1, rent: 1200, rating: 1, hasAnimal: true, chance: 10),
      Tenant(minLevel: 1, rent: 1200, rating: 2, hasAnimal: true, chance: 10),
      Tenant(minLevel: 1, rent: 1200, rating: 3, hasAnimal: true, chance: 10),
      Tenant(minLevel: 1, rent: 1200, rating: 4, hasAnimal: true, chance: 10),
      Tenant(minLevel: 1, rent: 1200, rating: 5, hasAnimal: true, chance: 10),
      //
      Tenant(minLevel: 1, rent: 1200, rating: 1, hasAnimal: false, chance: 10),
      Tenant(minLevel: 1, rent: 1200, rating: 2, hasAnimal: false, chance: 10),
      Tenant(minLevel: 1, rent: 1200, rating: 3, hasAnimal: false, chance: 10),
      Tenant(minLevel: 1, rent: 1200, rating: 4, hasAnimal: false, chance: 10),
      Tenant(minLevel: 1, rent: 1200, rating: 5, hasAnimal: false, chance: 10),
      //2
      Tenant(minLevel: 2, rent: 1600, rating: 1, hasAnimal: true, chance: 10),
      Tenant(minLevel: 2, rent: 1600, rating: 2, hasAnimal: true, chance: 10),
      Tenant(minLevel: 2, rent: 1600, rating: 3, hasAnimal: true, chance: 10),
      Tenant(minLevel: 2, rent: 1600, rating: 4, hasAnimal: true, chance: 10),
      Tenant(minLevel: 2, rent: 1600, rating: 5, hasAnimal: true, chance: 10),
      //
      Tenant(minLevel: 2, rent: 1600, rating: 1, hasAnimal: false, chance: 10),
      Tenant(minLevel: 2, rent: 1600, rating: 2, hasAnimal: false, chance: 10),
      Tenant(minLevel: 2, rent: 1600, rating: 3, hasAnimal: false, chance: 10),
      Tenant(minLevel: 2, rent: 1600, rating: 4, hasAnimal: false, chance: 10),
      Tenant(minLevel: 2, rent: 1600, rating: 5, hasAnimal: false, chance: 10),
    ];
  }
}
