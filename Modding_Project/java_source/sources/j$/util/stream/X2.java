package j$.util.stream;

import j$.util.Map;
import j$.util.Spliterator;
import java.util.EnumMap;
/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum DISTINCT uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:391)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:320)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes2.dex */
public final class X2 {
    public static final X2 DISTINCT;
    public static final X2 ORDERED;
    public static final X2 SHORT_CIRCUIT;
    public static final X2 SIZED;
    public static final X2 SORTED;
    public static final int f;
    public static final int g;
    public static final int h;
    public static final int i;
    public static final int j;
    public static final int k;
    public static final int l;
    public static final int m;
    public static final int n;
    public static final int o;
    public static final int p;
    public static final int q;
    public static final int r;
    public static final int s;
    public static final int t;
    public static final int u;
    public static final /* synthetic */ X2[] v;

    /* renamed from: a  reason: collision with root package name */
    public final EnumMap f11892a;
    public final int b;
    public final int c;
    public final int d;
    public final int e;

    public static X2 valueOf(String str) {
        return (X2) Enum.valueOf(X2.class, str);
    }

    public static X2[] values() {
        return (X2[]) v.clone();
    }

    static {
        W2 w2 = W2.SPLITERATOR;
        j$.util.function.g n2 = n(w2);
        W2 w22 = W2.STREAM;
        n2.b(w22);
        W2 w23 = W2.OP;
        ((EnumMap) n2.b).put((EnumMap) w23, (W2) 3);
        X2 x2 = new X2("DISTINCT", 0, 0, n2);
        DISTINCT = x2;
        j$.util.function.g n3 = n(w2);
        n3.b(w22);
        ((EnumMap) n3.b).put((EnumMap) w23, (W2) 3);
        X2 x22 = new X2("SORTED", 1, 1, n3);
        SORTED = x22;
        j$.util.function.g n4 = n(w2);
        n4.b(w22);
        EnumMap enumMap = (EnumMap) n4.b;
        enumMap.put((EnumMap) w23, (W2) 3);
        W2 w24 = W2.TERMINAL_OP;
        enumMap.put((EnumMap) w24, (W2) 2);
        W2 w25 = W2.UPSTREAM_TERMINAL_OP;
        enumMap.put((EnumMap) w25, (W2) 2);
        X2 x23 = new X2("ORDERED", 2, 2, n4);
        ORDERED = x23;
        j$.util.function.g n5 = n(w2);
        n5.b(w22);
        ((EnumMap) n5.b).put((EnumMap) w23, (W2) 2);
        X2 x24 = new X2("SIZED", 3, 3, n5);
        SIZED = x24;
        j$.util.function.g n6 = n(w23);
        n6.b(w24);
        int i2 = 0;
        X2 x25 = new X2("SHORT_CIRCUIT", 4, 12, n6);
        SHORT_CIRCUIT = x25;
        v = new X2[]{x2, x22, x23, x24, x25};
        f = i(w2);
        g = i(w22);
        h = i(w23);
        i(w24);
        i(w25);
        for (X2 x26 : values()) {
            i2 |= x26.e;
        }
        i = i2;
        int i3 = g;
        j = i3;
        int i4 = i3 << 1;
        k = i4;
        l = i3 | i4;
        X2 x27 = DISTINCT;
        m = x27.c;
        n = x27.d;
        X2 x28 = SORTED;
        o = x28.c;
        p = x28.d;
        X2 x29 = ORDERED;
        q = x29.c;
        r = x29.d;
        X2 x210 = SIZED;
        s = x210.c;
        t = x210.d;
        u = SHORT_CIRCUIT.c;
    }

    public static j$.util.function.g n(W2 w2) {
        j$.util.function.g gVar = new j$.util.function.g(new EnumMap(W2.class), 9);
        gVar.b(w2);
        return gVar;
    }

    public X2(String str, int i2, int i3, j$.util.function.g gVar) {
        W2[] values = W2.values();
        int length = values.length;
        int i4 = 0;
        while (true) {
            EnumMap enumMap = (EnumMap) gVar.b;
            if (i4 < length) {
                Map.EL.a(enumMap, values[i4], 0);
                i4++;
            } else {
                this.f11892a = enumMap;
                int i5 = i3 * 2;
                this.b = i5;
                this.c = 1 << i5;
                this.d = 2 << i5;
                this.e = 3 << i5;
                return;
            }
        }
    }

    public final boolean l(int i2) {
        return (i2 & this.e) == this.c;
    }

    public static int i(W2 w2) {
        X2[] values;
        int i2 = 0;
        for (X2 x2 : values()) {
            i2 |= ((Integer) x2.f11892a.get(w2)).intValue() << x2.b;
        }
        return i2;
    }

    public static int h(int i2, int i3) {
        int i4;
        if (i2 == 0) {
            i4 = i;
        } else {
            i4 = ~(((j & i2) << 1) | i2 | ((k & i2) >> 1));
        }
        return i2 | (i3 & i4);
    }

    public static int k(Spliterator spliterator) {
        int characteristics = spliterator.characteristics();
        int i2 = characteristics & 4;
        int i3 = f;
        return (i2 == 0 || spliterator.getComparator() == null) ? characteristics & i3 : characteristics & i3 & (-5);
    }
}
