package org.joda.time;

import java.io.Serializable;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public abstract class DateTimeFieldType implements Serializable {
    static final byte CENTURY_OF_ERA = 3;
    static final byte CLOCKHOUR_OF_DAY = 16;
    static final byte CLOCKHOUR_OF_HALFDAY = 15;
    static final byte DAY_OF_MONTH = 8;
    static final byte DAY_OF_WEEK = 12;
    static final byte DAY_OF_YEAR = 6;
    static final byte ERA = 1;
    static final byte HALFDAY_OF_DAY = 13;
    static final byte HOUR_OF_DAY = 17;
    static final byte HOUR_OF_HALFDAY = 14;
    static final byte MILLIS_OF_DAY = 22;
    static final byte MILLIS_OF_SECOND = 23;
    static final byte MINUTE_OF_DAY = 18;
    static final byte MINUTE_OF_HOUR = 19;
    static final byte MONTH_OF_YEAR = 7;
    static final byte SECOND_OF_DAY = 20;
    static final byte SECOND_OF_MINUTE = 21;
    static final byte WEEKYEAR = 10;
    static final byte WEEKYEAR_OF_CENTURY = 9;
    static final byte WEEK_OF_WEEKYEAR = 11;
    static final byte YEAR = 5;
    static final byte YEAR_OF_CENTURY = 4;
    static final byte YEAR_OF_ERA = 2;
    private static final long serialVersionUID = -42615285973990L;
    private final String iName;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final DateTimeFieldType f13597Wwwwwwwwwwwwwwwwwwwwwwwww = new StandardDateTimeFieldType("era", (byte) 1, DurationFieldType.eras(), null);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final DateTimeFieldType f13596Wwwwwwwwwwwwwwwwwwwwwwww = new StandardDateTimeFieldType("yearOfEra", (byte) 2, DurationFieldType.years(), DurationFieldType.eras());

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final DateTimeFieldType f13595Wwwwwwwwwwwwwwwwwwwwwww = new StandardDateTimeFieldType("centuryOfEra", (byte) 3, DurationFieldType.centuries(), DurationFieldType.eras());

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final DateTimeFieldType f13594Wwwwwwwwwwwwwwwwwwwwww = new StandardDateTimeFieldType("yearOfCentury", (byte) 4, DurationFieldType.years(), DurationFieldType.centuries());

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final DateTimeFieldType f13593Wwwwwwwwwwwwwwwwwwwww = new StandardDateTimeFieldType("year", (byte) 5, DurationFieldType.years(), null);

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final DateTimeFieldType f13592Wwwwwwwwwwwwwwwwwwww = new StandardDateTimeFieldType("dayOfYear", (byte) 6, DurationFieldType.days(), DurationFieldType.years());

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final DateTimeFieldType f13591Wwwwwwwwwwwwwwwwwww = new StandardDateTimeFieldType("monthOfYear", (byte) 7, DurationFieldType.months(), DurationFieldType.years());

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final DateTimeFieldType f13590Wwwwwwwwwwwwwwwwww = new StandardDateTimeFieldType("dayOfMonth", (byte) 8, DurationFieldType.days(), DurationFieldType.months());

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final DateTimeFieldType f13589Wwwwwwwwwwwwwwwww = new StandardDateTimeFieldType("weekyearOfCentury", (byte) 9, DurationFieldType.weekyears(), DurationFieldType.centuries());

    /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final DateTimeFieldType f13588Wwwwwwwwwwwwwwww = new StandardDateTimeFieldType("weekyear", (byte) 10, DurationFieldType.weekyears(), null);

    /* renamed from: Wwwwwwwwwwwwwww  reason: collision with root package name */
    public static final DateTimeFieldType f13587Wwwwwwwwwwwwwww = new StandardDateTimeFieldType("weekOfWeekyear", (byte) 11, DurationFieldType.weeks(), DurationFieldType.weekyears());

    /* renamed from: Wwwwwwwwwwwwww  reason: collision with root package name */
    public static final DateTimeFieldType f13586Wwwwwwwwwwwwww = new StandardDateTimeFieldType("dayOfWeek", (byte) 12, DurationFieldType.days(), DurationFieldType.weeks());

    /* renamed from: Wwwwwwwwwwwww  reason: collision with root package name */
    public static final DateTimeFieldType f13585Wwwwwwwwwwwww = new StandardDateTimeFieldType("halfdayOfDay", (byte) 13, DurationFieldType.halfdays(), DurationFieldType.days());

    /* renamed from: Wwwwwwwwwwww  reason: collision with root package name */
    public static final DateTimeFieldType f13584Wwwwwwwwwwww = new StandardDateTimeFieldType("hourOfHalfday", (byte) 14, DurationFieldType.hours(), DurationFieldType.halfdays());

    /* renamed from: Wwwwwwwwwww  reason: collision with root package name */
    public static final DateTimeFieldType f13583Wwwwwwwwwww = new StandardDateTimeFieldType("clockhourOfHalfday", (byte) 15, DurationFieldType.hours(), DurationFieldType.halfdays());

    /* renamed from: Wwwwwwwwww  reason: collision with root package name */
    public static final DateTimeFieldType f13582Wwwwwwwwww = new StandardDateTimeFieldType("clockhourOfDay", (byte) 16, DurationFieldType.hours(), DurationFieldType.days());

    /* renamed from: Wwwwwwwww  reason: collision with root package name */
    public static final DateTimeFieldType f13581Wwwwwwwww = new StandardDateTimeFieldType("hourOfDay", (byte) 17, DurationFieldType.hours(), DurationFieldType.days());

    /* renamed from: Wwwwwwww  reason: collision with root package name */
    public static final DateTimeFieldType f13580Wwwwwwww = new StandardDateTimeFieldType("minuteOfDay", (byte) 18, DurationFieldType.minutes(), DurationFieldType.days());

    /* renamed from: Wwwwwww  reason: collision with root package name */
    public static final DateTimeFieldType f13579Wwwwwww = new StandardDateTimeFieldType("minuteOfHour", (byte) 19, DurationFieldType.minutes(), DurationFieldType.hours());

    /* renamed from: Wwwwww  reason: collision with root package name */
    public static final DateTimeFieldType f13578Wwwwww = new StandardDateTimeFieldType("secondOfDay", (byte) 20, DurationFieldType.seconds(), DurationFieldType.days());

    /* renamed from: Wwwww  reason: collision with root package name */
    public static final DateTimeFieldType f13577Wwwww = new StandardDateTimeFieldType("secondOfMinute", (byte) 21, DurationFieldType.seconds(), DurationFieldType.minutes());

    /* renamed from: Wwww  reason: collision with root package name */
    public static final DateTimeFieldType f13576Wwww = new StandardDateTimeFieldType("millisOfDay", (byte) 22, DurationFieldType.millis(), DurationFieldType.days());

    /* renamed from: Www  reason: collision with root package name */
    public static final DateTimeFieldType f13575Www = new StandardDateTimeFieldType("millisOfSecond", (byte) 23, DurationFieldType.millis(), DurationFieldType.seconds());

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static class StandardDateTimeFieldType extends DateTimeFieldType {
        private static final long serialVersionUID = -9937958251642L;

        /* renamed from: Kkkkkkkkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
        public final transient DurationFieldType f13598Kkkkkkkkkkkkkkkkkkkkkkkkk;

        /* renamed from: Kkkkkkkkkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
        public final transient DurationFieldType f13599Kkkkkkkkkkkkkkkkkkkkkkkkkk;
        private final byte iOrdinal;

        public StandardDateTimeFieldType(String str, byte b, DurationFieldType durationFieldType, DurationFieldType durationFieldType2) {
            super(str);
            this.iOrdinal = b;
            this.f13599Kkkkkkkkkkkkkkkkkkkkkkkkkk = durationFieldType;
            this.f13598Kkkkkkkkkkkkkkkkkkkkkkkkk = durationFieldType2;
        }

        private Object readResolve() {
            switch (this.iOrdinal) {
                case 1:
                    return DateTimeFieldType.f13597Wwwwwwwwwwwwwwwwwwwwwwwww;
                case 2:
                    return DateTimeFieldType.f13596Wwwwwwwwwwwwwwwwwwwwwwww;
                case 3:
                    return DateTimeFieldType.f13595Wwwwwwwwwwwwwwwwwwwwwww;
                case 4:
                    return DateTimeFieldType.f13594Wwwwwwwwwwwwwwwwwwwwww;
                case 5:
                    return DateTimeFieldType.f13593Wwwwwwwwwwwwwwwwwwwww;
                case 6:
                    return DateTimeFieldType.f13592Wwwwwwwwwwwwwwwwwwww;
                case 7:
                    return DateTimeFieldType.f13591Wwwwwwwwwwwwwwwwwww;
                case 8:
                    return DateTimeFieldType.f13590Wwwwwwwwwwwwwwwwww;
                case 9:
                    return DateTimeFieldType.f13589Wwwwwwwwwwwwwwwww;
                case 10:
                    return DateTimeFieldType.f13588Wwwwwwwwwwwwwwww;
                case 11:
                    return DateTimeFieldType.f13587Wwwwwwwwwwwwwww;
                case 12:
                    return DateTimeFieldType.f13586Wwwwwwwwwwwwww;
                case 13:
                    return DateTimeFieldType.f13585Wwwwwwwwwwwww;
                case 14:
                    return DateTimeFieldType.f13584Wwwwwwwwwwww;
                case 15:
                    return DateTimeFieldType.f13583Wwwwwwwwwww;
                case 16:
                    return DateTimeFieldType.f13582Wwwwwwwwww;
                case 17:
                    return DateTimeFieldType.f13581Wwwwwwwww;
                case 18:
                    return DateTimeFieldType.f13580Wwwwwwww;
                case 19:
                    return DateTimeFieldType.f13579Wwwwwww;
                case 20:
                    return DateTimeFieldType.f13578Wwwwww;
                case 21:
                    return DateTimeFieldType.f13577Wwwww;
                case 22:
                    return DateTimeFieldType.f13576Wwww;
                case 23:
                    return DateTimeFieldType.f13575Www;
                default:
                    return this;
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof StandardDateTimeFieldType) && this.iOrdinal == ((StandardDateTimeFieldType) obj).iOrdinal) {
                return true;
            }
            return false;
        }

        @Override // org.joda.time.DateTimeFieldType
        public DurationFieldType getDurationType() {
            return this.f13599Kkkkkkkkkkkkkkkkkkkkkkkkkk;
        }

        @Override // org.joda.time.DateTimeFieldType
        public DateTimeField getField(Chronology chronology) {
            Chronology Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(chronology);
            switch (this.iOrdinal) {
                case 1:
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.era();
                case 2:
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.yearOfEra();
                case 3:
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.centuryOfEra();
                case 4:
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.yearOfCentury();
                case 5:
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.year();
                case 6:
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.dayOfYear();
                case 7:
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.monthOfYear();
                case 8:
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.dayOfMonth();
                case 9:
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.weekyearOfCentury();
                case 10:
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.weekyear();
                case 11:
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.weekOfWeekyear();
                case 12:
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.dayOfWeek();
                case 13:
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.halfdayOfDay();
                case 14:
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.hourOfHalfday();
                case 15:
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.clockhourOfHalfday();
                case 16:
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.clockhourOfDay();
                case 17:
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.hourOfDay();
                case 18:
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.minuteOfDay();
                case 19:
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.minuteOfHour();
                case 20:
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.secondOfDay();
                case 21:
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.secondOfMinute();
                case 22:
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.millisOfDay();
                case 23:
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.millisOfSecond();
                default:
                    throw new InternalError();
            }
        }

        @Override // org.joda.time.DateTimeFieldType
        public DurationFieldType getRangeDurationType() {
            return this.f13598Kkkkkkkkkkkkkkkkkkkkkkkkk;
        }

        public int hashCode() {
            return 1 << this.iOrdinal;
        }
    }

    public DateTimeFieldType(String str) {
        this.iName = str;
    }

    public static DateTimeFieldType centuryOfEra() {
        return f13595Wwwwwwwwwwwwwwwwwwwwwww;
    }

    public static DateTimeFieldType clockhourOfDay() {
        return f13582Wwwwwwwwww;
    }

    public static DateTimeFieldType clockhourOfHalfday() {
        return f13583Wwwwwwwwwww;
    }

    public static DateTimeFieldType dayOfMonth() {
        return f13590Wwwwwwwwwwwwwwwwww;
    }

    public static DateTimeFieldType dayOfWeek() {
        return f13586Wwwwwwwwwwwwww;
    }

    public static DateTimeFieldType dayOfYear() {
        return f13592Wwwwwwwwwwwwwwwwwwww;
    }

    public static DateTimeFieldType era() {
        return f13597Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public static DateTimeFieldType halfdayOfDay() {
        return f13585Wwwwwwwwwwwww;
    }

    public static DateTimeFieldType hourOfDay() {
        return f13581Wwwwwwwww;
    }

    public static DateTimeFieldType hourOfHalfday() {
        return f13584Wwwwwwwwwwww;
    }

    public static DateTimeFieldType millisOfDay() {
        return f13576Wwww;
    }

    public static DateTimeFieldType millisOfSecond() {
        return f13575Www;
    }

    public static DateTimeFieldType minuteOfDay() {
        return f13580Wwwwwwww;
    }

    public static DateTimeFieldType minuteOfHour() {
        return f13579Wwwwwww;
    }

    public static DateTimeFieldType monthOfYear() {
        return f13591Wwwwwwwwwwwwwwwwwww;
    }

    public static DateTimeFieldType secondOfDay() {
        return f13578Wwwwww;
    }

    public static DateTimeFieldType secondOfMinute() {
        return f13577Wwwww;
    }

    public static DateTimeFieldType weekOfWeekyear() {
        return f13587Wwwwwwwwwwwwwww;
    }

    public static DateTimeFieldType weekyear() {
        return f13588Wwwwwwwwwwwwwwww;
    }

    public static DateTimeFieldType weekyearOfCentury() {
        return f13589Wwwwwwwwwwwwwwwww;
    }

    public static DateTimeFieldType year() {
        return f13593Wwwwwwwwwwwwwwwwwwwww;
    }

    public static DateTimeFieldType yearOfCentury() {
        return f13594Wwwwwwwwwwwwwwwwwwwwww;
    }

    public static DateTimeFieldType yearOfEra() {
        return f13596Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    public abstract DurationFieldType getDurationType();

    public abstract DateTimeField getField(Chronology chronology);

    public String getName() {
        return this.iName;
    }

    public abstract DurationFieldType getRangeDurationType();

    public boolean isSupported(Chronology chronology) {
        return getField(chronology).isSupported();
    }

    public String toString() {
        return getName();
    }
}
