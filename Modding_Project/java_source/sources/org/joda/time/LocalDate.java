package org.joda.time;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
import java.util.TimeZone;
import org.joda.convert.FromString;
import org.joda.convert.ToString;
import org.joda.time.base.BaseLocal;
import org.joda.time.chrono.ISOChronology;
import org.joda.time.convert.ConverterManager;
import org.joda.time.convert.PartialConverter;
import org.joda.time.field.AbstractReadableInstantFieldProperty;
import org.joda.time.field.FieldUtils;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;
import org.joda.time.format.ISODateTimeFormat;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public final class LocalDate extends BaseLocal implements ReadablePartial, Serializable {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Set<DurationFieldType> f13613Wwwwwwwwwwwwwwwwwwwwwwww;
    private static final long serialVersionUID = -8775358157899L;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public transient int f13614Wwwwwwwwwwwwwwwwwwwwwwwww;
    private final Chronology iChronology;
    private final long iLocalMillis;

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static final class Property extends AbstractReadableInstantFieldProperty {
        private static final long serialVersionUID = -3193829732634L;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public transient DateTimeField f13615Wwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public transient LocalDate f13616Wwwwwwwwwwwwwwwwwwwwwwwww;

        public Property(LocalDate localDate, DateTimeField dateTimeField) {
            this.f13616Wwwwwwwwwwwwwwwwwwwwwwwww = localDate;
            this.f13615Wwwwwwwwwwwwwwwwwwwwwwww = dateTimeField;
        }

        private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            this.f13616Wwwwwwwwwwwwwwwwwwwwwwwww = (LocalDate) objectInputStream.readObject();
            this.f13615Wwwwwwwwwwwwwwwwwwwwwwww = ((DateTimeFieldType) objectInputStream.readObject()).getField(this.f13616Wwwwwwwwwwwwwwwwwwwwwwwww.getChronology());
        }

        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.writeObject(this.f13616Wwwwwwwwwwwwwwwwwwwwwwwww);
            objectOutputStream.writeObject(this.f13615Wwwwwwwwwwwwwwwwwwwwwwww.getType());
        }

        public LocalDate addToCopy(int i) {
            LocalDate localDate = this.f13616Wwwwwwwwwwwwwwwwwwwwwwwww;
            return localDate.withLocalMillis(this.f13615Wwwwwwwwwwwwwwwwwwwwwwww.add(localDate.getLocalMillis(), i));
        }

        public LocalDate addWrapFieldToCopy(int i) {
            LocalDate localDate = this.f13616Wwwwwwwwwwwwwwwwwwwwwwwww;
            return localDate.withLocalMillis(this.f13615Wwwwwwwwwwwwwwwwwwwwwwww.addWrapField(localDate.getLocalMillis(), i));
        }

        @Override // org.joda.time.field.AbstractReadableInstantFieldProperty
        public Chronology getChronology() {
            return this.f13616Wwwwwwwwwwwwwwwwwwwwwwwww.getChronology();
        }

        @Override // org.joda.time.field.AbstractReadableInstantFieldProperty
        public DateTimeField getField() {
            return this.f13615Wwwwwwwwwwwwwwwwwwwwwwww;
        }

        public LocalDate getLocalDate() {
            return this.f13616Wwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Override // org.joda.time.field.AbstractReadableInstantFieldProperty
        public long getMillis() {
            return this.f13616Wwwwwwwwwwwwwwwwwwwwwwwww.getLocalMillis();
        }

        public LocalDate roundCeilingCopy() {
            LocalDate localDate = this.f13616Wwwwwwwwwwwwwwwwwwwwwwwww;
            return localDate.withLocalMillis(this.f13615Wwwwwwwwwwwwwwwwwwwwwwww.roundCeiling(localDate.getLocalMillis()));
        }

        public LocalDate roundFloorCopy() {
            LocalDate localDate = this.f13616Wwwwwwwwwwwwwwwwwwwwwwwww;
            return localDate.withLocalMillis(this.f13615Wwwwwwwwwwwwwwwwwwwwwwww.roundFloor(localDate.getLocalMillis()));
        }

        public LocalDate roundHalfCeilingCopy() {
            LocalDate localDate = this.f13616Wwwwwwwwwwwwwwwwwwwwwwwww;
            return localDate.withLocalMillis(this.f13615Wwwwwwwwwwwwwwwwwwwwwwww.roundHalfCeiling(localDate.getLocalMillis()));
        }

        public LocalDate roundHalfEvenCopy() {
            LocalDate localDate = this.f13616Wwwwwwwwwwwwwwwwwwwwwwwww;
            return localDate.withLocalMillis(this.f13615Wwwwwwwwwwwwwwwwwwwwwwww.roundHalfEven(localDate.getLocalMillis()));
        }

        public LocalDate roundHalfFloorCopy() {
            LocalDate localDate = this.f13616Wwwwwwwwwwwwwwwwwwwwwwwww;
            return localDate.withLocalMillis(this.f13615Wwwwwwwwwwwwwwwwwwwwwwww.roundHalfFloor(localDate.getLocalMillis()));
        }

        public LocalDate setCopy(int i) {
            LocalDate localDate = this.f13616Wwwwwwwwwwwwwwwwwwwwwwwww;
            return localDate.withLocalMillis(this.f13615Wwwwwwwwwwwwwwwwwwwwwwww.set(localDate.getLocalMillis(), i));
        }

        public LocalDate withMaximumValue() {
            return setCopy(getMaximumValue());
        }

        public LocalDate withMinimumValue() {
            return setCopy(getMinimumValue());
        }

        public LocalDate setCopy(String str, Locale locale) {
            LocalDate localDate = this.f13616Wwwwwwwwwwwwwwwwwwwwwwwww;
            return localDate.withLocalMillis(this.f13615Wwwwwwwwwwwwwwwwwwwwwwww.set(localDate.getLocalMillis(), str, locale));
        }

        public LocalDate setCopy(String str) {
            return setCopy(str, null);
        }
    }

    static {
        HashSet hashSet = new HashSet();
        f13613Wwwwwwwwwwwwwwwwwwwwwwww = hashSet;
        hashSet.add(DurationFieldType.days());
        hashSet.add(DurationFieldType.weeks());
        hashSet.add(DurationFieldType.months());
        hashSet.add(DurationFieldType.weekyears());
        hashSet.add(DurationFieldType.years());
        hashSet.add(DurationFieldType.centuries());
        hashSet.add(DurationFieldType.eras());
    }

    public LocalDate() {
        this(DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), ISOChronology.getInstance());
    }

    public static LocalDate fromCalendarFields(Calendar calendar) {
        if (calendar != null) {
            int i = calendar.get(0);
            int i2 = calendar.get(1);
            if (i != 1) {
                i2 = 1 - i2;
            }
            return new LocalDate(i2, calendar.get(2) + 1, calendar.get(5));
        }
        throw new IllegalArgumentException("The calendar must not be null");
    }

    public static LocalDate fromDateFields(Date date) {
        if (date != null) {
            if (date.getTime() < 0) {
                GregorianCalendar gregorianCalendar = new GregorianCalendar();
                gregorianCalendar.setTime(date);
                return fromCalendarFields(gregorianCalendar);
            }
            return new LocalDate(date.getYear() + 1900, date.getMonth() + 1, date.getDate());
        }
        throw new IllegalArgumentException("The date must not be null");
    }

    public static LocalDate now() {
        return new LocalDate();
    }

    @FromString
    public static LocalDate parse(String str) {
        return parse(str, ISODateTimeFormat.Wwwwwwwwwwwwwwwwwwwwww());
    }

    private Object readResolve() {
        Chronology chronology = this.iChronology;
        if (chronology == null) {
            return new LocalDate(this.iLocalMillis, ISOChronology.getInstanceUTC());
        }
        if (!DateTimeZone.UTC.equals(chronology.getZone())) {
            return new LocalDate(this.iLocalMillis, this.iChronology.withUTC());
        }
        return this;
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
        if (obj instanceof LocalDate) {
            LocalDate localDate = (LocalDate) obj;
            if (this.iChronology.equals(localDate.iChronology)) {
                if (this.iLocalMillis == localDate.iLocalMillis) {
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
            if (isSupported(dateTimeFieldType)) {
                return dateTimeFieldType.getField(getChronology()).get(getLocalMillis());
            }
            throw new IllegalArgumentException("Field '" + dateTimeFieldType + "' is not supported");
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
                if (i == 2) {
                    return chronology.dayOfMonth();
                }
                throw new IndexOutOfBoundsException("Invalid index: " + i);
            }
            return chronology.monthOfYear();
        }
        return chronology.year();
    }

    @Override // org.joda.time.base.BaseLocal
    public long getLocalMillis() {
        return this.iLocalMillis;
    }

    public int getMonthOfYear() {
        return getChronology().monthOfYear().get(getLocalMillis());
    }

    @Override // org.joda.time.ReadablePartial
    public int getValue(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    return getChronology().dayOfMonth().get(getLocalMillis());
                }
                throw new IndexOutOfBoundsException("Invalid index: " + i);
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

    @Override // org.joda.time.base.AbstractPartial
    public int hashCode() {
        int i = this.f13614Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (i == 0) {
            int hashCode = super.hashCode();
            this.f13614Wwwwwwwwwwwwwwwwwwwwwwwww = hashCode;
            return hashCode;
        }
        return i;
    }

    @Override // org.joda.time.base.AbstractPartial, org.joda.time.ReadablePartial
    public boolean isSupported(DateTimeFieldType dateTimeFieldType) {
        if (dateTimeFieldType == null) {
            return false;
        }
        DurationFieldType durationType = dateTimeFieldType.getDurationType();
        if (f13613Wwwwwwwwwwwwwwwwwwwwwwww.contains(durationType) || durationType.getField(getChronology()).getUnitMillis() >= getChronology().days().getUnitMillis()) {
            return dateTimeFieldType.getField(getChronology()).isSupported();
        }
        return false;
    }

    public LocalDate minus(ReadablePeriod readablePeriod) {
        return withPeriodAdded(readablePeriod, -1);
    }

    public LocalDate minusDays(int i) {
        if (i == 0) {
            return this;
        }
        return withLocalMillis(getChronology().days().subtract(getLocalMillis(), i));
    }

    public LocalDate minusMonths(int i) {
        if (i == 0) {
            return this;
        }
        return withLocalMillis(getChronology().months().subtract(getLocalMillis(), i));
    }

    public LocalDate minusWeeks(int i) {
        if (i == 0) {
            return this;
        }
        return withLocalMillis(getChronology().weeks().subtract(getLocalMillis(), i));
    }

    public LocalDate minusYears(int i) {
        if (i == 0) {
            return this;
        }
        return withLocalMillis(getChronology().years().subtract(getLocalMillis(), i));
    }

    public Property monthOfYear() {
        return new Property(this, getChronology().monthOfYear());
    }

    public LocalDate plus(ReadablePeriod readablePeriod) {
        return withPeriodAdded(readablePeriod, 1);
    }

    public LocalDate plusDays(int i) {
        if (i == 0) {
            return this;
        }
        return withLocalMillis(getChronology().days().add(getLocalMillis(), i));
    }

    public LocalDate plusMonths(int i) {
        if (i == 0) {
            return this;
        }
        return withLocalMillis(getChronology().months().add(getLocalMillis(), i));
    }

    public LocalDate plusWeeks(int i) {
        if (i == 0) {
            return this;
        }
        return withLocalMillis(getChronology().weeks().add(getLocalMillis(), i));
    }

    public LocalDate plusYears(int i) {
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

    @Override // org.joda.time.ReadablePartial
    public int size() {
        return 3;
    }

    public Date toDate() {
        int dayOfMonth = getDayOfMonth();
        Date date = new Date(getYear() - 1900, getMonthOfYear() - 1, dayOfMonth);
        LocalDate fromDateFields = fromDateFields(date);
        if (fromDateFields.isBefore(this)) {
            while (!fromDateFields.equals(this)) {
                date.setTime(date.getTime() + 3600000);
                fromDateFields = fromDateFields(date);
            }
            while (date.getDate() == dayOfMonth) {
                date.setTime(date.getTime() - 1000);
            }
            date.setTime(date.getTime() + 1000);
            return date;
        }
        if (fromDateFields.equals(this)) {
            Date date2 = new Date(date.getTime() - TimeZone.getDefault().getDSTSavings());
            if (date2.getDate() == dayOfMonth) {
                return date2;
            }
        }
        return date;
    }

    @Deprecated
    public DateMidnight toDateMidnight() {
        return toDateMidnight(null);
    }

    public DateTime toDateTime(LocalTime localTime) {
        return toDateTime(localTime, null);
    }

    public DateTime toDateTimeAtCurrentTime() {
        return toDateTimeAtCurrentTime(null);
    }

    @Deprecated
    public DateTime toDateTimeAtMidnight() {
        return toDateTimeAtMidnight(null);
    }

    public DateTime toDateTimeAtStartOfDay() {
        return toDateTimeAtStartOfDay(null);
    }

    public Interval toInterval() {
        return toInterval(null);
    }

    public LocalDateTime toLocalDateTime(LocalTime localTime) {
        if (localTime != null) {
            if (getChronology() == localTime.getChronology()) {
                return new LocalDateTime(getLocalMillis() + localTime.getLocalMillis(), getChronology());
            }
            throw new IllegalArgumentException("The chronology of the time does not match");
        }
        throw new IllegalArgumentException("The time must not be null");
    }

    @ToString
    public String toString() {
        return ISODateTimeFormat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwww(this);
    }

    public Property weekOfWeekyear() {
        return new Property(this, getChronology().weekOfWeekyear());
    }

    public Property weekyear() {
        return new Property(this, getChronology().weekyear());
    }

    public LocalDate withCenturyOfEra(int i) {
        return withLocalMillis(getChronology().centuryOfEra().set(getLocalMillis(), i));
    }

    public LocalDate withDayOfMonth(int i) {
        return withLocalMillis(getChronology().dayOfMonth().set(getLocalMillis(), i));
    }

    public LocalDate withDayOfWeek(int i) {
        return withLocalMillis(getChronology().dayOfWeek().set(getLocalMillis(), i));
    }

    public LocalDate withDayOfYear(int i) {
        return withLocalMillis(getChronology().dayOfYear().set(getLocalMillis(), i));
    }

    public LocalDate withEra(int i) {
        return withLocalMillis(getChronology().era().set(getLocalMillis(), i));
    }

    public LocalDate withField(DateTimeFieldType dateTimeFieldType, int i) {
        if (dateTimeFieldType != null) {
            if (isSupported(dateTimeFieldType)) {
                return withLocalMillis(dateTimeFieldType.getField(getChronology()).set(getLocalMillis(), i));
            }
            throw new IllegalArgumentException("Field '" + dateTimeFieldType + "' is not supported");
        }
        throw new IllegalArgumentException("Field must not be null");
    }

    public LocalDate withFieldAdded(DurationFieldType durationFieldType, int i) {
        if (durationFieldType != null) {
            if (isSupported(durationFieldType)) {
                if (i == 0) {
                    return this;
                }
                return withLocalMillis(durationFieldType.getField(getChronology()).add(getLocalMillis(), i));
            }
            throw new IllegalArgumentException("Field '" + durationFieldType + "' is not supported");
        }
        throw new IllegalArgumentException("Field must not be null");
    }

    public LocalDate withFields(ReadablePartial readablePartial) {
        if (readablePartial == null) {
            return this;
        }
        return withLocalMillis(getChronology().set(readablePartial, getLocalMillis()));
    }

    public LocalDate withLocalMillis(long j) {
        long roundFloor = this.iChronology.dayOfMonth().roundFloor(j);
        if (roundFloor == getLocalMillis()) {
            return this;
        }
        return new LocalDate(roundFloor, getChronology());
    }

    public LocalDate withMonthOfYear(int i) {
        return withLocalMillis(getChronology().monthOfYear().set(getLocalMillis(), i));
    }

    public LocalDate withPeriodAdded(ReadablePeriod readablePeriod, int i) {
        if (readablePeriod != null && i != 0) {
            long localMillis = getLocalMillis();
            Chronology chronology = getChronology();
            for (int i2 = 0; i2 < readablePeriod.size(); i2++) {
                long Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = FieldUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwww(readablePeriod.getValue(i2), i);
                DurationFieldType fieldType = readablePeriod.getFieldType(i2);
                if (isSupported(fieldType)) {
                    localMillis = fieldType.getField(chronology).add(localMillis, Wwwwwwwwwwwwwwwwwwwwwwwwwww2);
                }
            }
            return withLocalMillis(localMillis);
        }
        return this;
    }

    public LocalDate withWeekOfWeekyear(int i) {
        return withLocalMillis(getChronology().weekOfWeekyear().set(getLocalMillis(), i));
    }

    public LocalDate withWeekyear(int i) {
        return withLocalMillis(getChronology().weekyear().set(getLocalMillis(), i));
    }

    public LocalDate withYear(int i) {
        return withLocalMillis(getChronology().year().set(getLocalMillis(), i));
    }

    public LocalDate withYearOfCentury(int i) {
        return withLocalMillis(getChronology().yearOfCentury().set(getLocalMillis(), i));
    }

    public LocalDate withYearOfEra(int i) {
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

    public LocalDate(DateTimeZone dateTimeZone) {
        this(DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), ISOChronology.getInstance(dateTimeZone));
    }

    public static LocalDate now(DateTimeZone dateTimeZone) {
        if (dateTimeZone != null) {
            return new LocalDate(dateTimeZone);
        }
        throw new NullPointerException("Zone must not be null");
    }

    public static LocalDate parse(String str, DateTimeFormatter dateTimeFormatter) {
        return dateTimeFormatter.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
    }

    @Override // org.joda.time.base.AbstractPartial, java.lang.Comparable
    public int compareTo(ReadablePartial readablePartial) {
        if (this == readablePartial) {
            return 0;
        }
        if (readablePartial instanceof LocalDate) {
            LocalDate localDate = (LocalDate) readablePartial;
            if (this.iChronology.equals(localDate.iChronology)) {
                long j = this.iLocalMillis;
                long j2 = localDate.iLocalMillis;
                if (j < j2) {
                    return -1;
                }
                return j == j2 ? 0 : 1;
            }
        }
        return super.compareTo(readablePartial);
    }

    @Deprecated
    public DateMidnight toDateMidnight(DateTimeZone dateTimeZone) {
        return new DateMidnight(getYear(), getMonthOfYear(), getDayOfMonth(), getChronology().withZone(DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwww(dateTimeZone)));
    }

    public DateTime toDateTime(LocalTime localTime, DateTimeZone dateTimeZone) {
        if (localTime == null) {
            return toDateTimeAtCurrentTime(dateTimeZone);
        }
        if (getChronology() == localTime.getChronology()) {
            return new DateTime(getYear(), getMonthOfYear(), getDayOfMonth(), localTime.getHourOfDay(), localTime.getMinuteOfHour(), localTime.getSecondOfMinute(), localTime.getMillisOfSecond(), getChronology().withZone(dateTimeZone));
        }
        throw new IllegalArgumentException("The chronology of the time does not match");
    }

    public DateTime toDateTimeAtCurrentTime(DateTimeZone dateTimeZone) {
        Chronology withZone = getChronology().withZone(DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwww(dateTimeZone));
        return new DateTime(withZone.set(this, DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()), withZone);
    }

    @Deprecated
    public DateTime toDateTimeAtMidnight(DateTimeZone dateTimeZone) {
        return new DateTime(getYear(), getMonthOfYear(), getDayOfMonth(), 0, 0, 0, 0, getChronology().withZone(DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwww(dateTimeZone)));
    }

    public DateTime toDateTimeAtStartOfDay(DateTimeZone dateTimeZone) {
        DateTimeZone Wwwwwwwwwwwwwwwwwwwwww2 = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwww(dateTimeZone);
        Chronology withZone = getChronology().withZone(Wwwwwwwwwwwwwwwwwwwwww2);
        return new DateTime(withZone.dayOfMonth().roundFloor(Wwwwwwwwwwwwwwwwwwwwww2.convertLocalToUTC(getLocalMillis() + 21600000, false)), withZone).withEarlierOffsetAtOverlap();
    }

    public Interval toInterval(DateTimeZone dateTimeZone) {
        DateTimeZone Wwwwwwwwwwwwwwwwwwwwww2 = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwww(dateTimeZone);
        return new Interval(toDateTimeAtStartOfDay(Wwwwwwwwwwwwwwwwwwwwww2), plusDays(1).toDateTimeAtStartOfDay(Wwwwwwwwwwwwwwwwwwwwww2));
    }

    public String toString(String str) {
        if (str == null) {
            return toString();
        }
        return DateTimeFormat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str).Wwwwwwwwwwwwwwwwwwwwwww(this);
    }

    public LocalDate(Chronology chronology) {
        this(DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), chronology);
    }

    public LocalDate(long j) {
        this(j, ISOChronology.getInstance());
    }

    public static LocalDate now(Chronology chronology) {
        if (chronology != null) {
            return new LocalDate(chronology);
        }
        throw new NullPointerException("Chronology must not be null");
    }

    public String toString(String str, Locale locale) throws IllegalArgumentException {
        if (str == null) {
            return toString();
        }
        return DateTimeFormat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str).Wwwwwwwwwwwww(locale).Wwwwwwwwwwwwwwwwwwwwwww(this);
    }

    public LocalDate(long j, DateTimeZone dateTimeZone) {
        this(j, ISOChronology.getInstance(dateTimeZone));
    }

    public LocalDate(long j, Chronology chronology) {
        Chronology Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(chronology);
        long millisKeepLocal = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getZone().getMillisKeepLocal(DateTimeZone.UTC, j);
        Chronology withUTC = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.withUTC();
        this.iLocalMillis = withUTC.dayOfMonth().roundFloor(millisKeepLocal);
        this.iChronology = withUTC;
    }

    public boolean isSupported(DurationFieldType durationFieldType) {
        if (durationFieldType == null) {
            return false;
        }
        DurationField field = durationFieldType.getField(getChronology());
        if (f13613Wwwwwwwwwwwwwwwwwwwwwwww.contains(durationFieldType) || field.getUnitMillis() >= getChronology().days().getUnitMillis()) {
            return field.isSupported();
        }
        return false;
    }

    public LocalDate(Object obj) {
        this(obj, (Chronology) null);
    }

    public LocalDate(Object obj, DateTimeZone dateTimeZone) {
        PartialConverter Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ConverterManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obj);
        Chronology Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obj, dateTimeZone));
        Chronology withUTC = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.withUTC();
        this.iChronology = withUTC;
        int[] Wwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwww(this, obj, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, ISODateTimeFormat.Wwwwwwwwwwwwwwwwwwwwww());
        this.iLocalMillis = withUTC.getDateTimeMillis(Wwwwwwwwwwwwwwwwwwwwwwww2[0], Wwwwwwwwwwwwwwwwwwwwwwww2[1], Wwwwwwwwwwwwwwwwwwwwwwww2[2], 0);
    }

    public LocalDate(Object obj, Chronology chronology) {
        PartialConverter Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ConverterManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obj);
        Chronology Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obj, chronology));
        Chronology withUTC = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.withUTC();
        this.iChronology = withUTC;
        int[] Wwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwww(this, obj, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, ISODateTimeFormat.Wwwwwwwwwwwwwwwwwwwwww());
        this.iLocalMillis = withUTC.getDateTimeMillis(Wwwwwwwwwwwwwwwwwwwwwwww2[0], Wwwwwwwwwwwwwwwwwwwwwwww2[1], Wwwwwwwwwwwwwwwwwwwwwwww2[2], 0);
    }

    public LocalDate(int i, int i2, int i3) {
        this(i, i2, i3, ISOChronology.getInstanceUTC());
    }

    public LocalDate(int i, int i2, int i3, Chronology chronology) {
        Chronology withUTC = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(chronology).withUTC();
        long dateTimeMillis = withUTC.getDateTimeMillis(i, i2, i3, 0);
        this.iChronology = withUTC;
        this.iLocalMillis = dateTimeMillis;
    }
}
