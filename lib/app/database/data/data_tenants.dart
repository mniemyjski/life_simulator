import '../../assets/models/tenant/tenant_model.dart';

class DataTenants {
  static List<Tenant> db() {
    return const [
      Tenant(minLevel: 0, rent: 800, rating: 1, hasAnimal: true, chance: 0),
      Tenant(minLevel: 0, rent: 800, rating: 2, hasAnimal: true, chance: 0),
      Tenant(minLevel: 1, rent: 800, rating: 3, hasAnimal: true, chance: 0),
      Tenant(minLevel: 2, rent: 800, rating: 4, hasAnimal: true, chance: 0),
      Tenant(minLevel: 3, rent: 800, rating: 5, hasAnimal: true, chance: 0),
      //
      Tenant(minLevel: 0, rent: 800, rating: 1, hasAnimal: false, chance: 0),
      Tenant(minLevel: 0, rent: 800, rating: 2, hasAnimal: false, chance: 0),
      Tenant(minLevel: 1, rent: 800, rating: 3, hasAnimal: false, chance: 0),
      Tenant(minLevel: 2, rent: 800, rating: 4, hasAnimal: false, chance: 0),
      Tenant(minLevel: 3, rent: 800, rating: 5, hasAnimal: false, chance: 0),

      //1
      Tenant(minLevel: 1, rent: 1000, rating: 1, hasAnimal: true, chance: 5),
      Tenant(minLevel: 1, rent: 1000, rating: 2, hasAnimal: true, chance: 5),
      Tenant(minLevel: 1, rent: 1000, rating: 3, hasAnimal: true, chance: 20),
      Tenant(minLevel: 2, rent: 1000, rating: 4, hasAnimal: true, chance: 25),
      Tenant(minLevel: 3, rent: 1000, rating: 5, hasAnimal: true, chance: 50),
      //
      Tenant(minLevel: 1, rent: 1000, rating: 1, hasAnimal: false, chance: 5),
      Tenant(minLevel: 1, rent: 1000, rating: 2, hasAnimal: false, chance: 5),
      Tenant(minLevel: 1, rent: 1000, rating: 3, hasAnimal: false, chance: 20),
      Tenant(minLevel: 2, rent: 1000, rating: 4, hasAnimal: false, chance: 25),
      Tenant(minLevel: 3, rent: 1000, rating: 5, hasAnimal: false, chance: 50),

      //2
      Tenant(minLevel: 2, rent: 1200, rating: 1, hasAnimal: true, chance: 10),
      Tenant(minLevel: 2, rent: 1200, rating: 2, hasAnimal: true, chance: 10),
      Tenant(minLevel: 2, rent: 1200, rating: 3, hasAnimal: true, chance: 10),
      Tenant(minLevel: 3, rent: 1200, rating: 4, hasAnimal: true, chance: 10),
      Tenant(minLevel: 4, rent: 1200, rating: 5, hasAnimal: true, chance: 50),
      //
      Tenant(minLevel: 2, rent: 1200, rating: 1, hasAnimal: false, chance: 10),
      Tenant(minLevel: 2, rent: 1200, rating: 2, hasAnimal: false, chance: 10),
      Tenant(minLevel: 2, rent: 1200, rating: 3, hasAnimal: false, chance: 10),
      Tenant(minLevel: 3, rent: 1200, rating: 4, hasAnimal: false, chance: 10),
      Tenant(minLevel: 4, rent: 1200, rating: 5, hasAnimal: false, chance: 50),

      //3
      Tenant(minLevel: 3, rent: 1600, rating: 1, hasAnimal: true, chance: 10),
      Tenant(minLevel: 3, rent: 1600, rating: 2, hasAnimal: true, chance: 10),
      Tenant(minLevel: 3, rent: 1600, rating: 3, hasAnimal: true, chance: 10),
      Tenant(minLevel: 4, rent: 1600, rating: 4, hasAnimal: true, chance: 10),
      Tenant(minLevel: 5, rent: 1600, rating: 5, hasAnimal: true, chance: 50),
      //
      Tenant(minLevel: 3, rent: 1600, rating: 1, hasAnimal: false, chance: 10),
      Tenant(minLevel: 3, rent: 1600, rating: 2, hasAnimal: false, chance: 10),
      Tenant(minLevel: 3, rent: 1600, rating: 3, hasAnimal: false, chance: 10),
      Tenant(minLevel: 4, rent: 1600, rating: 4, hasAnimal: false, chance: 10),
      Tenant(minLevel: 5, rent: 1600, rating: 5, hasAnimal: false, chance: 50),

      //4
      Tenant(minLevel: 4, rent: 1800, rating: 1, hasAnimal: true, chance: 10),
      Tenant(minLevel: 4, rent: 1800, rating: 2, hasAnimal: true, chance: 10),
      Tenant(minLevel: 4, rent: 1800, rating: 3, hasAnimal: true, chance: 10),
      Tenant(minLevel: 5, rent: 1800, rating: 4, hasAnimal: true, chance: 10),
      Tenant(minLevel: 5, rent: 1800, rating: 5, hasAnimal: true, chance: 50),
      //
      Tenant(minLevel: 4, rent: 1800, rating: 1, hasAnimal: false, chance: 10),
      Tenant(minLevel: 4, rent: 1800, rating: 2, hasAnimal: false, chance: 10),
      Tenant(minLevel: 4, rent: 1800, rating: 3, hasAnimal: false, chance: 10),
      Tenant(minLevel: 4, rent: 1800, rating: 4, hasAnimal: false, chance: 10),
      Tenant(minLevel: 5, rent: 1800, rating: 5, hasAnimal: false, chance: 50),

      //5
      Tenant(minLevel: 5, rent: 2000, rating: 1, hasAnimal: true, chance: 50),
      Tenant(minLevel: 5, rent: 2000, rating: 2, hasAnimal: true, chance: 50),
      Tenant(minLevel: 5, rent: 2000, rating: 3, hasAnimal: true, chance: 50),
      Tenant(minLevel: 5, rent: 2000, rating: 4, hasAnimal: true, chance: 50),
      Tenant(minLevel: 5, rent: 2000, rating: 5, hasAnimal: true, chance: 50),
      //
      Tenant(minLevel: 5, rent: 2000, rating: 1, hasAnimal: false, chance: 100),
      Tenant(minLevel: 5, rent: 2000, rating: 2, hasAnimal: false, chance: 100),
      Tenant(minLevel: 5, rent: 2000, rating: 3, hasAnimal: false, chance: 100),
      Tenant(minLevel: 5, rent: 2000, rating: 4, hasAnimal: false, chance: 100),
      Tenant(minLevel: 5, rent: 2000, rating: 5, hasAnimal: false, chance: 100),
    ];
  }
}
