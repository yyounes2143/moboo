package org.joda.time.chrono;

import org.joda.time.DateTimeFieldType;
import org.joda.time.DurationField;
import org.joda.time.ReadablePartial;
import org.joda.time.field.PreciseDurationDateTimeField;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
final class BasicWeekOfWeekyearDateTimeField extends PreciseDurationDateTimeField {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final BasicChronology f13737Wwwwwwwwwwwwwwwwwwwwww;

    public BasicWeekOfWeekyearDateTimeField(BasicChronology basicChronology, DurationField durationField) {
        super(DateTimeFieldType.weekOfWeekyear(), durationField);
        this.f13737Wwwwwwwwwwwwwwwwwwwwww = basicChronology;
    }

    @Override // org.joda.time.field.PreciseDurationDateTimeField
    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j, int i) {
        if (i <= 52) {
            return 52;
        }
        return getMaximumValue(j);
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int get(long j) {
        return this.f13737Wwwwwwwwwwwwwwwwwwwwww.getWeekOfWeekyear(j);
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int getMaximumValue() {
        return 53;
    }

    @Override // org.joda.time.field.PreciseDurationDateTimeField, org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int getMinimumValue() {
        return 1;
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public DurationField getRangeDurationField() {
        return this.f13737Wwwwwwwwwwwwwwwwwwwwww.weekyears();
    }

    @Override // org.joda.time.field.PreciseDurationDateTimeField, org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long remainder(long j) {
        return super.remainder(j + 259200000);
    }

    @Override // org.joda.time.field.PreciseDurationDateTimeField, org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long roundCeiling(long j) {
        return super.roundCeiling(j + 259200000) - 259200000;
    }

    @Override // org.joda.time.field.PreciseDurationDateTimeField, org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long roundFloor(long j) {
        return super.roundFloor(j + 259200000) - 259200000;
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int getMaximumValue(long j) {
        return this.f13737Wwwwwwwwwwwwwwwwwwwwww.getWeeksInYear(this.f13737Wwwwwwwwwwwwwwwwwwwwww.getWeekyear(j));
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int getMaximumValue(ReadablePartial readablePartial) {
        if (readablePartial.isSupported(DateTimeFieldType.weekyear())) {
            return this.f13737Wwwwwwwwwwwwwwwwwwwwww.getWeeksInYear(readablePartial.get(DateTimeFieldType.weekyear()));
        }
        return 53;
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int getMaximumValue(ReadablePartial readablePartial, int[] iArr) {
        int size = readablePartial.size();
        for (int i = 0; i < size; i++) {
            if (readablePartial.getFieldType(i) == DateTimeFieldType.weekyear()) {
                return this.f13737Wwwwwwwwwwwwwwwwwwwwww.getWeeksInYear(iArr[i]);
            }
        }
        return 53;
    }
}
