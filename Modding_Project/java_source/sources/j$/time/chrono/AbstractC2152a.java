package j$.time.chrono;

import j$.time.LocalDateTime;
import j$.time.LocalTime;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Locale;
/* renamed from: j$.time.chrono.a  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC2152a implements l {

    /* renamed from: a  reason: collision with root package name */
    public static final ConcurrentHashMap f11725a = new ConcurrentHashMap();
    public static final ConcurrentHashMap b = new ConcurrentHashMap();

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return getId().compareTo(((l) obj).getId());
    }

    static {
        new Locale("ja", "JP", "JP");
    }

    public static l h(AbstractC2152a abstractC2152a, String str) {
        String q;
        l lVar = (l) f11725a.putIfAbsent(str, abstractC2152a);
        if (lVar == null && (q = abstractC2152a.q()) != null) {
            b.putIfAbsent(q, abstractC2152a);
        }
        return lVar;
    }

    @Override // j$.time.chrono.l
    public InterfaceC2156e m(LocalDateTime localDateTime) {
        try {
            return j(localDateTime).t(LocalTime.H(localDateTime));
        } catch (j$.time.b e) {
            throw new RuntimeException("Unable to obtain ChronoLocalDateTime from TemporalAccessor: " + LocalDateTime.class, e);
        }
    }

    @Override // j$.time.chrono.l
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof AbstractC2152a) && getId().compareTo(((AbstractC2152a) obj).getId()) == 0;
    }

    @Override // j$.time.chrono.l
    public final int hashCode() {
        return getClass().hashCode() ^ getId().hashCode();
    }

    @Override // j$.time.chrono.l
    public final String toString() {
        return getId();
    }
}
