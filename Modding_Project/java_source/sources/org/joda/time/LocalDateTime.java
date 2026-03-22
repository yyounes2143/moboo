package org.joda.time;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import org.joda.convert.FromString;
import org.joda.convert.ToString;
import org.joda.time.base.BaseLocal;
import org.joda.time.chrono.ISOChronology;
import org.joda.time.convert.ConverterManager;
import org.joda.time.convert.PartialConverter;
import org.joda.time.field.AbstractReadableInstantFieldProperty;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;
import org.joda.time.format.ISODateTimeFormat;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public final class LocalDateTime extends BaseLocal implements ReadablePartial, Serializable {
    private static final long serialVersionUID = -268716875315837168L;
    private final Chronology iChronology;
    private final long iLocalMillis;

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static final class Property extends AbstractReadableInstantFieldProperty {
        private static final long serialVersionUID = -358138762846288L;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public transient DateTimeField f13617Wwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public transient LocalDateTime f13618Wwwwwwwwwwwwwwwwwwwwwwwww;

        public Property(LocalDateTime localDateTime, DateTimeField dateTimeField) {
            this.f13618Wwwwwwwwwwwwwwwwwwwwwwwww = localDateTime;
            this.f13617Wwwwwwwwwwwwwwwwwwwwwwww = dateTimeField;
        }

        private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            this.f13618Wwwwwwwwwwwwwwwwwwwwwwwww = (LocalDateTime) objectInputStream.readObject();
            this.f13617Wwwwwwwwwwwwwwwwwwwwwwww = ((DateTimeFieldType) objectInputStream.readObject()).getField(this.f13618Wwwwwwwwwwwwwwwwwwwwwwwww.getChronology());
        }

        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.writeObject(this.f13618Wwwwwwwwwwwwwwwwwwwwwwwww);
            objectOutputStream.writeObject(this.f13617Wwwwwwwwwwwwwwwwwwwwwwww.getType());
        }

        public LocalDateTime addToCopy(int i) {
            LocalDateTime localDateTime = this.f13618Wwwwwwwwwwwwwwwwwwwwwwwww;
            return localDateTime.withLocalMillis(this.f13617Wwwwwwwwwwwwwwwwwwwwwwww.add(localDateTime.getLocalMillis(), i));
        }

        public LocalDateTime addWrapFieldToCopy(int i) {
            LocalDateTime localDateTime = this.f13618Wwwwwwwwwwwwwwwwwwwwwwwww;
            return localDateTime.withLocalMillis(this.f13617Wwwwwwwwwwwwwwwwwwwwwwww.addWrapField(localDateTime.getLocalMillis(), i));
        }

        @Override // org.joda.time.field.AbstractReadableInstantFieldProperty
        public Chronology getChronology() {
            return this.f13618Wwwwwwwwwwwwwwwwwwwwwwwww.getChronology();
        }

        @Override // org.joda.time.field.AbstractReadableInstantFieldProperty
        public DateTimeField getField() {
            return this.f13617Wwwwwwwwwwwwwwwwwwwwwwww;
        }

        public LocalDateTime getLocalDateTime() {
            return this.f13618Wwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Override // org.joda.time.field.AbstractReadableInstantFieldProperty
        public long getMillis() {
            return this.f13618Wwwwwwwwwwwwwwwwwwwwwwwww.getLocalMillis();
        }

        public LocalDateTime roundCeilingCopy() {
            LocalDateTime localDateTime = this.f13618Wwwwwwwwwwwwwwwwwwwwwwwww;
            return localDateTime.withLocalMillis(this.f13617Wwwwwwwwwwwwwwwwwwwwwwww.roundCeiling(localDateTime.getLocalMillis()));
        }

        public LocalDateTime roundFloorCopy() {
            LocalDateTime localDateTime = this.f13618Wwwwwwwwwwwwwwwwwwwwwwwww;
            return localDateTime.withLocalMillis(this.f13617Wwwwwwwwwwwwwwwwwwwwwwww.roundFloor(localDateTime.getLocalMillis()));
        }

        public LocalDateTime roundHalfCeilingCopy() {
            LocalDateTime localDateTime = this.f13618Wwwwwwwwwwwwwwwwwwwwwwwww;
            return localDateTime.withLocalMillis(this.f13617Wwwwwwwwwwwwwwwwwwwwwwww.roundHalfCeiling(localDateTime.getLocalMillis()));
        }

        public LocalDateTime roundHalfEvenCopy() {
            LocalDateTime localDateTime = this.f13618Wwwwwwwwwwwwwwwwwwwwwwwww;
            return localDateTime.withLocalMillis(this.f13617Wwwwwwwwwwwwwwwwwwwwwwww.roundHalfEven(localDateTime.getLocalMillis()));
        }

        public LocalDateTime roundHalfFloorCopy() {
            LocalDateTime localDateTime = this.f13618Wwwwwwwwwwwwwwwwwwwwwwwww;
            return localDateTime.withLocalMillis(this.f13617Wwwwwwwwwwwwwwwwwwwwwwww.roundHalfFloor(localDateTime.getLocalMillis()));
        }

        public LocalDateTime setCopy(int i) {
            LocalDateTime localDateTime = this.f13618Wwwwwwwwwwwwwwwwwwwwwwwww;
            return localDateTime.withLocalMillis(this.f13617Wwwwwwwwwwwwwwwwwwwwwwww.set(localDateTime.getLocalMillis(), i));
        }

        public LocalDateTime withMaximumValue() {
            return setCopy(getMaximumValue());
        }

        public LocalDateTime withMinimumValue() {
            return setCopy(getMinimumValue());
        }

        public LocalDateTime addToCopy(long j) {
            LocalDateTime localDateTime = this.f13618Wwwwwwwwwwwwwwwwwwwwwwwww;
            return localDateTime.withLocalMillis(this.f13617Wwwwwwwwwwwwwwwwwwwwwwww.add(localDateTime.getLocalMillis(), j));
        }

        public LocalDateTime setCopy(String str, Locale locale) {
            LocalDateTime localDateTime = this.f13618Wwwwwwwwwwwwwwwwwwwwwwwww;
            return localDateTime.withLocalMillis(this.f13617Wwwwwwwwwwwwwwwwwwwwwwww.set(localDateTime.getLocalMillis(), str, locale));
        }

        public LocalDateTime setCopy(String str) {
            return setCopy(str, null);
        }
    }

    public LocalDateTime() {
        this(DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), ISOChronology.getInstance());
    }

    public static LocalDateTime fromCalendarFields(Calendar calendar) {
        if (calendar != null) {
            int i = calendar.get(0);
            int i2 = calendar.get(1);
            if (i != 1) {
                i2 = 1 - i2;
            }
            return new LocalDateTime(i2, calendar.get(2) + 1, calendar.get(5), calendar.get(11), calendar.get(12), calendar.get(13), calendar.get(14));
        }
        throw new IllegalArgumentException("The calendar must not be null");
    }

    public static LocalDateTime fromDateFields(Date date) {
        if (date != null) {
            if (date.getTime() < 0) {
                GregorianCalendar gregorianCalendar = new GregorianCalendar();
                gregorianCalendar.setTime(date);
                return fromCalendarFields(gregorianCalendar);
            }
            return new LocalDateTime(date.getYear() + 1900, date.getMonth() + 1, date.getDate(), date.getHours(), date.getMinutes(), date.getSeconds(), (((int) (date.getTime() % 1000)) + 1000) % 1000);
        }
        throw new IllegalArgumentException("The date must not be null");
    }

    public static LocalDateTime now() {
        return new LocalDateTime();
    }

    @FromString
    public static LocalDateTime parse(String str) {
        return parse(str, ISODateTimeFormat.Wwwwwwwwwwwwwwwwwwwwwww());
    }

    private Object readResolve() {
        Chronology chronology = this.iChronology;
        if (chronology == null) {
            return new LocalDateTime(this.iLocalMillis, ISOChronology.getInstanceUTC());
        }
        if (!DateTimeZone.UTC.equals(chronology.getZone())) {
            return new LocalDateTime(this.iLocalMillis, this.iChronology.withUTC());
        }
        return this;
    }

    public final Date Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Date date, TimeZone timeZone) {
        Calendar calendar = Calendar.getInstance(timeZone);
        calendar.setTime(date);
        LocalDateTime fromCalendarFields = fromCalendarFields(calendar);
        if (fromCalendarFields.isBefore(this)) {
            while (fromCalendarFields.isBefore(this)) {
                calendar.setTimeInMillis(calendar.getTimeInMillis() + 60000);
                fromCalendarFields = fromCalendarFields(calendar);
            }
            while (!fromCalendarFields.isBefore(this)) {
                calendar.setTimeInMillis(calendar.getTimeInMillis() - 1000);
                fromCalendarFields = fromCalendarFields(calendar);
            }
            calendar.setTimeInMillis(calendar.getTimeInMillis() + 1000);
        } else if (fromCalendarFields.equals(this)) {
            Calendar calendar2 = Calendar.getInstance(timeZone);
            calendar2.setTimeInMillis(calendar.getTimeInMillis() - timeZone.getDSTSavings());
            if (fromCalendarFields(calendar2).equals(this)) {
                calendar = calendar2;
            }
        }
        return calendar.getTime();
    }

    public Property centuryOfEra() {
        return new Property(this, getChronology().centuryOfEra());
    }

    public Property dayOfMonth() {
        return new Property(this, getChronology().dayOfMonth());
    }

    public Property dayOfWeek() {
        return new Property(this, getChronology().dayOfWeek());
    }

    public Property dayOfYear() {
        return new Property(this, getChronology().dayOfYear());
    }

    @Override // org.joda.time.base.AbstractPartial
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LocalDateTime) {
            LocalDateTime localDateTime = (LocalDateTime) obj;
            if (this.iChronology.equals(localDateTime.iChronology)) {
                if (this.iLocalMillis == localDateTime.iLocalMillis) {
                    return true;
                }
                return false;
            }
        }
        return super.equals(obj);
    }

    public Property era() {
        return new Property(this, getChronology().era());
    }

    @Override // org.joda.time.base.AbstractPartial, org.joda.time.ReadablePartial
    public int get(DateTimeFieldType dateTimeFieldType) {
        if (dateTimeFieldType != null) {
            return dateTimeFieldType.getField(getChronology()).get(getLocalMillis());
        }
        throw new IllegalArgumentException("The DateTimeFieldType must not be null");
    }

    public int getCenturyOfEra() {
        return getChronology().centuryOfEra().get(getLocalMillis());
    }

    @Override // org.joda.time.ReadablePartial
    public Chronology getChronology() {
        return this.iChronology;
    }

    public int getDayOfMonth() {
        return getChronology().dayOfMonth().get(getLocalMillis());
    }

    public int getDayOfWeek() {
        return getChronology().dayOfWeek().get(getLocalMillis());
    }

    public int getDayOfYear() {
        return getChronology().dayOfYear().get(getLocalMillis());
    }

    public int getEra() {
        return getChronology().era().get(getLocalMillis());
    }

    @Override // org.joda.time.base.AbstractPartial
    public DateTimeField getField(int i, Chronology chronology) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i == 3) {
                        return chronology.millisOfDay();
                    }
                    throw new IndexOutOfBoundsException("Invalid index: " + i);
                }
                return chronology.dayOfMonth();
            }
            return chronology.monthOfYear();
        }
        return chronology.year();
    }

    public int getHourOfDay() {
        return getChronology().hourOfDay().get(getLocalMillis());
    }

    @Override // org.joda.time.base.BaseLocal
    public long getLocalMillis() {
        return this.iLocalMillis;
    }

    public int getMillisOfDay() {
        return getChronology().millisOfDay().get(getLocalMillis());
    }

    public int getMillisOfSecond() {
        return getChronology().millisOfSecond().get(getLocalMillis());
    }

    public int getMinuteOfHour() {
        return getChronology().minuteOfHour().get(getLocalMillis());
    }

    public int getMonthOfYear() {
        return getChronology().monthOfYear().get(getLocalMillis());
    }

    public int getSecondOfMinute() {
        return getChronology().secondOfMinute().get(getLocalMillis());
    }

    @Override // org.joda.time.ReadablePartial
    public int getValue(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i == 3) {
                        return getChronology().millisOfDay().get(getLocalMillis());
                    }
                    throw new IndexOutOfBoundsException("Invalid index: " + i);
                }
                return getChronology().dayOfMonth().get(getLocalMillis());
            }
            return getChronology().monthOfYear().get(getLocalMillis());
        }
        return getChronology().year().get(getLocalMillis());
    }

    public int getWeekOfWeekyear() {
        return getChronology().weekOfWeekyear().get(getLocalMillis());
    }

    public int getWeekyear() {
        return getChronology().weekyear().get(getLocalMillis());
    }

    public int getYear() {
        return getChronology().year().get(getLocalMillis());
    }

    public int getYearOfCentury() {
        return getChronology().yearOfCentury().get(getLocalMillis());
    }

    public int getYearOfEra() {
        return getChronology().yearOfEra().get(getLocalMillis());
    }

    public Property hourOfDay() {
        return new Property(this, getChronology().hourOfDay());
    }

    @Override // org.joda.time.base.AbstractPartial, org.joda.time.ReadablePartial
    public boolean isSupported(DateTimeFieldType dateTimeFieldType) {
        if (dateTimeFieldType == null) {
            return false;
        }
        return dateTimeFieldType.getField(getChronology()).isSupported();
    }

    public Property millisOfDay() {
        return new Property(this, getChronology().millisOfDay());
    }

    public Property millisOfSecond() {
        return new Property(this, getChronology().millisOfSecond());
    }

    public LocalDateTime minus(ReadableDuration readableDuration) {
        return withDurationAdded(readableDuration, -1);
    }

    public LocalDateTime minusDays(int i) {
        if (i == 0) {
            return this;
        }
        return withLocalMillis(getChronology().days().subtract(getLocalMillis(), i));
    }

    public LocalDateTime minusHours(int i) {
        if (i == 0) {
            return this;
        }
        return withLocalMillis(getChronology().hours().subtract(getLocalMillis(), i));
    }

    public LocalDateTime minusMillis(int i) {
        if (i == 0) {
            return this;
        }
        return withLocalMillis(getChronology().millis().subtract(getLocalMillis(), i));
    }

    public LocalDateTime minusMinutes(int i) {
        if (i == 0) {
            return this;
        }
        return withLocalMillis(getChronology().minutes().subtract(getLocalMillis(), i));
    }

    public LocalDateTime minusMonths(int i) {
        if (i == 0) {
            return this;
        }
        return withLocalMillis(getChronology().months().subtract(getLocalMillis(), i));
    }

    public LocalDateTime minusSeconds(int i) {
        if (i == 0) {
            return this;
        }
        return withLocalMillis(getChronology().seconds().subtract(getLocalMillis(), i));
    }

    public LocalDateTime minusWeeks(int i) {
        if (i == 0) {
            return this;
        }
        return withLocalMillis(getChronology().weeks().subtract(getLocalMillis(), i));
    }

    public LocalDateTime minusYears(int i) {
        if (i == 0) {
            return this;
        }
        return withLocalMillis(getChronology().years().subtract(getLocalMillis(), i));
    }

    public Property minuteOfHour() {
        return new Property(this, getChronology().minuteOfHour());
    }

    public Property monthOfYear() {
        return new Property(this, getChronology().monthOfYear());
    }

    public LocalDateTime plus(ReadableDuration readableDuration) {
        return withDurationAdded(readableDuration, 1);
    }

    public LocalDateTime plusDays(int i) {
        if (i == 0) {
            return this;
        }
        return withLocalMillis(getChronology().days().add(getLocalMillis(), i));
    }

    public LocalDateTime plusHours(int i) {
        if (i == 0) {
            return this;
        }
        return withLocalMillis(getChronology().hours().add(getLocalMillis(), i));
    }

    public LocalDateTime plusMillis(int i) {
        if (i == 0) {
            return this;
        }
        return withLocalMillis(getChronology().millis().add(getLocalMillis(), i));
    }

    public LocalDateTime plusMinutes(int i) {
        if (i == 0) {
            return this;
        }
        return withLocalMillis(getChronology().minutes().add(getLocalMillis(), i));
    }

    public LocalDateTime plusMonths(int i) {
        if (i == 0) {
            return this;
        }
        return withLocalMillis(getChronology().months().add(getLocalMillis(), i));
    }

    public LocalDateTime plusSeconds(int i) {
        if (i == 0) {
            return this;
        }
        return withLocalMillis(getChronology().seconds().add(getLocalMillis(), i));
    }

    public LocalDateTime plusWeeks(int i) {
        if (i == 0) {
            return this;
        }
        return withLocalMillis(getChronology().weeks().add(getLocalMillis(), i));
    }

    public LocalDateTime plusYears(int i) {
        if (i == 0) {
            return this;
        }
        return withLocalMillis(getChronology().years().add(getLocalMillis(), i));
    }

    public Property property(DateTimeFieldType dateTimeFieldType) {
        if (dateTimeFieldType != null) {
            if (isSupported(dateTimeFieldType)) {
                return new Property(this, dateTimeFieldType.getField(getChronology()));
            }
            throw new IllegalArgumentException("Field '" + dateTimeFieldType + "' is not supported");
        }
        throw new IllegalArgumentException("The DateTimeFieldType must not be null");
    }

    public Property secondOfMinute() {
        return new Property(this, getChronology().secondOfMinute());
    }

    @Override // org.joda.time.ReadablePartial
    public int size() {
        return 4;
    }

    public Date toDate() {
        Date date = new Date(getYear() - 1900, getMonthOfYear() - 1, getDayOfMonth(), getHourOfDay(), getMinuteOfHour(), getSecondOfMinute());
        date.setTime(date.getTime() + getMillisOfSecond());
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(date, TimeZone.getDefault());
    }

    public DateTime toDateTime() {
        return toDateTime((DateTimeZone) null);
    }

    public LocalDate toLocalDate() {
        return new LocalDate(getLocalMillis(), getChronology());
    }

    public LocalTime toLocalTime() {
        return new LocalTime(getLocalMillis(), getChronology());
    }

    @ToString
    public String toString() {
        return ISODateTimeFormat.Wwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwww(this);
    }

    public Property weekOfWeekyear() {
        return new Property(this, getChronology().weekOfWeekyear());
    }

    public Property weekyear() {
        return new Property(this, getChronology().weekyear());
    }

    public LocalDateTime withCenturyOfEra(int i) {
        return withLocalMillis(getChronology().centuryOfEra().set(getLocalMillis(), i));
    }

    public LocalDateTime withDate(int i, int i2, int i3) {
        Chronology chronology = getChronology();
        return withLocalMillis(chronology.dayOfMonth().set(chronology.monthOfYear().set(chronology.year().set(getLocalMillis(), i), i2), i3));
    }

    public LocalDateTime withDayOfMonth(int i) {
        return withLocalMillis(getChronology().dayOfMonth().set(getLocalMillis(), i));
    }

    public LocalDateTime withDayOfWeek(int i) {
        return withLocalMillis(getChronology().dayOfWeek().set(getLocalMillis(), i));
    }

    public LocalDateTime withDayOfYear(int i) {
        return withLocalMillis(getChronology().dayOfYear().set(getLocalMillis(), i));
    }

    public LocalDateTime withDurationAdded(ReadableDuration readableDuration, int i) {
        if (readableDuration != null && i != 0) {
            return withLocalMillis(getChronology().add(getLocalMillis(), readableDuration.getMillis(), i));
        }
        return this;
    }

    public LocalDateTime withEra(int i) {
        return withLocalMillis(getChronology().era().set(getLocalMillis(), i));
    }

    public LocalDateTime withField(DateTimeFieldType dateTimeFieldType, int i) {
        if (dateTimeFieldType != null) {
            return withLocalMillis(dateTimeFieldType.getField(getChronology()).set(getLocalMillis(), i));
        }
        throw new IllegalArgumentException("Field must not be null");
    }

    public LocalDateTime withFieldAdded(DurationFieldType durationFieldType, int i) {
        if (durationFieldType != null) {
            if (i == 0) {
                return this;
            }
            return withLocalMillis(durationFieldType.getField(getChronology()).add(getLocalMillis(), i));
        }
        throw new IllegalArgumentException("Field must not be null");
    }

    public LocalDateTime withFields(ReadablePartial readablePartial) {
        if (readablePartial == null) {
            return this;
        }
        return withLocalMillis(getChronology().set(readablePartial, getLocalMillis()));
    }

    public LocalDateTime withHourOfDay(int i) {
        return withLocalMillis(getChronology().hourOfDay().set(getLocalMillis(), i));
    }

    public LocalDateTime withLocalMillis(long j) {
        if (j == getLocalMillis()) {
            return this;
        }
        return new LocalDateTime(j, getChronology());
    }

    public LocalDateTime withMillisOfDay(int i) {
        return withLocalMillis(getChronology().millisOfDay().set(getLocalMillis(), i));
    }

    public LocalDateTime withMillisOfSecond(int i) {
        return withLocalMillis(getChronology().millisOfSecond().set(getLocalMillis(), i));
    }

    public LocalDateTime withMinuteOfHour(int i) {
        return withLocalMillis(getChronology().minuteOfHour().set(getLocalMillis(), i));
    }

    public LocalDateTime withMonthOfYear(int i) {
        return withLocalMillis(getChronology().monthOfYear().set(getLocalMillis(), i));
    }

    public LocalDateTime withPeriodAdded(ReadablePeriod readablePeriod, int i) {
        if (readablePeriod != null && i != 0) {
            return withLocalMillis(getChronology().add(readablePeriod, getLocalMillis(), i));
        }
        return this;
    }

    public LocalDateTime withSecondOfMinute(int i) {
        return withLocalMillis(getChronology().secondOfMinute().set(getLocalMillis(), i));
    }

    public LocalDateTime withTime(int i, int i2, int i3, int i4) {
        Chronology chronology = getChronology();
        return withLocalMillis(chronology.millisOfSecond().set(chronology.secondOfMinute().set(chronology.minuteOfHour().set(chronology.hourOfDay().set(getLocalMillis(), i), i2), i3), i4));
    }

    public LocalDateTime withWeekOfWeekyear(int i) {
        return withLocalMillis(getChronology().weekOfWeekyear().set(getLocalMillis(), i));
    }

    public LocalDateTime withWeekyear(int i) {
        return withLocalMillis(getChronology().weekyear().set(getLocalMillis(), i));
    }

    public LocalDateTime withYear(int i) {
        return withLocalMillis(getChronology().year().set(getLocalMillis(), i));
    }

    public LocalDateTime withYearOfCentury(int i) {
        return withLocalMillis(getChronology().yearOfCentury().set(getLocalMillis(), i));
    }

    public LocalDateTime withYearOfEra(int i) {
        return withLocalMillis(getChronology().yearOfEra().set(getLocalMillis(), i));
    }

    public Property year() {
        return new Property(this, getChronology().year());
    }

    public Property yearOfCentury() {
        return new Property(this, getChronology().yearOfCentury());
    }

    public Property yearOfEra() {
        return new Property(this, getChronology().yearOfEra());
    }

    public LocalDateTime(DateTimeZone dateTimeZone) {
        this(DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), ISOChronology.getInstance(dateTimeZone));
    }

    public static LocalDateTime now(DateTimeZone dateTimeZone) {
        if (dateTimeZone != null) {
            return new LocalDateTime(dateTimeZone);
        }
        throw new NullPointerException("Zone must not be null");
    }

    public static LocalDateTime parse(String str, DateTimeFormatter dateTimeFormatter) {
        return dateTimeFormatter.Wwwwwwwwwwwwwwwwwwwwwwwwwww(str);
    }

    @Override // org.joda.time.base.AbstractPartial, java.lang.Comparable
    public int compareTo(ReadablePartial readablePartial) {
        if (this == readablePartial) {
            return 0;
        }
        if (readablePartial instanceof LocalDateTime) {
            LocalDateTime localDateTime = (LocalDateTime) readablePartial;
            if (this.iChronology.equals(localDateTime.iChronology)) {
                long j = this.iLocalMillis;
                long j2 = localDateTime.iLocalMillis;
                if (j < j2) {
                    return -1;
                }
                return j == j2 ? 0 : 1;
            }
        }
        return super.compareTo(readablePartial);
    }

    public boolean isSupported(DurationFieldType durationFieldType) {
        if (durationFieldType == null) {
            return false;
        }
        return durationFieldType.getField(getChronology()).isSupported();
    }

    public LocalDateTime minus(ReadablePeriod readablePeriod) {
        return withPeriodAdded(readablePeriod, -1);
    }

    public LocalDateTime plus(ReadablePeriod readablePeriod) {
        return withPeriodAdded(readablePeriod, 1);
    }

    public DateTime toDateTime(DateTimeZone dateTimeZone) {
        return new DateTime(getYear(), getMonthOfYear(), getDayOfMonth(), getHourOfDay(), getMinuteOfHour(), getSecondOfMinute(), getMillisOfSecond(), this.iChronology.withZone(DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwww(dateTimeZone)));
    }

    public String toString(String str) {
        if (str == null) {
            return toString();
        }
        return DateTimeFormat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str).Wwwwwwwwwwwwwwwwwwwwwww(this);
    }

    public LocalDateTime(Chronology chronology) {
        this(DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), chronology);
    }

    public LocalDateTime(long j) {
        this(j, ISOChronology.getInstance());
    }

    public static LocalDateTime now(Chronology chronology) {
        if (chronology != null) {
            return new LocalDateTime(chronology);
        }
        throw new NullPointerException("Chronology must not be null");
    }

    public String toString(String str, Locale locale) throws IllegalArgumentException {
        if (str == null) {
            return toString();
        }
        return DateTimeFormat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str).Wwwwwwwwwwwww(locale).Wwwwwwwwwwwwwwwwwwwwwww(this);
    }

    public LocalDateTime(long j, DateTimeZone dateTimeZone) {
        this(j, ISOChronology.getInstance(dateTimeZone));
    }

    public LocalDateTime(long j, Chronology chronology) {
        Chronology Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(chronology);
        this.iLocalMillis = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getZone().getMillisKeepLocal(DateTimeZone.UTC, j);
        this.iChronology = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.withUTC();
    }

    public Date toDate(TimeZone timeZone) {
        Calendar calendar = Calendar.getInstance(timeZone);
        calendar.clear();
        calendar.set(getYear(), getMonthOfYear() - 1, getDayOfMonth(), getHourOfDay(), getMinuteOfHour(), getSecondOfMinute());
        Date time = calendar.getTime();
        time.setTime(time.getTime() + getMillisOfSecond());
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(time, timeZone);
    }

    public LocalDateTime(Object obj) {
        this(obj, (Chronology) null);
    }

    public LocalDateTime(Object obj, DateTimeZone dateTimeZone) {
        PartialConverter Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ConverterManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obj);
        Chronology Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obj, dateTimeZone));
        Chronology withUTC = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.withUTC();
        this.iChronology = withUTC;
        int[] Wwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwww(this, obj, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, ISODateTimeFormat.Wwwwwwwwwwwwwwwwwwwwwww());
        this.iLocalMillis = withUTC.getDateTimeMillis(Wwwwwwwwwwwwwwwwwwwwwwww2[0], Wwwwwwwwwwwwwwwwwwwwwwww2[1], Wwwwwwwwwwwwwwwwwwwwwwww2[2], Wwwwwwwwwwwwwwwwwwwwwwww2[3]);
    }

    public LocalDateTime(Object obj, Chronology chronology) {
        PartialConverter Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ConverterManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obj);
        Chronology Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obj, chronology));
        Chronology withUTC = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.withUTC();
        this.iChronology = withUTC;
        int[] Wwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwww(this, obj, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, ISODateTimeFormat.Wwwwwwwwwwwwwwwwwwwwwww());
        this.iLocalMillis = withUTC.getDateTimeMillis(Wwwwwwwwwwwwwwwwwwwwwwww2[0], Wwwwwwwwwwwwwwwwwwwwwwww2[1], Wwwwwwwwwwwwwwwwwwwwwwww2[2], Wwwwwwwwwwwwwwwwwwwwwwww2[3]);
    }

    public LocalDateTime(int i, int i2, int i3, int i4, int i5) {
        this(i, i2, i3, i4, i5, 0, 0, ISOChronology.getInstanceUTC());
    }

    public LocalDateTime(int i, int i2, int i3, int i4, int i5, int i6) {
        this(i, i2, i3, i4, i5, i6, 0, ISOChronology.getInstanceUTC());
    }

    public LocalDateTime(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        this(i, i2, i3, i4, i5, i6, i7, ISOChronology.getInstanceUTC());
    }

    public LocalDateTime(int i, int i2, int i3, int i4, int i5, int i6, int i7, Chronology chronology) {
        Chronology withUTC = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(chronology).withUTC();
        long dateTimeMillis = withUTC.getDateTimeMillis(i, i2, i3, i4, i5, i6, i7);
        this.iChronology = withUTC;
        this.iLocalMillis = dateTimeMillis;
    }
}
