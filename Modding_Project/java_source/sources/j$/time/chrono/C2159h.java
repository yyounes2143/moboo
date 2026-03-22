package j$.time.chrono;

import j$.time.temporal.ChronoUnit;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
/* renamed from: j$.time.chrono.h  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2159h implements Serializable {
    public static final /* synthetic */ int e = 0;
    private static final long serialVersionUID = 57387258289L;

    /* renamed from: a  reason: collision with root package name */
    public final l f11729a;
    public final int b;
    public final int c;
    public final int d;

    static {
        Object[] objArr = {ChronoUnit.YEARS, ChronoUnit.MONTHS, ChronoUnit.DAYS};
        ArrayList arrayList = new ArrayList(3);
        for (int i = 0; i < 3; i++) {
            arrayList.add(Objects.requireNonNull(objArr[i]));
        }
        Collections.unmodifiableList(arrayList);
    }

    public C2159h(l lVar, int i, int i2, int i3) {
        Objects.requireNonNull(lVar, "chrono");
        this.f11729a = lVar;
        this.b = i;
        this.c = i2;
        this.d = i3;
    }

    public final String toString() {
        l lVar = this.f11729a;
        int i = this.d;
        int i2 = this.c;
        int i3 = this.b;
        if (i3 == 0 && i2 == 0 && i == 0) {
            String lVar2 = lVar.toString();
            return lVar2 + " P0D";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(lVar.toString());
        sb.append(" P");
        if (i3 != 0) {
            sb.append(i3);
            sb.append('Y');
        }
        if (i2 != 0) {
            sb.append(i2);
            sb.append('M');
        }
        if (i != 0) {
            sb.append(i);
            sb.append('D');
        }
        return sb.toString();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2159h) {
            C2159h c2159h = (C2159h) obj;
            if (this.b == c2159h.b && this.c == c2159h.c && this.d == c2159h.d && this.f11729a.equals(c2159h.f11729a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f11729a.hashCode() ^ (Integer.rotateLeft(this.d, 16) + (Integer.rotateLeft(this.c, 8) + this.b));
    }

    public Object writeReplace() {
        return new E((byte) 9, this);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }
}
