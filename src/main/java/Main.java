import java.util.*;

public class Main {

        public static int jump(int[] N) {
            //[2,1,2,1,4]
            int len = N.length - 1, curr = -1, next = 0, ans = 0;
            for (int i = 0; next < len; i++) {
                if (i > curr) {
                    ans++;
                    curr = next;
                };

                next = Math.max(next, N[i] + i);
                System.out.println(curr+" "+next+" "+ans);
            };
            return ans;
        }
    public static void main(String[] args) {
        int[] a = {2,1,2,1,4};
        System.out.println(jump(a));
        ArrayList<Integer> b = new ArrayList<Integer>();


    }
}