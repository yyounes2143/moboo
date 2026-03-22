package j$.time;

import java.io.ObjectInputStream;
import java.io.Serializable;
/* loaded from: classes2.dex */
public final class a extends j$.com.android.tools.r8.a implements Serializable {
    public static final a b;
    private static final long serialVersionUID = 6740630888130243051L;

    /* renamed from: a  reason: collision with root package name */
    public final ZoneOffset f11716a;

    public a(ZoneOffset zoneOffset) {
        this.f11716a = zoneOffset;
    }

    static {
        System.currentTimeMillis();
        b = new a(ZoneOffset.UTC);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof a) {
            return this.f11716a.equals(((a) obj).f11716a);
        }
        return false;
    }

    public final String toString() {
        return "SystemClock[" + this.f11716a + "]";
    }

    private void readObject(ObjectInputStream objectInputStream) {
        objectInputStream.defaultReadObject();
    }

    public final int hashCode() {
        return this.f11716a.b + 1;
    }
}
