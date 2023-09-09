package gp3.models;

public class CartItem {

        private int id ;
        private int count ;

        public CartItem(int id, int count) {
            this.id = id;
            this.count = count;
        }

        public int getId() {
            return id;
        }

        public void setId(int id) {
            this.id = id;
        }

        public int getCount() {
            return count;
        }

        public void setCount(int count) {
            this.count = count;
        }


}
