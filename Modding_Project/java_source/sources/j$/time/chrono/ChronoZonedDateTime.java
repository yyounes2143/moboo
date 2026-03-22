package j$.time.chrono;

import j$.time.Instant;
import j$.time.LocalTime;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.chrono.InterfaceC2153b;
/* loaded from: classes2.dex */
public interface ChronoZonedDateTime<D extends InterfaceC2153b> extends j$.time.temporal.l, Comparable<ChronoZonedDateTime<?>> {
    long E();

    l a();

    InterfaceC2153b b();

    ZoneOffset f();

    ChronoZonedDateTime g(ZoneId zoneId);

    ZoneId p();

    Instant toInstant();

    LocalTime toLocalTime();

    InterfaceC2156e x();
}
