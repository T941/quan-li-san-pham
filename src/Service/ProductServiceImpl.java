package Service;

import model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService {
    private static Map<Integer, Product> products;

    static {
        products = new HashMap<>();
        products.put(1, new Product(1, "xuc xich", 50000, "do an", "sk"));
        products.put(2, new Product(2, "keo", 2000, "do an", "sk"));
        products.put(3, new Product(3, "X455", 1400000, "may tinh", "sk"));
        products.put(4, new Product(4, "x2", 160000, "mouse", "sk"));
        products.put(5, new Product(5, "X3", 1500000, "xe dap", "sk"));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(), product);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public Product findByName(String name) {
        List<Product> findAll1 = findAll();
        for (Product product : findAll1
        ) {
            if (product.getName().equals(name)) {
                return product;
            }

        }
        return null;
    }

    @Override
    public void update(int id, Product product) {
        products.put(id, product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }


}
