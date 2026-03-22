package j$.time.format;

import j$.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
public final class y {

    /* renamed from: a  reason: collision with root package name */
    public static final y f11765a = new Object();

    public final int hashCode() {
        return 182;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.time.format.y, java.lang.Object] */
    static {
        new ConcurrentHashMap(16, 0.75f, 2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof y) {
            ((y) obj).getClass();
            return true;
        }
        return false;
    }

    public final String toString() {
        return "DecimalStyle[0+-.]";
    }
}
