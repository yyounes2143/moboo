package j$.time.temporal;

import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
/* loaded from: classes2.dex */
public final class v implements Serializable {
    public static final ConcurrentHashMap g = new ConcurrentHashMap(4, 0.75f, 2);
    public static final h h;
    private static final long serialVersionUID = -1177360819670808121L;

    /* renamed from: a  reason: collision with root package name */
    public final j$.time.d f11793a;
    public final int b;
    public final transient u c;
    public final transient u d;
    public final transient u e;
    public final transient u f;

    static {
        new v(j$.time.d.MONDAY, 4);
        a(j$.time.d.SUNDAY, 1);
        h = i.d;
    }

    public static v a(j$.time.d dVar, int i) {
        String str = dVar.toString() + i;
        ConcurrentHashMap concurrentHashMap = g;
        v vVar = (v) concurrentHashMap.get(str);
        if (vVar == null) {
            concurrentHashMap.putIfAbsent(str, new v(dVar, i));
            return (v) concurrentHashMap.get(str);
        }
        return vVar;
    }

    public v(j$.time.d dVar, int i) {
        ChronoUnit chronoUnit = ChronoUnit.DAYS;
        ChronoUnit chronoUnit2 = ChronoUnit.WEEKS;
        this.c = new u("DayOfWeek", this, chronoUnit, chronoUnit2, u.f);
        this.d = new u("WeekOfMonth", this, chronoUnit2, ChronoUnit.MONTHS, u.g);
        h hVar = i.d;
        this.e = new u("WeekOfWeekBasedYear", this, chronoUnit2, hVar, u.i);
        this.f = new u("WeekBasedYear", this, hVar, ChronoUnit.FOREVER, a.YEAR.b);
        Objects.requireNonNull(dVar, "firstDayOfWeek");
        if (i < 1 || i > 7) {
            throw new IllegalArgumentException("Minimal number of days is invalid");
        }
        this.f11793a = dVar;
        this.b = i;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        objectInputStream.defaultReadObject();
        if (this.f11793a == null) {
            throw new InvalidObjectException("firstDayOfWeek is null");
        }
        int i = this.b;
        if (i < 1 || i > 7) {
            throw new InvalidObjectException("Minimal number of days is invalid");
        }
    }

    private Object readResolve() {
        try {
            return a(this.f11793a, this.b);
        } catch (IllegalArgumentException e) {
            String message = e.getMessage();
            throw new InvalidObjectException("Invalid serialized WeekFields: " + message);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof v) && hashCode() == obj.hashCode();
    }

    public final int hashCode() {
        return (this.f11793a.ordinal() * 7) + this.b;
    }

    public final String toString() {
        return "WeekFields[" + this.f11793a + "," + this.b + "]";
    }
}
