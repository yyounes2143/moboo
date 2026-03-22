package org.joda.time.chrono;

import org.joda.time.DateTimeFieldType;
import org.joda.time.DurationField;
import org.joda.time.field.FieldUtils;
import org.joda.time.field.ImpreciseDateTimeField;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
class BasicYearDateTimeField extends ImpreciseDateTimeField {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final BasicChronology f13739Wwwwwwwwwwwwwwwwwwwwww;

    public BasicYearDateTimeField(BasicChronology basicChronology) {
        super(DateTimeFieldType.year(), basicChronology.getAverageMillisPerYear());
        this.f13739Wwwwwwwwwwwwwwwwwwwwww = basicChronology;
    }

    @Override // org.joda.time.field.ImpreciseDateTimeField, org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long add(long j, int i) {
        return i == 0 ? j : set(j, FieldUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(get(j), i));
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long addWrapField(long j, int i) {
        if (i == 0) {
            return j;
        }
        return set(j, FieldUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f13739Wwwwwwwwwwwwwwwwwwwwww.getYear(j), i, this.f13739Wwwwwwwwwwwwwwwwwwwwww.getMinYear(), this.f13739Wwwwwwwwwwwwwwwwwwwwww.getMaxYear()));
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int get(long j) {
        return this.f13739Wwwwwwwwwwwwwwwwwwwwww.getYear(j);
    }

    @Override // org.joda.time.field.ImpreciseDateTimeField, org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long getDifferenceAsLong(long j, long j2) {
        if (j < j2) {
            return -this.f13739Wwwwwwwwwwwwwwwwwwwwww.getYearDifference(j2, j);
        }
        return this.f13739Wwwwwwwwwwwwwwwwwwwwww.getYearDifference(j, j2);
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int getLeapAmount(long j) {
        if (this.f13739Wwwwwwwwwwwwwwwwwwwwww.isLeapYear(get(j))) {
            return 1;
        }
        return 0;
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public DurationField getLeapDurationField() {
        return this.f13739Wwwwwwwwwwwwwwwwwwwwww.days();
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int getMaximumValue() {
        return this.f13739Wwwwwwwwwwwwwwwwwwwwww.getMaxYear();
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int getMinimumValue() {
        return this.f13739Wwwwwwwwwwwwwwwwwwwwww.getMinYear();
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public DurationField getRangeDurationField() {
        return null;
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public boolean isLeap(long j) {
        return this.f13739Wwwwwwwwwwwwwwwwwwwwww.isLeapYear(get(j));
    }

    @Override // org.joda.time.DateTimeField
    public boolean isLenient() {
        return false;
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long remainder(long j) {
        return j - roundFloor(j);
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long roundCeiling(long j) {
        int i = get(j);
        if (j != this.f13739Wwwwwwwwwwwwwwwwwwwwww.getYearMillis(i)) {
            return this.f13739Wwwwwwwwwwwwwwwwwwwwww.getYearMillis(i + 1);
        }
        return j;
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long roundFloor(long j) {
        return this.f13739Wwwwwwwwwwwwwwwwwwwwww.getYearMillis(get(j));
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long set(long j, int i) {
        FieldUtils.Wwwwwwwwwwwwwwwwwwwww(this, i, this.f13739Wwwwwwwwwwwwwwwwwwwwww.getMinYear(), this.f13739Wwwwwwwwwwwwwwwwwwwwww.getMaxYear());
        return this.f13739Wwwwwwwwwwwwwwwwwwwwww.setYear(j, i);
    }

    @Override // org.joda.time.DateTimeField
    public long setExtended(long j, int i) {
        FieldUtils.Wwwwwwwwwwwwwwwwwwwww(this, i, this.f13739Wwwwwwwwwwwwwwwwwwwwww.getMinYear() - 1, this.f13739Wwwwwwwwwwwwwwwwwwwwww.getMaxYear() + 1);
        return this.f13739Wwwwwwwwwwwwwwwwwwwwww.setYear(j, i);
    }

    @Override // org.joda.time.field.ImpreciseDateTimeField, org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long add(long j, long j2) {
        return add(j, FieldUtils.Wwwwwwwwwwwwwwwwwwwwww(j2));
    }
}
