package j$.time.format;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class n implements f {
    public static final n INSENSITIVE;
    public static final n LENIENT;
    public static final n SENSITIVE;
    public static final n STRICT;

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ n[] f11757a;

    @Override // j$.time.format.f
    public final boolean h(u uVar, StringBuilder sb) {
        return true;
    }

    public static n valueOf(String str) {
        return (n) Enum.valueOf(n.class, str);
    }

    public static n[] values() {
        return (n[]) f11757a.clone();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.lang.Enum, j$.time.format.n] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Enum, j$.time.format.n] */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.Enum, j$.time.format.n] */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.lang.Enum, j$.time.format.n] */
    static {
        ?? r4 = new Enum("SENSITIVE", 0);
        SENSITIVE = r4;
        ?? r5 = new Enum("INSENSITIVE", 1);
        INSENSITIVE = r5;
        ?? r6 = new Enum("STRICT", 2);
        STRICT = r6;
        ?? r7 = new Enum("LENIENT", 3);
        LENIENT = r7;
        f11757a = new n[]{r4, r5, r6, r7};
    }

    @Override // java.lang.Enum
    public final String toString() {
        int ordinal = ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal == 3) {
                        return "ParseStrict(false)";
                    }
                    throw new IllegalStateException("Unreachable");
                }
                return "ParseStrict(true)";
            }
            return "ParseCaseSensitive(false)";
        }
        return "ParseCaseSensitive(true)";
    }
}
