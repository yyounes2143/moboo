package j$.time.format;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class A {
    public static final A ALWAYS;
    public static final A EXCEEDS_PAD;
    public static final A NEVER;
    public static final A NORMAL;
    public static final A NOT_NEGATIVE;

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ A[] f11746a;

    public static A valueOf(String str) {
        return (A) Enum.valueOf(A.class, str);
    }

    public static A[] values() {
        return (A[]) f11746a.clone();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.lang.Enum, j$.time.format.A] */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.Enum, j$.time.format.A] */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.lang.Enum, j$.time.format.A] */
    /* JADX WARN: Type inference failed for: r8v1, types: [java.lang.Enum, j$.time.format.A] */
    /* JADX WARN: Type inference failed for: r9v1, types: [java.lang.Enum, j$.time.format.A] */
    static {
        ?? r5 = new Enum("NORMAL", 0);
        NORMAL = r5;
        ?? r6 = new Enum("ALWAYS", 1);
        ALWAYS = r6;
        ?? r7 = new Enum("NEVER", 2);
        NEVER = r7;
        ?? r8 = new Enum("NOT_NEGATIVE", 3);
        NOT_NEGATIVE = r8;
        ?? r9 = new Enum("EXCEEDS_PAD", 4);
        EXCEEDS_PAD = r9;
        f11746a = new A[]{r5, r6, r7, r8, r9};
    }
}
