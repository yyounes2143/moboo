package org.joda.time;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public interface ReadableInstant extends Comparable<ReadableInstant> {
    int get(DateTimeFieldType dateTimeFieldType);

    Chronology getChronology();

    long getMillis();

    boolean isBefore(ReadableInstant readableInstant);

    Instant toInstant();
}
