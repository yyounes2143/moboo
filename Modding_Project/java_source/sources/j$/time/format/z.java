package j$.time.format;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class z {
    public static final z LENIENT;
    public static final z SMART;
    public static final z STRICT;

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ z[] f11766a;

    public static z valueOf(String str) {
        return (z) Enum.valueOf(z.class, str);
    }

    public static z[] values() {
        return (z[]) f11766a.clone();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.Enum, j$.time.format.z] */
    /* JADX WARN: Type inference failed for: r4v1, types: [java.lang.Enum, j$.time.format.z] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Enum, j$.time.format.z] */
    static {
        ?? r3 = new Enum("STRICT", 0);
        STRICT = r3;
        ?? r4 = new Enum("SMART", 1);
        SMART = r4;
        ?? r5 = new Enum("LENIENT", 2);
        LENIENT = r5;
        f11766a = new z[]{r3, r4, r5};
    }
}
