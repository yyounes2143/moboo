package org.joda.time.chrono;

import org.joda.time.DateTimeFieldType;
import org.joda.time.DateTimeUtils;
import org.joda.time.DurationField;
import org.joda.time.ReadablePartial;
import org.joda.time.field.FieldUtils;
import org.joda.time.field.ImpreciseDateTimeField;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class BasicMonthOfYearDateTimeField extends ImpreciseDateTimeField {

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f13733Wwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f13734Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final BasicChronology f13735Wwwwwwwwwwwwwwwwwwwwww;

    public BasicMonthOfYearDateTimeField(BasicChronology basicChronology, int i) {
        super(DateTimeFieldType.monthOfYear(), basicChronology.getAverageMillisPerMonth());
        this.f13735Wwwwwwwwwwwwwwwwwwwwww = basicChronology;
        this.f13734Wwwwwwwwwwwwwwwwwwwww = basicChronology.getMaxMonth();
        this.f13733Wwwwwwwwwwwwwwwwwwww = i;
    }

    @Override // org.joda.time.field.ImpreciseDateTimeField, org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long add(long j, int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        if (i == 0) {
            return j;
        }
        long millisOfDay = this.f13735Wwwwwwwwwwwwwwwwwwwwww.getMillisOfDay(j);
        int year = this.f13735Wwwwwwwwwwwwwwwwwwwwww.getYear(j);
        int monthOfYear = this.f13735Wwwwwwwwwwwwwwwwwwwwww.getMonthOfYear(j, year);
        int i7 = monthOfYear - 1;
        int i8 = i7 + i;
        if (monthOfYear <= 0 || i8 >= 0) {
            i2 = year;
        } else {
            if (Math.signum(this.f13734Wwwwwwwwwwwwwwwwwwwww + i) == Math.signum(i)) {
                i5 = year - 1;
                i6 = i + this.f13734Wwwwwwwwwwwwwwwwwwwww;
            } else {
                i5 = year + 1;
                i6 = i - this.f13734Wwwwwwwwwwwwwwwwwwwww;
            }
            int i9 = i5;
            i8 = i6 + i7;
            i2 = i9;
        }
        if (i8 >= 0) {
            int i10 = this.f13734Wwwwwwwwwwwwwwwwwwwww;
            i3 = i2 + (i8 / i10);
            i4 = (i8 % i10) + 1;
        } else {
            i3 = i2 + (i8 / this.f13734Wwwwwwwwwwwwwwwwwwwww);
            int i11 = i3 - 1;
            int abs = Math.abs(i8);
            int i12 = this.f13734Wwwwwwwwwwwwwwwwwwwww;
            int i13 = abs % i12;
            if (i13 == 0) {
                i13 = i12;
            }
            i4 = (i12 - i13) + 1;
            if (i4 != 1) {
                i3 = i11;
            }
        }
        int dayOfMonth = this.f13735Wwwwwwwwwwwwwwwwwwwwww.getDayOfMonth(j, year, monthOfYear);
        int daysInYearMonth = this.f13735Wwwwwwwwwwwwwwwwwwwwww.getDaysInYearMonth(i3, i4);
        if (dayOfMonth > daysInYearMonth) {
            dayOfMonth = daysInYearMonth;
        }
        return this.f13735Wwwwwwwwwwwwwwwwwwwwww.getYearMonthDayMillis(i3, i4, dayOfMonth) + millisOfDay;
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long addWrapField(long j, int i) {
        return set(j, FieldUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(get(j), i, 1, this.f13734Wwwwwwwwwwwwwwwwwwwww));
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int get(long j) {
        return this.f13735Wwwwwwwwwwwwwwwwwwwwww.getMonthOfYear(j);
    }

    @Override // org.joda.time.field.ImpreciseDateTimeField, org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long getDifferenceAsLong(long j, long j2) {
        if (j < j2) {
            return -getDifference(j2, j);
        }
        int year = this.f13735Wwwwwwwwwwwwwwwwwwwwww.getYear(j);
        int monthOfYear = this.f13735Wwwwwwwwwwwwwwwwwwwwww.getMonthOfYear(j, year);
        int year2 = this.f13735Wwwwwwwwwwwwwwwwwwwwww.getYear(j2);
        int monthOfYear2 = this.f13735Wwwwwwwwwwwwwwwwwwwwww.getMonthOfYear(j2, year2);
        long j3 = (((year - year2) * this.f13734Wwwwwwwwwwwwwwwwwwwww) + monthOfYear) - monthOfYear2;
        int dayOfMonth = this.f13735Wwwwwwwwwwwwwwwwwwwwww.getDayOfMonth(j, year, monthOfYear);
        if (dayOfMonth == this.f13735Wwwwwwwwwwwwwwwwwwwwww.getDaysInYearMonth(year, monthOfYear) && this.f13735Wwwwwwwwwwwwwwwwwwwwww.getDayOfMonth(j2, year2, monthOfYear2) > dayOfMonth) {
            j2 = this.f13735Wwwwwwwwwwwwwwwwwwwwww.dayOfMonth().set(j2, dayOfMonth);
        }
        if (j - this.f13735Wwwwwwwwwwwwwwwwwwwwww.getYearMonthMillis(year, monthOfYear) < j2 - this.f13735Wwwwwwwwwwwwwwwwwwwwww.getYearMonthMillis(year2, monthOfYear2)) {
            return j3 - 1;
        }
        return j3;
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int getLeapAmount(long j) {
        return isLeap(j) ? 1 : 0;
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public DurationField getLeapDurationField() {
        return this.f13735Wwwwwwwwwwwwwwwwwwwwww.days();
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int getMaximumValue() {
        return this.f13734Wwwwwwwwwwwwwwwwwwwww;
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int getMinimumValue() {
        return 1;
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public DurationField getRangeDurationField() {
        return this.f13735Wwwwwwwwwwwwwwwwwwwwww.years();
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public boolean isLeap(long j) {
        int year = this.f13735Wwwwwwwwwwwwwwwwwwwwww.getYear(j);
        if (!this.f13735Wwwwwwwwwwwwwwwwwwwwww.isLeapYear(year) || this.f13735Wwwwwwwwwwwwwwwwwwwwww.getMonthOfYear(j, year) != this.f13733Wwwwwwwwwwwwwwwwwwww) {
            return false;
        }
        return true;
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
        int year = this.f13735Wwwwwwwwwwwwwwwwwwwwww.getYear(j);
        return this.f13735Wwwwwwwwwwwwwwwwwwwwww.getYearMonthMillis(year, this.f13735Wwwwwwwwwwwwwwwwwwwwww.getMonthOfYear(j, year));
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long set(long j, int i) {
        FieldUtils.Wwwwwwwwwwwwwwwwwwwww(this, i, 1, this.f13734Wwwwwwwwwwwwwwwwwwwww);
        int year = this.f13735Wwwwwwwwwwwwwwwwwwwwww.getYear(j);
        int dayOfMonth = this.f13735Wwwwwwwwwwwwwwwwwwwwww.getDayOfMonth(j, year);
        int daysInYearMonth = this.f13735Wwwwwwwwwwwwwwwwwwwwww.getDaysInYearMonth(year, i);
        if (dayOfMonth > daysInYearMonth) {
            dayOfMonth = daysInYearMonth;
        }
        return this.f13735Wwwwwwwwwwwwwwwwwwwwww.getYearMonthDayMillis(year, i, dayOfMonth) + this.f13735Wwwwwwwwwwwwwwwwwwwwww.getMillisOfDay(j);
    }

    @Override // org.joda.time.field.ImpreciseDateTimeField, org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long add(long j, long j2) {
        long j3;
        long j4;
        long j5;
        int i = (int) j2;
        if (i == j2) {
            return add(j, i);
        }
        long millisOfDay = this.f13735Wwwwwwwwwwwwwwwwwwwwww.getMillisOfDay(j);
        int year = this.f13735Wwwwwwwwwwwwwwwwwwwwww.getYear(j);
        int monthOfYear = this.f13735Wwwwwwwwwwwwwwwwwwwwww.getMonthOfYear(j, year);
        long j6 = (monthOfYear - 1) + j2;
        if (j6 >= 0) {
            int i2 = this.f13734Wwwwwwwwwwwwwwwwwwwww;
            j3 = year + (j6 / i2);
            j5 = (j6 % i2) + 1;
            j4 = millisOfDay;
        } else {
            long j7 = year + (j6 / this.f13734Wwwwwwwwwwwwwwwwwwwww);
            j3 = j7 - 1;
            long abs = Math.abs(j6);
            int i3 = this.f13734Wwwwwwwwwwwwwwwwwwwww;
            j4 = millisOfDay;
            int i4 = (int) (abs % i3);
            if (i4 == 0) {
                i4 = i3;
            }
            j5 = (i3 - i4) + 1;
            if (j5 == 1) {
                j3 = j7;
            }
        }
        if (j3 >= this.f13735Wwwwwwwwwwwwwwwwwwwwww.getMinYear() && j3 <= this.f13735Wwwwwwwwwwwwwwwwwwwwww.getMaxYear()) {
            int i5 = (int) j3;
            int i6 = (int) j5;
            int dayOfMonth = this.f13735Wwwwwwwwwwwwwwwwwwwwww.getDayOfMonth(j, year, monthOfYear);
            int daysInYearMonth = this.f13735Wwwwwwwwwwwwwwwwwwwwww.getDaysInYearMonth(i5, i6);
            if (dayOfMonth > daysInYearMonth) {
                dayOfMonth = daysInYearMonth;
            }
            return this.f13735Wwwwwwwwwwwwwwwwwwwwww.getYearMonthDayMillis(i5, i6, dayOfMonth) + j4;
        }
        throw new IllegalArgumentException("Magnitude of add amount is too large: " + j2);
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int[] add(ReadablePartial readablePartial, int i, int[] iArr, int i2) {
        if (i2 == 0) {
            return iArr;
        }
        if (readablePartial.size() > 0 && readablePartial.getFieldType(0).equals(DateTimeFieldType.monthOfYear()) && i == 0) {
            return set(readablePartial, 0, iArr, ((((iArr[0] - 1) + (i2 % 12)) + 12) % 12) + 1);
        }
        if (DateTimeUtils.Wwwwwwwwwwwwwwwwwwwww(readablePartial)) {
            int size = readablePartial.size();
            long j = 0;
            for (int i3 = 0; i3 < size; i3++) {
                j = readablePartial.getFieldType(i3).getField(this.f13735Wwwwwwwwwwwwwwwwwwwwww).set(j, iArr[i3]);
            }
            return this.f13735Wwwwwwwwwwwwwwwwwwwwww.get(readablePartial, add(j, i2));
        }
        return super.add(readablePartial, i, iArr, i2);
    }
}
