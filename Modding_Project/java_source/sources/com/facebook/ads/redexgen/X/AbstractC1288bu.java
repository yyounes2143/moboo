package com.facebook.ads.redexgen.X;

import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.facebook.ads.redexgen.X.bu  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC1288bu {
    public static String[] A00 = {"M7M7680JiQXMJzeuHBUdBK3CqcsunIE3", "7YJQc0MEUr6fNb1HoLhvfznehf2fNPi1", "fqXve0BGHc", "EJDyhBK8ScH8NN0H4G45MCvGKFSIU6i3", "lE5hsHUrpnTpaSUAUiDOdKdDJm2EXpBt", "fXhWa5fzMs", "jGMjXmbPjJmsUXbAj46daPhZmilD9JtA", "gy7nSuWAyo"};
    public static final Map<String, WeakReference<C1287bt>> A01 = new HashMap();

    public static int A00() {
        Map<String, WeakReference<C1287bt>> map = A01;
        if (A00[4].charAt(3) != 'h') {
            throw new RuntimeException();
        }
        String[] strArr = A00;
        strArr[3] = "KcOG1rzwVGm5OqslsWQoAqhkYEC7FRij";
        strArr[1] = "Dhj4Lprngz6YVn4AutwbBiUWJOZdaDii";
        return map.size();
    }

    public static C1287bt A01(C1376dL c1376dL, AbstractC1657hy abstractC1657hy, int i, InterfaceC1285br interfaceC1285br) {
        C1287bt c1287bt = new C1287bt(c1376dL, abstractC1657hy, c1376dL.A02().A0A(), i);
        c1287bt.A0b(interfaceC1285br);
        c1287bt.A0X();
        A01.put(abstractC1657hy.A17(), new WeakReference<>(c1287bt));
        return c1287bt;
    }

    public static C1287bt A02(String str) {
        WeakReference<C1287bt> weakReference = A01.get(str);
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public static void A03(AbstractC1657hy abstractC1657hy, C1287bt c1287bt) {
        A01.put(abstractC1657hy.A17(), new WeakReference<>(c1287bt));
    }

    public static void A04(String str) {
        A01.remove(str);
    }
}
