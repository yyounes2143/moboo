package org.joda.time;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public interface ReadWritableInterval extends ReadableInterval {
    void setChronology(Chronology chronology);

    void setInterval(long j, long j2);

    void setInterval(ReadableInterval readableInterval);
}
