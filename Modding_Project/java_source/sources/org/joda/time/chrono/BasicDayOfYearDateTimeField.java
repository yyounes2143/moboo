package org.joda.time.chrono;

import org.joda.time.DateTimeFieldType;
import org.joda.time.DurationField;
import org.joda.time.ReadablePartial;
import org.joda.time.field.PreciseDurationDateTimeField;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
final class BasicDayOfYearDateTimeField extends PreciseDurationDateTimeField {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final BasicChronology f13732Wwwwwwwwwwwwwwwwwwwwww;

    public BasicDayOfYearDateTimeField(BasicChronology basicChronology, DurationField durationField) {
        super(DateTimeFieldType.dayOfYear(), durationField);
        this.f13732Wwwwwwwwwwwwwwwwwwwwww = basicChronology;
    }

    @Override // org.joda.time.field.PreciseDurationDateTimeField
    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j, int i) {
        int daysInYearMax = this.f13732Wwwwwwwwwwwwwwwwwwwwww.getDaysInYearMax() - 1;
        if (i <= daysInYearMax && i >= 1) {
            return daysInYearMax;
        }
        return getMaximumValue(j);
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int get(long j) {
        return this.f13732Wwwwwwwwwwwwwwwwwwwwww.getDayOfYear(j);
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int getMaximumValue() {
        return this.f13732Wwwwwwwwwwwwwwwwwwwwww.getDaysInYearMax();
    }

    @Override // org.joda.time.field.PreciseDurationDateTimeField, org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int getMinimumValue() {
        return 1;
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public DurationField getRangeDurationField() {
        return this.f13732Wwwwwwwwwwwwwwwwwwwwww.years();
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public boolean isLeap(long j) {
        return this.f13732Wwwwwwwwwwwwwwwwwwwwww.isLeapDay(j);
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int getMaximumValue(long j) {
        return this.f13732Wwwwwwwwwwwwwwwwwwwwww.getDaysInYear(this.f13732Wwwwwwwwwwwwwwwwwwwwww.getYear(j));
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int getMaximumValue(ReadablePartial readablePartial) {
        if (readablePartial.isSupported(DateTimeFieldType.year())) {
            return this.f13732Wwwwwwwwwwwwwwwwwwwwww.getDaysInYear(readablePartial.get(DateTimeFieldType.year()));
        }
        return this.f13732Wwwwwwwwwwwwwwwwwwwwww.getDaysInYearMax();
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int getMaximumValue(ReadablePartial readablePartial, int[] iArr) {
        int size = readablePartial.size();
        for (int i = 0; i < size; i++) {
            if (readablePartial.getFieldType(i) == DateTimeFieldType.year()) {
                return this.f13732Wwwwwwwwwwwwwwwwwwwwww.getDaysInYear(iArr[i]);
            }
        }
        return this.f13732Wwwwwwwwwwwwwwwwwwwwww.getDaysInYearMax();
    }
}
