package org.joda.time;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import org.joda.time.field.FieldUtils;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class PeriodType implements Serializable {

    /* renamed from: Wwwwwwww  reason: collision with root package name */
    public static PeriodType f13627Wwwwwwww = null;

    /* renamed from: Wwwwwwwww  reason: collision with root package name */
    public static PeriodType f13628Wwwwwwwww = null;

    /* renamed from: Wwwwwwwwww  reason: collision with root package name */
    public static PeriodType f13629Wwwwwwwwww = null;

    /* renamed from: Wwwwwwwwwww  reason: collision with root package name */
    public static PeriodType f13630Wwwwwwwwwww = null;

    /* renamed from: Wwwwwwwwwwww  reason: collision with root package name */
    public static PeriodType f13631Wwwwwwwwwwww = null;

    /* renamed from: Wwwwwwwwwwwww  reason: collision with root package name */
    public static PeriodType f13632Wwwwwwwwwwwww = null;

    /* renamed from: Wwwwwwwwwwwwww  reason: collision with root package name */
    public static PeriodType f13633Wwwwwwwwwwwwww = null;

    /* renamed from: Wwwwwwwwwwwwwww  reason: collision with root package name */
    public static PeriodType f13634Wwwwwwwwwwwwwww = null;

    /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
    public static PeriodType f13635Wwwwwwwwwwwwwwww = null;

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static PeriodType f13636Wwwwwwwwwwwwwwwww = null;

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static PeriodType f13637Wwwwwwwwwwwwwwwwww = null;

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static PeriodType f13638Wwwwwwwwwwwwwwwwwww = null;

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static PeriodType f13639Wwwwwwwwwwwwwwwwwwww = null;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static PeriodType f13640Wwwwwwwwwwwwwwwwwwwww = null;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static PeriodType f13641Wwwwwwwwwwwwwwwwwwwwww = null;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static PeriodType f13642Wwwwwwwwwwwwwwwwwwwwwww = null;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static PeriodType f13643Wwwwwwwwwwwwwwwwwwwwwwww = null;
    private static final long serialVersionUID = 2274324892792009998L;
    private final int[] iIndices;
    private final String iName;
    private final DurationFieldType[] iTypes;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Map<PeriodType, Object> f13644Wwwwwwwwwwwwwwwwwwwwwwwww = new HashMap(32);
    static int YEAR_INDEX = 0;
    static int MONTH_INDEX = 1;
    static int WEEK_INDEX = 2;
    static int DAY_INDEX = 3;
    static int HOUR_INDEX = 4;
    static int MINUTE_INDEX = 5;
    static int SECOND_INDEX = 6;
    static int MILLI_INDEX = 7;

    public PeriodType(String str, DurationFieldType[] durationFieldTypeArr, int[] iArr) {
        this.iName = str;
        this.iTypes = durationFieldTypeArr;
        this.iIndices = iArr;
    }

    public static PeriodType dayTime() {
        PeriodType periodType = f13636Wwwwwwwwwwwwwwwww;
        if (periodType == null) {
            PeriodType periodType2 = new PeriodType("DayTime", new DurationFieldType[]{DurationFieldType.days(), DurationFieldType.hours(), DurationFieldType.minutes(), DurationFieldType.seconds(), DurationFieldType.millis()}, new int[]{-1, -1, -1, 0, 1, 2, 3, 4});
            f13636Wwwwwwwwwwwwwwwww = periodType2;
            return periodType2;
        }
        return periodType;
    }

    public static PeriodType days() {
        PeriodType periodType = f13631Wwwwwwwwwwww;
        if (periodType == null) {
            PeriodType periodType2 = new PeriodType("Days", new DurationFieldType[]{DurationFieldType.days()}, new int[]{-1, -1, -1, 0, -1, -1, -1, -1});
            f13631Wwwwwwwwwwww = periodType2;
            return periodType2;
        }
        return periodType;
    }

    public static synchronized PeriodType forFields(DurationFieldType[] durationFieldTypeArr) {
        synchronized (PeriodType.class) {
            if (durationFieldTypeArr != null) {
                try {
                    if (durationFieldTypeArr.length != 0) {
                        for (DurationFieldType durationFieldType : durationFieldTypeArr) {
                            if (durationFieldType == null) {
                                throw new IllegalArgumentException("Types array must not contain null");
                            }
                        }
                        Map<PeriodType, Object> map = f13644Wwwwwwwwwwwwwwwwwwwwwwwww;
                        if (map.isEmpty()) {
                            map.put(standard(), standard());
                            map.put(yearMonthDayTime(), yearMonthDayTime());
                            map.put(yearMonthDay(), yearMonthDay());
                            map.put(yearWeekDayTime(), yearWeekDayTime());
                            map.put(yearWeekDay(), yearWeekDay());
                            map.put(yearDayTime(), yearDayTime());
                            map.put(yearDay(), yearDay());
                            map.put(dayTime(), dayTime());
                            map.put(time(), time());
                            map.put(years(), years());
                            map.put(months(), months());
                            map.put(weeks(), weeks());
                            map.put(days(), days());
                            map.put(hours(), hours());
                            map.put(minutes(), minutes());
                            map.put(seconds(), seconds());
                            map.put(millis(), millis());
                        }
                        PeriodType periodType = new PeriodType(null, durationFieldTypeArr, null);
                        Object obj = map.get(periodType);
                        if (obj instanceof PeriodType) {
                            return (PeriodType) obj;
                        } else if (obj == null) {
                            PeriodType standard = standard();
                            ArrayList arrayList = new ArrayList(Arrays.asList(durationFieldTypeArr));
                            if (!arrayList.remove(DurationFieldType.years())) {
                                standard = standard.withYearsRemoved();
                            }
                            if (!arrayList.remove(DurationFieldType.months())) {
                                standard = standard.withMonthsRemoved();
                            }
                            if (!arrayList.remove(DurationFieldType.weeks())) {
                                standard = standard.withWeeksRemoved();
                            }
                            if (!arrayList.remove(DurationFieldType.days())) {
                                standard = standard.withDaysRemoved();
                            }
                            if (!arrayList.remove(DurationFieldType.hours())) {
                                standard = standard.withHoursRemoved();
                            }
                            if (!arrayList.remove(DurationFieldType.minutes())) {
                                standard = standard.withMinutesRemoved();
                            }
                            if (!arrayList.remove(DurationFieldType.seconds())) {
                                standard = standard.withSecondsRemoved();
                            }
                            if (!arrayList.remove(DurationFieldType.millis())) {
                                standard = standard.withMillisRemoved();
                            }
                            if (arrayList.size() <= 0) {
                                PeriodType periodType2 = new PeriodType(null, standard.iTypes, null);
                                PeriodType periodType3 = (PeriodType) map.get(periodType2);
                                if (periodType3 != null) {
                                    map.put(periodType2, periodType3);
                                    return periodType3;
                                }
                                map.put(periodType2, standard);
                                return standard;
                            }
                            map.put(periodType, arrayList);
                            throw new IllegalArgumentException("PeriodType does not support fields: " + arrayList);
                        } else {
                            throw new IllegalArgumentException("PeriodType does not support fields: " + obj);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            throw new IllegalArgumentException("Types array must not be null or empty");
        }
    }

    public static PeriodType hours() {
        PeriodType periodType = f13630Wwwwwwwwwww;
        if (periodType == null) {
            PeriodType periodType2 = new PeriodType("Hours", new DurationFieldType[]{DurationFieldType.hours()}, new int[]{-1, -1, -1, -1, 0, -1, -1, -1});
            f13630Wwwwwwwwwww = periodType2;
            return periodType2;
        }
        return periodType;
    }

    public static PeriodType millis() {
        PeriodType periodType = f13627Wwwwwwww;
        if (periodType == null) {
            PeriodType periodType2 = new PeriodType("Millis", new DurationFieldType[]{DurationFieldType.millis()}, new int[]{-1, -1, -1, -1, -1, -1, -1, 0});
            f13627Wwwwwwww = periodType2;
            return periodType2;
        }
        return periodType;
    }

    public static PeriodType minutes() {
        PeriodType periodType = f13629Wwwwwwwwww;
        if (periodType == null) {
            PeriodType periodType2 = new PeriodType("Minutes", new DurationFieldType[]{DurationFieldType.minutes()}, new int[]{-1, -1, -1, -1, -1, 0, -1, -1});
            f13629Wwwwwwwwww = periodType2;
            return periodType2;
        }
        return periodType;
    }

    public static PeriodType months() {
        PeriodType periodType = f13633Wwwwwwwwwwwwww;
        if (periodType == null) {
            PeriodType periodType2 = new PeriodType("Months", new DurationFieldType[]{DurationFieldType.months()}, new int[]{-1, 0, -1, -1, -1, -1, -1, -1});
            f13633Wwwwwwwwwwwwww = periodType2;
            return periodType2;
        }
        return periodType;
    }

    public static PeriodType seconds() {
        PeriodType periodType = f13628Wwwwwwwww;
        if (periodType == null) {
            PeriodType periodType2 = new PeriodType("Seconds", new DurationFieldType[]{DurationFieldType.seconds()}, new int[]{-1, -1, -1, -1, -1, -1, 0, -1});
            f13628Wwwwwwwww = periodType2;
            return periodType2;
        }
        return periodType;
    }

    public static PeriodType standard() {
        PeriodType periodType = f13643Wwwwwwwwwwwwwwwwwwwwwwww;
        if (periodType == null) {
            PeriodType periodType2 = new PeriodType("Standard", new DurationFieldType[]{DurationFieldType.years(), DurationFieldType.months(), DurationFieldType.weeks(), DurationFieldType.days(), DurationFieldType.hours(), DurationFieldType.minutes(), DurationFieldType.seconds(), DurationFieldType.millis()}, new int[]{0, 1, 2, 3, 4, 5, 6, 7});
            f13643Wwwwwwwwwwwwwwwwwwwwwwww = periodType2;
            return periodType2;
        }
        return periodType;
    }

    public static PeriodType time() {
        PeriodType periodType = f13635Wwwwwwwwwwwwwwww;
        if (periodType == null) {
            PeriodType periodType2 = new PeriodType("Time", new DurationFieldType[]{DurationFieldType.hours(), DurationFieldType.minutes(), DurationFieldType.seconds(), DurationFieldType.millis()}, new int[]{-1, -1, -1, -1, 0, 1, 2, 3});
            f13635Wwwwwwwwwwwwwwww = periodType2;
            return periodType2;
        }
        return periodType;
    }

    public static PeriodType weeks() {
        PeriodType periodType = f13632Wwwwwwwwwwwww;
        if (periodType == null) {
            PeriodType periodType2 = new PeriodType("Weeks", new DurationFieldType[]{DurationFieldType.weeks()}, new int[]{-1, -1, 0, -1, -1, -1, -1, -1});
            f13632Wwwwwwwwwwwww = periodType2;
            return periodType2;
        }
        return periodType;
    }

    public static PeriodType yearDay() {
        PeriodType periodType = f13637Wwwwwwwwwwwwwwwwww;
        if (periodType == null) {
            PeriodType periodType2 = new PeriodType("YearDay", new DurationFieldType[]{DurationFieldType.years(), DurationFieldType.days()}, new int[]{0, -1, -1, 1, -1, -1, -1, -1});
            f13637Wwwwwwwwwwwwwwwwww = periodType2;
            return periodType2;
        }
        return periodType;
    }

    public static PeriodType yearDayTime() {
        PeriodType periodType = f13638Wwwwwwwwwwwwwwwwwww;
        if (periodType == null) {
            PeriodType periodType2 = new PeriodType("YearDayTime", new DurationFieldType[]{DurationFieldType.years(), DurationFieldType.days(), DurationFieldType.hours(), DurationFieldType.minutes(), DurationFieldType.seconds(), DurationFieldType.millis()}, new int[]{0, -1, -1, 1, 2, 3, 4, 5});
            f13638Wwwwwwwwwwwwwwwwwww = periodType2;
            return periodType2;
        }
        return periodType;
    }

    public static PeriodType yearMonthDay() {
        PeriodType periodType = f13641Wwwwwwwwwwwwwwwwwwwwww;
        if (periodType == null) {
            PeriodType periodType2 = new PeriodType("YearMonthDay", new DurationFieldType[]{DurationFieldType.years(), DurationFieldType.months(), DurationFieldType.days()}, new int[]{0, 1, -1, 2, -1, -1, -1, -1});
            f13641Wwwwwwwwwwwwwwwwwwwwww = periodType2;
            return periodType2;
        }
        return periodType;
    }

    public static PeriodType yearMonthDayTime() {
        PeriodType periodType = f13642Wwwwwwwwwwwwwwwwwwwwwww;
        if (periodType == null) {
            PeriodType periodType2 = new PeriodType("YearMonthDayTime", new DurationFieldType[]{DurationFieldType.years(), DurationFieldType.months(), DurationFieldType.days(), DurationFieldType.hours(), DurationFieldType.minutes(), DurationFieldType.seconds(), DurationFieldType.millis()}, new int[]{0, 1, -1, 2, 3, 4, 5, 6});
            f13642Wwwwwwwwwwwwwwwwwwwwwww = periodType2;
            return periodType2;
        }
        return periodType;
    }

    public static PeriodType yearWeekDay() {
        PeriodType periodType = f13639Wwwwwwwwwwwwwwwwwwww;
        if (periodType == null) {
            PeriodType periodType2 = new PeriodType("YearWeekDay", new DurationFieldType[]{DurationFieldType.years(), DurationFieldType.weeks(), DurationFieldType.days()}, new int[]{0, -1, 1, 2, -1, -1, -1, -1});
            f13639Wwwwwwwwwwwwwwwwwwww = periodType2;
            return periodType2;
        }
        return periodType;
    }

    public static PeriodType yearWeekDayTime() {
        PeriodType periodType = f13640Wwwwwwwwwwwwwwwwwwwww;
        if (periodType == null) {
            PeriodType periodType2 = new PeriodType("YearWeekDayTime", new DurationFieldType[]{DurationFieldType.years(), DurationFieldType.weeks(), DurationFieldType.days(), DurationFieldType.hours(), DurationFieldType.minutes(), DurationFieldType.seconds(), DurationFieldType.millis()}, new int[]{0, -1, 1, 2, 3, 4, 5, 6});
            f13640Wwwwwwwwwwwwwwwwwwwww = periodType2;
            return periodType2;
        }
        return periodType;
    }

    public static PeriodType years() {
        PeriodType periodType = f13634Wwwwwwwwwwwwwww;
        if (periodType == null) {
            PeriodType periodType2 = new PeriodType("Years", new DurationFieldType[]{DurationFieldType.years()}, new int[]{0, -1, -1, -1, -1, -1, -1, -1});
            f13634Wwwwwwwwwwwwwww = periodType2;
            return periodType2;
        }
        return periodType;
    }

    public final PeriodType Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, String str) {
        int i2 = this.iIndices[i];
        if (i2 == -1) {
            return this;
        }
        DurationFieldType[] durationFieldTypeArr = new DurationFieldType[size() - 1];
        int i3 = 0;
        while (true) {
            DurationFieldType[] durationFieldTypeArr2 = this.iTypes;
            if (i3 >= durationFieldTypeArr2.length) {
                break;
            }
            if (i3 < i2) {
                durationFieldTypeArr[i3] = durationFieldTypeArr2[i3];
            } else if (i3 > i2) {
                durationFieldTypeArr[i3 - 1] = durationFieldTypeArr2[i3];
            }
            i3++;
        }
        int[] iArr = new int[8];
        for (int i4 = 0; i4 < 8; i4++) {
            if (i4 < i) {
                iArr[i4] = this.iIndices[i4];
            } else if (i4 > i) {
                int i5 = this.iIndices[i4];
                iArr[i4] = i5 == -1 ? -1 : i5 - 1;
            } else {
                iArr[i4] = -1;
            }
        }
        return new PeriodType(getName() + str, durationFieldTypeArr, iArr);
    }

    public boolean addIndexedField(ReadablePeriod readablePeriod, int i, int[] iArr, int i2) {
        if (i2 == 0) {
            return false;
        }
        int i3 = this.iIndices[i];
        if (i3 != -1) {
            iArr[i3] = FieldUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(iArr[i3], i2);
            return true;
        }
        throw new UnsupportedOperationException("Field is not supported");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PeriodType)) {
            return false;
        }
        return Arrays.equals(this.iTypes, ((PeriodType) obj).iTypes);
    }

    public DurationFieldType getFieldType(int i) {
        return this.iTypes[i];
    }

    public int getIndexedField(ReadablePeriod readablePeriod, int i) {
        int i2 = this.iIndices[i];
        if (i2 == -1) {
            return 0;
        }
        return readablePeriod.getValue(i2);
    }

    public String getName() {
        return this.iName;
    }

    public int hashCode() {
        int i = 0;
        int i2 = 0;
        while (true) {
            DurationFieldType[] durationFieldTypeArr = this.iTypes;
            if (i < durationFieldTypeArr.length) {
                i2 += durationFieldTypeArr[i].hashCode();
                i++;
            } else {
                return i2;
            }
        }
    }

    public int indexOf(DurationFieldType durationFieldType) {
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.iTypes[i] == durationFieldType) {
                return i;
            }
        }
        return -1;
    }

    public boolean isSupported(DurationFieldType durationFieldType) {
        if (indexOf(durationFieldType) >= 0) {
            return true;
        }
        return false;
    }

    public boolean setIndexedField(ReadablePeriod readablePeriod, int i, int[] iArr, int i2) {
        int i3 = this.iIndices[i];
        if (i3 != -1) {
            iArr[i3] = i2;
            return true;
        }
        throw new UnsupportedOperationException("Field is not supported");
    }

    public int size() {
        return this.iTypes.length;
    }

    public String toString() {
        return "PeriodType[" + getName() + "]";
    }

    public PeriodType withDaysRemoved() {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(3, "NoDays");
    }

    public PeriodType withHoursRemoved() {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(4, "NoHours");
    }

    public PeriodType withMillisRemoved() {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(7, "NoMillis");
    }

    public PeriodType withMinutesRemoved() {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(5, "NoMinutes");
    }

    public PeriodType withMonthsRemoved() {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(1, "NoMonths");
    }

    public PeriodType withSecondsRemoved() {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(6, "NoSeconds");
    }

    public PeriodType withWeeksRemoved() {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(2, "NoWeeks");
    }

    public PeriodType withYearsRemoved() {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(0, "NoYears");
    }
}
