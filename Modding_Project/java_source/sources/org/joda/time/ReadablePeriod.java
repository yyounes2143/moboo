package org.joda.time;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public interface ReadablePeriod {
    int get(DurationFieldType durationFieldType);

    DurationFieldType getFieldType(int i);

    PeriodType getPeriodType();

    int getValue(int i);

    int size();
}
