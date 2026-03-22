package org.joda.time.chrono;

import androidx.media3.exoplayer.analytics.AnalyticsListener;
import com.vungle.ads.internal.signals.SignalManager;
import java.util.Locale;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.joda.time.Chronology;
import org.joda.time.DateTimeField;
import org.joda.time.DateTimeFieldType;
import org.joda.time.DateTimeZone;
import org.joda.time.DurationField;
import org.joda.time.DurationFieldType;
import org.joda.time.IllegalFieldValueException;
import org.joda.time.chrono.AssembledChronology;
import org.joda.time.field.DividedDateTimeField;
import org.joda.time.field.FieldUtils;
import org.joda.time.field.MillisDurationField;
import org.joda.time.field.OffsetDateTimeField;
import org.joda.time.field.PreciseDateTimeField;
import org.joda.time.field.PreciseDurationField;
import org.joda.time.field.RemainderDateTimeField;
import org.joda.time.field.ZeroIsMaxDateTimeField;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public abstract class BasicChronology extends AssembledChronology {
    public static final DateTimeField Illllllllllllllllllllll;
    public static final DateTimeField Illlllllllllllllllllllll;
    public static final DateTimeField Illllllllllllllllllllllll;
    public static final DateTimeField Illlllllllllllllllllllllll;
    public static final DateTimeField Illllllllllllllllllllllllll;
    public static final DateTimeField Illlllllllllllllllllllllllll;
    public static final DateTimeField Illllllllllllllllllllllllllll;
    public static final DateTimeField Kk;
    public static final DateTimeField Kkk;
    public static final DateTimeField Kkkk;
    public static final DateTimeField Kkkkk;
    public static final DurationField Kkkkkk;
    public static final DurationField Kkkkkkk;

    /* renamed from: Kkkkkkkk  reason: collision with root package name */
    public static final DurationField f13723Kkkkkkkk;

    /* renamed from: Kkkkkkkkk  reason: collision with root package name */
    public static final DurationField f13724Kkkkkkkkk;

    /* renamed from: Kkkkkkkkkk  reason: collision with root package name */
    public static final DurationField f13725Kkkkkkkkkk;

    /* renamed from: Kkkkkkkkkkk  reason: collision with root package name */
    public static final DurationField f13726Kkkkkkkkkkk;

    /* renamed from: Kkkkkkkkkkkk  reason: collision with root package name */
    public static final DurationField f13727Kkkkkkkkkkkk;
    private static final long serialVersionUID = 8283225332206808863L;

    /* renamed from: Kkkkkkkkkkkkk  reason: collision with root package name */
    public final transient YearInfo[] f13728Kkkkkkkkkkkkk;
    private final int iMinDaysInFirstWeek;

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static class HalfdayField extends PreciseDateTimeField {
        public HalfdayField() {
            super(DateTimeFieldType.halfdayOfDay(), BasicChronology.f13723Kkkkkkkk, BasicChronology.Kkkkkkk);
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public String getAsText(int i, Locale locale) {
            return GJLocaleSymbols.Wwwwwwwwwwwwwwwwwwwwwwwwwww(locale).Wwwwwwwwwwwwwwwwwww(i);
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public int getMaximumTextLength(Locale locale) {
            return GJLocaleSymbols.Wwwwwwwwwwwwwwwwwwwwwwwwwww(locale).Wwwwwwwwwwwwwwwwwwwwwww();
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public long set(long j, String str, Locale locale) {
            return set(j, GJLocaleSymbols.Wwwwwwwwwwwwwwwwwwwwwwwwwww(locale).Wwwwwwwwwwwwwwwwwwww(str));
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static class YearInfo {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final long f13729Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f13730Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public YearInfo(int i, long j) {
            this.f13730Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
            this.f13729Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = j;
        }
    }

    static {
        DurationField durationField = MillisDurationField.INSTANCE;
        f13727Kkkkkkkkkkkk = durationField;
        PreciseDurationField preciseDurationField = new PreciseDurationField(DurationFieldType.seconds(), 1000L);
        f13726Kkkkkkkkkkk = preciseDurationField;
        PreciseDurationField preciseDurationField2 = new PreciseDurationField(DurationFieldType.minutes(), 60000L);
        f13725Kkkkkkkkkk = preciseDurationField2;
        PreciseDurationField preciseDurationField3 = new PreciseDurationField(DurationFieldType.hours(), 3600000L);
        f13724Kkkkkkkkk = preciseDurationField3;
        PreciseDurationField preciseDurationField4 = new PreciseDurationField(DurationFieldType.halfdays(), 43200000L);
        f13723Kkkkkkkk = preciseDurationField4;
        PreciseDurationField preciseDurationField5 = new PreciseDurationField(DurationFieldType.days(), SignalManager.TWENTY_FOUR_HOURS_MILLIS);
        Kkkkkkk = preciseDurationField5;
        Kkkkkk = new PreciseDurationField(DurationFieldType.weeks(), 604800000L);
        Kkkkk = new PreciseDateTimeField(DateTimeFieldType.millisOfSecond(), durationField, preciseDurationField);
        Kkkk = new PreciseDateTimeField(DateTimeFieldType.millisOfDay(), durationField, preciseDurationField5);
        Kkk = new PreciseDateTimeField(DateTimeFieldType.secondOfMinute(), preciseDurationField, preciseDurationField2);
        Kk = new PreciseDateTimeField(DateTimeFieldType.secondOfDay(), preciseDurationField, preciseDurationField5);
        Illllllllllllllllllllllllllll = new PreciseDateTimeField(DateTimeFieldType.minuteOfHour(), preciseDurationField2, preciseDurationField3);
        Illlllllllllllllllllllllllll = new PreciseDateTimeField(DateTimeFieldType.minuteOfDay(), preciseDurationField2, preciseDurationField5);
        PreciseDateTimeField preciseDateTimeField = new PreciseDateTimeField(DateTimeFieldType.hourOfDay(), preciseDurationField3, preciseDurationField5);
        Illllllllllllllllllllllllll = preciseDateTimeField;
        PreciseDateTimeField preciseDateTimeField2 = new PreciseDateTimeField(DateTimeFieldType.hourOfHalfday(), preciseDurationField3, preciseDurationField4);
        Illlllllllllllllllllllllll = preciseDateTimeField2;
        Illllllllllllllllllllllll = new ZeroIsMaxDateTimeField(preciseDateTimeField, DateTimeFieldType.clockhourOfDay());
        Illlllllllllllllllllllll = new ZeroIsMaxDateTimeField(preciseDateTimeField2, DateTimeFieldType.clockhourOfHalfday());
        Illllllllllllllllllllll = new HalfdayField();
    }

    public BasicChronology(Chronology chronology, Object obj, int i) {
        super(chronology, obj);
        this.f13728Kkkkkkkkkkkkk = new YearInfo[1024];
        if (i >= 1 && i <= 7) {
            this.iMinDaysInFirstWeek = i;
            return;
        }
        throw new IllegalArgumentException("Invalid min days in first week: " + i);
    }

    public final YearInfo Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        YearInfo[] yearInfoArr = this.f13728Kkkkkkkkkkkkk;
        int i2 = i & AnalyticsListener.EVENT_DRM_KEYS_LOADED;
        YearInfo yearInfo = yearInfoArr[i2];
        if (yearInfo != null && yearInfo.f13730Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == i) {
            return yearInfo;
        }
        YearInfo yearInfo2 = new YearInfo(i, calculateFirstDayOfYearMillis(i));
        this.f13728Kkkkkkkkkkkkk[i2] = yearInfo2;
        return yearInfo2;
    }

    public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2, int i3, int i4) {
        long dateMidnightMillis = getDateMidnightMillis(i, i2, i3);
        if (dateMidnightMillis == Long.MIN_VALUE) {
            dateMidnightMillis = getDateMidnightMillis(i, i2, i3 + 1);
            i4 -= 86400000;
        }
        long j = i4 + dateMidnightMillis;
        int i5 = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i5 < 0 && dateMidnightMillis > 0) {
            return Long.MAX_VALUE;
        }
        if (i5 > 0 && dateMidnightMillis < 0) {
            return Long.MIN_VALUE;
        }
        return j;
    }

    @Override // org.joda.time.chrono.AssembledChronology
    public void assemble(AssembledChronology.Fields fields) {
        fields.f13722Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = f13727Kkkkkkkkkkkk;
        fields.f13721Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = f13726Kkkkkkkkkkk;
        fields.f13720Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = f13725Kkkkkkkkkk;
        fields.f13719Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = f13724Kkkkkkkkk;
        fields.f13718Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = f13723Kkkkkkkk;
        fields.f13717Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = Kkkkkkk;
        fields.f13716Wwwwwwwwwwwwwwwwwwwwwwwwwwww = Kkkkkk;
        fields.f13710Wwwwwwwwwwwwwwwwwwwwww = Kkkkk;
        fields.f13709Wwwwwwwwwwwwwwwwwwwww = Kkkk;
        fields.f13708Wwwwwwwwwwwwwwwwwwww = Kkk;
        fields.f13707Wwwwwwwwwwwwwwwwwww = Kk;
        fields.f13706Wwwwwwwwwwwwwwwwww = Illllllllllllllllllllllllllll;
        fields.f13705Wwwwwwwwwwwwwwwww = Illlllllllllllllllllllllllll;
        fields.f13704Wwwwwwwwwwwwwwww = Illllllllllllllllllllllllll;
        fields.f13702Wwwwwwwwwwwwww = Illlllllllllllllllllllllll;
        fields.f13703Wwwwwwwwwwwwwww = Illllllllllllllllllllllll;
        fields.f13701Wwwwwwwwwwwww = Illlllllllllllllllllllll;
        fields.f13700Wwwwwwwwwwww = Illllllllllllllllllllll;
        BasicYearDateTimeField basicYearDateTimeField = new BasicYearDateTimeField(this);
        fields.f13692Wwww = basicYearDateTimeField;
        GJYearOfEraDateTimeField gJYearOfEraDateTimeField = new GJYearOfEraDateTimeField(basicYearDateTimeField, this);
        fields.f13691Www = gJYearOfEraDateTimeField;
        DividedDateTimeField dividedDateTimeField = new DividedDateTimeField(new OffsetDateTimeField(gJYearOfEraDateTimeField, 99), DateTimeFieldType.centuryOfEra(), 100);
        fields.f13689Kkkkkkkkkkkkkkkkkkkkkkkkk = dividedDateTimeField;
        fields.f13712Wwwwwwwwwwwwwwwwwwwwwwww = dividedDateTimeField.getDurationField();
        fields.f13690Kkkkkkkkkkkkkkkkkkkkkkkkkk = new OffsetDateTimeField(new RemainderDateTimeField((DividedDateTimeField) fields.f13689Kkkkkkkkkkkkkkkkkkkkkkkkk), DateTimeFieldType.yearOfCentury(), 1);
        fields.f13688Kkkkkkkkkkkkkkkkkkkkkkkk = new GJEraDateTimeField(this);
        fields.f13699Wwwwwwwwwww = new GJDayOfWeekDateTimeField(this, fields.f13717Wwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        fields.f13698Wwwwwwwwww = new BasicDayOfMonthDateTimeField(this, fields.f13717Wwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        fields.f13697Wwwwwwwww = new BasicDayOfYearDateTimeField(this, fields.f13717Wwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        fields.f13693Wwwww = new GJMonthOfYearDateTimeField(this);
        fields.f13695Wwwwwww = new BasicWeekyearDateTimeField(this);
        fields.f13696Wwwwwwww = new BasicWeekOfWeekyearDateTimeField(this, fields.f13716Wwwwwwwwwwwwwwwwwwwwwwwwwwww);
        fields.f13694Wwwwww = new OffsetDateTimeField(new RemainderDateTimeField(fields.f13695Wwwwwww, fields.f13712Wwwwwwwwwwwwwwwwwwwwwwww, DateTimeFieldType.weekyearOfCentury(), 100), DateTimeFieldType.weekyearOfCentury(), 1);
        fields.f13713Wwwwwwwwwwwwwwwwwwwwwwwww = fields.f13692Wwww.getDurationField();
        fields.f13714Wwwwwwwwwwwwwwwwwwwwwwwwww = fields.f13693Wwwww.getDurationField();
        fields.f13715Wwwwwwwwwwwwwwwwwwwwwwwwwww = fields.f13695Wwwwwww.getDurationField();
    }

    public abstract long calculateFirstDayOfYearMillis(int i);

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            BasicChronology basicChronology = (BasicChronology) obj;
            if (getMinimumDaysInFirstWeek() == basicChronology.getMinimumDaysInFirstWeek() && getZone().equals(basicChronology.getZone())) {
                return true;
            }
        }
        return false;
    }

    public abstract long getApproxMillisAtEpochDividedByTwo();

    public abstract long getAverageMillisPerMonth();

    public abstract long getAverageMillisPerYear();

    public abstract long getAverageMillisPerYearDividedByTwo();

    public long getDateMidnightMillis(int i, int i2, int i3) {
        FieldUtils.Wwwwwwwwwwwwwwwwwwww(DateTimeFieldType.year(), i, getMinYear() - 1, getMaxYear() + 1);
        FieldUtils.Wwwwwwwwwwwwwwwwwwww(DateTimeFieldType.monthOfYear(), i2, 1, getMaxMonth(i));
        int daysInYearMonth = getDaysInYearMonth(i, i2);
        if (i3 >= 1 && i3 <= daysInYearMonth) {
            long yearMonthDayMillis = getYearMonthDayMillis(i, i2, i3);
            int i4 = (yearMonthDayMillis > 0L ? 1 : (yearMonthDayMillis == 0L ? 0 : -1));
            if (i4 < 0 && i == getMaxYear() + 1) {
                return Long.MAX_VALUE;
            }
            if (i4 > 0 && i == getMinYear() - 1) {
                return Long.MIN_VALUE;
            }
            return yearMonthDayMillis;
        }
        DateTimeFieldType dayOfMonth = DateTimeFieldType.dayOfMonth();
        Integer valueOf = Integer.valueOf(i3);
        Integer valueOf2 = Integer.valueOf(daysInYearMonth);
        throw new IllegalFieldValueException(dayOfMonth, valueOf, 1, valueOf2, "year: " + i + " month: " + i2);
    }

    @Override // org.joda.time.chrono.AssembledChronology, org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public long getDateTimeMillis(int i, int i2, int i3, int i4) throws IllegalArgumentException {
        Chronology base = getBase();
        if (base != null) {
            return base.getDateTimeMillis(i, i2, i3, i4);
        }
        FieldUtils.Wwwwwwwwwwwwwwwwwwww(DateTimeFieldType.millisOfDay(), i4, 0, 86399999);
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, i2, i3, i4);
    }

    public int getDayOfMonth(long j) {
        int year = getYear(j);
        return getDayOfMonth(j, year, getMonthOfYear(j, year));
    }

    public int getDayOfWeek(long j) {
        long j2;
        if (j >= 0) {
            j2 = j / SignalManager.TWENTY_FOUR_HOURS_MILLIS;
        } else {
            j2 = (j - 86399999) / SignalManager.TWENTY_FOUR_HOURS_MILLIS;
            if (j2 < -3) {
                return ((int) ((j2 + 4) % 7)) + 7;
            }
        }
        return ((int) ((j2 + 3) % 7)) + 1;
    }

    public int getDayOfYear(long j) {
        return getDayOfYear(j, getYear(j));
    }

    public int getDaysInMonthMax() {
        return 31;
    }

    public abstract int getDaysInMonthMax(int i);

    public int getDaysInMonthMaxForSet(long j, int i) {
        return getDaysInMonthMax(j);
    }

    public int getDaysInYear(int i) {
        if (isLeapYear(i)) {
            return 366;
        }
        return 365;
    }

    public int getDaysInYearMax() {
        return 366;
    }

    public abstract int getDaysInYearMonth(int i, int i2);

    public long getFirstWeekOfYearMillis(int i) {
        long yearMillis = getYearMillis(i);
        int dayOfWeek = getDayOfWeek(yearMillis);
        if (dayOfWeek > 8 - this.iMinDaysInFirstWeek) {
            return yearMillis + ((8 - dayOfWeek) * SignalManager.TWENTY_FOUR_HOURS_MILLIS);
        }
        return yearMillis - ((dayOfWeek - 1) * SignalManager.TWENTY_FOUR_HOURS_MILLIS);
    }

    public int getMaxMonth() {
        return 12;
    }

    public abstract int getMaxYear();

    public int getMillisOfDay(long j) {
        if (j >= 0) {
            return (int) (j % SignalManager.TWENTY_FOUR_HOURS_MILLIS);
        }
        return ((int) ((j + 1) % SignalManager.TWENTY_FOUR_HOURS_MILLIS)) + 86399999;
    }

    public abstract int getMinYear();

    public int getMinimumDaysInFirstWeek() {
        return this.iMinDaysInFirstWeek;
    }

    public int getMonthOfYear(long j) {
        return getMonthOfYear(j, getYear(j));
    }

    public abstract int getMonthOfYear(long j, int i);

    public abstract long getTotalMillisByYearMonth(int i, int i2);

    public int getWeekOfWeekyear(long j) {
        return getWeekOfWeekyear(j, getYear(j));
    }

    public int getWeeksInYear(int i) {
        return (int) ((getFirstWeekOfYearMillis(i + 1) - getFirstWeekOfYearMillis(i)) / 604800000);
    }

    public int getWeekyear(long j) {
        int year = getYear(j);
        int weekOfWeekyear = getWeekOfWeekyear(j, year);
        if (weekOfWeekyear == 1) {
            return getYear(j + 604800000);
        }
        if (weekOfWeekyear > 51) {
            return getYear(j - 1209600000);
        }
        return year;
    }

    public int getYear(long j) {
        long averageMillisPerYearDividedByTwo = getAverageMillisPerYearDividedByTwo();
        long approxMillisAtEpochDividedByTwo = (j >> 1) + getApproxMillisAtEpochDividedByTwo();
        if (approxMillisAtEpochDividedByTwo < 0) {
            approxMillisAtEpochDividedByTwo = (approxMillisAtEpochDividedByTwo - averageMillisPerYearDividedByTwo) + 1;
        }
        int i = (int) (approxMillisAtEpochDividedByTwo / averageMillisPerYearDividedByTwo);
        long yearMillis = getYearMillis(i);
        long j2 = j - yearMillis;
        if (j2 < 0) {
            return i - 1;
        }
        long j3 = 31536000000L;
        if (j2 >= 31536000000L) {
            if (isLeapYear(i)) {
                j3 = 31622400000L;
            }
            if (yearMillis + j3 <= j) {
                return i + 1;
            }
            return i;
        }
        return i;
    }

    public abstract long getYearDifference(long j, long j2);

    public long getYearMillis(int i) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i).f13729Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public long getYearMonthDayMillis(int i, int i2, int i3) {
        return getYearMillis(i) + getTotalMillisByYearMonth(i, i2) + ((i3 - 1) * SignalManager.TWENTY_FOUR_HOURS_MILLIS);
    }

    public long getYearMonthMillis(int i, int i2) {
        return getYearMillis(i) + getTotalMillisByYearMonth(i, i2);
    }

    @Override // org.joda.time.chrono.AssembledChronology, org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public DateTimeZone getZone() {
        Chronology base = getBase();
        if (base != null) {
            return base.getZone();
        }
        return DateTimeZone.UTC;
    }

    public int hashCode() {
        return (getClass().getName().hashCode() * 11) + getZone().hashCode() + getMinimumDaysInFirstWeek();
    }

    public boolean isLeapDay(long j) {
        return false;
    }

    public abstract boolean isLeapYear(int i);

    public abstract long setYear(long j, int i);

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public String toString() {
        StringBuilder sb = new StringBuilder(60);
        String name = getClass().getName();
        int lastIndexOf = name.lastIndexOf(46);
        if (lastIndexOf >= 0) {
            name = name.substring(lastIndexOf + 1);
        }
        sb.append(name);
        sb.append(AbstractJsonLexerKt.BEGIN_LIST);
        DateTimeZone zone = getZone();
        if (zone != null) {
            sb.append(zone.getID());
        }
        if (getMinimumDaysInFirstWeek() != 4) {
            sb.append(",mdfw=");
            sb.append(getMinimumDaysInFirstWeek());
        }
        sb.append(AbstractJsonLexerKt.END_LIST);
        return sb.toString();
    }

    public int getDayOfYear(long j, int i) {
        return ((int) ((j - getYearMillis(i)) / SignalManager.TWENTY_FOUR_HOURS_MILLIS)) + 1;
    }

    public int getDaysInMonthMax(long j) {
        int year = getYear(j);
        return getDaysInYearMonth(year, getMonthOfYear(j, year));
    }

    public int getMaxMonth(int i) {
        return getMaxMonth();
    }

    public int getWeekOfWeekyear(long j, int i) {
        long firstWeekOfYearMillis = getFirstWeekOfYearMillis(i);
        if (j < firstWeekOfYearMillis) {
            return getWeeksInYear(i - 1);
        }
        if (j >= getFirstWeekOfYearMillis(i + 1)) {
            return 1;
        }
        return ((int) ((j - firstWeekOfYearMillis) / 604800000)) + 1;
    }

    public int getDayOfMonth(long j, int i) {
        return getDayOfMonth(j, i, getMonthOfYear(j, i));
    }

    @Override // org.joda.time.chrono.AssembledChronology, org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public long getDateTimeMillis(int i, int i2, int i3, int i4, int i5, int i6, int i7) throws IllegalArgumentException {
        Chronology base = getBase();
        if (base != null) {
            return base.getDateTimeMillis(i, i2, i3, i4, i5, i6, i7);
        }
        FieldUtils.Wwwwwwwwwwwwwwwwwwww(DateTimeFieldType.hourOfDay(), i4, 0, 23);
        FieldUtils.Wwwwwwwwwwwwwwwwwwww(DateTimeFieldType.minuteOfHour(), i5, 0, 59);
        FieldUtils.Wwwwwwwwwwwwwwwwwwww(DateTimeFieldType.secondOfMinute(), i6, 0, 59);
        FieldUtils.Wwwwwwwwwwwwwwwwwwww(DateTimeFieldType.millisOfSecond(), i7, 0, 999);
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, i2, i3, (i4 * 3600000) + (i5 * 60000) + (i6 * 1000) + i7);
    }

    public int getDayOfMonth(long j, int i, int i2) {
        return ((int) ((j - (getYearMillis(i) + getTotalMillisByYearMonth(i, i2))) / SignalManager.TWENTY_FOUR_HOURS_MILLIS)) + 1;
    }
}
