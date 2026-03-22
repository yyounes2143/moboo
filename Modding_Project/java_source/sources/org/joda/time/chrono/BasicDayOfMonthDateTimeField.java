package org.joda.time.chrono;

import org.joda.time.DateTimeFieldType;
import org.joda.time.DurationField;
import org.joda.time.ReadablePartial;
import org.joda.time.field.PreciseDurationDateTimeField;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
final class BasicDayOfMonthDateTimeField extends PreciseDurationDateTimeField {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final BasicChronology f13731Wwwwwwwwwwwwwwwwwwwwww;

    public BasicDayOfMonthDateTimeField(BasicChronology basicChronology, DurationField durationField) {
        super(DateTimeFieldType.dayOfMonth(), durationField);
        this.f13731Wwwwwwwwwwwwwwwwwwwwww = basicChronology;
    }

    @Override // org.joda.time.field.PreciseDurationDateTimeField
    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j, int i) {
        return this.f13731Wwwwwwwwwwwwwwwwwwwwww.getDaysInMonthMaxForSet(j, i);
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int get(long j) {
        return this.f13731Wwwwwwwwwwwwwwwwwwwwww.getDayOfMonth(j);
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int getMaximumValue() {
        return this.f13731Wwwwwwwwwwwwwwwwwwwwww.getDaysInMonthMax();
    }

    @Override // org.joda.time.field.PreciseDurationDateTimeField, org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int getMinimumValue() {
        return 1;
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public DurationField getRangeDurationField() {
        return this.f13731Wwwwwwwwwwwwwwwwwwwwww.months();
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public boolean isLeap(long j) {
        return this.f13731Wwwwwwwwwwwwwwwwwwwwww.isLeapDay(j);
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int getMaximumValue(long j) {
        return this.f13731Wwwwwwwwwwwwwwwwwwwwww.getDaysInMonthMax(j);
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int getMaximumValue(ReadablePartial readablePartial) {
        if (readablePartial.isSupported(DateTimeFieldType.monthOfYear())) {
            int i = readablePartial.get(DateTimeFieldType.monthOfYear());
            if (readablePartial.isSupported(DateTimeFieldType.year())) {
                return this.f13731Wwwwwwwwwwwwwwwwwwwwww.getDaysInYearMonth(readablePartial.get(DateTimeFieldType.year()), i);
            }
            return this.f13731Wwwwwwwwwwwwwwwwwwwwww.getDaysInMonthMax(i);
        }
        return getMaximumValue();
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int getMaximumValue(ReadablePartial readablePartial, int[] iArr) {
        int size = readablePartial.size();
        for (int i = 0; i < size; i++) {
            if (readablePartial.getFieldType(i) == DateTimeFieldType.monthOfYear()) {
                int i2 = iArr[i];
                for (int i3 = 0; i3 < size; i3++) {
                    if (readablePartial.getFieldType(i3) == DateTimeFieldType.year()) {
                        return this.f13731Wwwwwwwwwwwwwwwwwwwwww.getDaysInYearMonth(iArr[i3], i2);
                    }
                }
                return this.f13731Wwwwwwwwwwwwwwwwwwwwww.getDaysInMonthMax(i2);
            }
        }
        return getMaximumValue();
    }
}
