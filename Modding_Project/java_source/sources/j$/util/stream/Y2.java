package j$.util.stream;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class Y2 {
    public static final Y2 DOUBLE_VALUE;
    public static final Y2 INT_VALUE;
    public static final Y2 LONG_VALUE;
    public static final Y2 REFERENCE;

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ Y2[] f11893a;

    public static Y2 valueOf(String str) {
        return (Y2) Enum.valueOf(Y2.class, str);
    }

    public static Y2[] values() {
        return (Y2[]) f11893a.clone();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [j$.util.stream.Y2, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r5v1, types: [j$.util.stream.Y2, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r6v1, types: [j$.util.stream.Y2, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r7v1, types: [j$.util.stream.Y2, java.lang.Enum] */
    static {
        ?? r4 = new Enum("REFERENCE", 0);
        REFERENCE = r4;
        ?? r5 = new Enum("INT_VALUE", 1);
        INT_VALUE = r5;
        ?? r6 = new Enum("LONG_VALUE", 2);
        LONG_VALUE = r6;
        ?? r7 = new Enum("DOUBLE_VALUE", 3);
        DOUBLE_VALUE = r7;
        f11893a = new Y2[]{r4, r5, r6, r7};
    }
}
