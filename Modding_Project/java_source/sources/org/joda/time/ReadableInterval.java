package org.joda.time;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public interface ReadableInterval {
    Chronology getChronology();

    DateTime getEnd();

    long getEndMillis();

    DateTime getStart();

    long getStartMillis();

    long toDurationMillis();

    Period toPeriod(PeriodType periodType);
}
