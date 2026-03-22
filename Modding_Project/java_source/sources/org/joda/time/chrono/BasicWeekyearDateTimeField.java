package org.joda.time.chrono;

import org.joda.time.DateTimeFieldType;
import org.joda.time.DurationField;
import org.joda.time.field.FieldUtils;
import org.joda.time.field.ImpreciseDateTimeField;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
final class BasicWeekyearDateTimeField extends ImpreciseDateTimeField {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final BasicChronology f13738Wwwwwwwwwwwwwwwwwwwwww;

    public BasicWeekyearDateTimeField(BasicChronology basicChronology) {
        super(DateTimeFieldType.weekyear(), basicChronology.getAverageMillisPerYear());
        this.f13738Wwwwwwwwwwwwwwwwwwwwww = basicChronology;
    }

    @Override // org.joda.time.field.ImpreciseDateTimeField, org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long add(long j, int i) {
        return i == 0 ? j : set(j, get(j) + i);
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long addWrapField(long j, int i) {
        return add(j, i);
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int get(long j) {
        return this.f13738Wwwwwwwwwwwwwwwwwwwwww.getWeekyear(j);
    }

    @Override // org.joda.time.field.ImpreciseDateTimeField, org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long getDifferenceAsLong(long j, long j2) {
        if (j < j2) {
            return -getDifference(j2, j);
        }
        int i = get(j);
        int i2 = get(j2);
        long remainder = remainder(j);
        long remainder2 = remainder(j2);
        if (remainder2 >= 31449600000L && this.f13738Wwwwwwwwwwwwwwwwwwwwww.getWeeksInYear(i) <= 52) {
            remainder2 -= 604800000;
        }
        int i3 = i - i2;
        if (remainder < remainder2) {
            i3--;
        }
        return i3;
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int getLeapAmount(long j) {
        BasicChronology basicChronology = this.f13738Wwwwwwwwwwwwwwwwwwwwww;
        return basicChronology.getWeeksInYear(basicChronology.getWeekyear(j)) - 52;
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public DurationField getLeapDurationField() {
        return this.f13738Wwwwwwwwwwwwwwwwwwwwww.weeks();
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int getMaximumValue() {
        return this.f13738Wwwwwwwwwwwwwwwwwwwwww.getMaxYear();
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int getMinimumValue() {
        return this.f13738Wwwwwwwwwwwwwwwwwwwwww.getMinYear();
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public DurationField getRangeDurationField() {
        return null;
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public boolean isLeap(long j) {
        BasicChronology basicChronology = this.f13738Wwwwwwwwwwwwwwwwwwwwww;
        if (basicChronology.getWeeksInYear(basicChronology.getWeekyear(j)) > 52) {
            return true;
        }
        return false;
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
    public long roundFloor(long j) {
        long roundFloor = this.f13738Wwwwwwwwwwwwwwwwwwwwww.weekOfWeekyear().roundFloor(j);
        int weekOfWeekyear = this.f13738Wwwwwwwwwwwwwwwwwwwwww.getWeekOfWeekyear(roundFloor);
        if (weekOfWeekyear > 1) {
            return roundFloor - ((weekOfWeekyear - 1) * 604800000);
        }
        return roundFloor;
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long set(long j, int i) {
        FieldUtils.Wwwwwwwwwwwwwwwwwwwww(this, Math.abs(i), this.f13738Wwwwwwwwwwwwwwwwwwwwww.getMinYear(), this.f13738Wwwwwwwwwwwwwwwwwwwwww.getMaxYear());
        int i2 = get(j);
        if (i2 == i) {
            return j;
        }
        int dayOfWeek = this.f13738Wwwwwwwwwwwwwwwwwwwwww.getDayOfWeek(j);
        int weeksInYear = this.f13738Wwwwwwwwwwwwwwwwwwwwww.getWeeksInYear(i2);
        int weeksInYear2 = this.f13738Wwwwwwwwwwwwwwwwwwwwww.getWeeksInYear(i);
        if (weeksInYear2 < weeksInYear) {
            weeksInYear = weeksInYear2;
        }
        int weekOfWeekyear = this.f13738Wwwwwwwwwwwwwwwwwwwwww.getWeekOfWeekyear(j);
        if (weekOfWeekyear <= weeksInYear) {
            weeksInYear = weekOfWeekyear;
        }
        long year = this.f13738Wwwwwwwwwwwwwwwwwwwwww.setYear(j, i);
        int i3 = get(year);
        if (i3 < i) {
            year += 604800000;
        } else if (i3 > i) {
            year -= 604800000;
        }
        return this.f13738Wwwwwwwwwwwwwwwwwwwwww.dayOfWeek().set(year + ((weeksInYear - this.f13738Wwwwwwwwwwwwwwwwwwwwww.getWeekOfWeekyear(year)) * 604800000), dayOfWeek);
    }

    @Override // org.joda.time.field.ImpreciseDateTimeField, org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long add(long j, long j2) {
        return add(j, FieldUtils.Wwwwwwwwwwwwwwwwwwwwww(j2));
    }
}
