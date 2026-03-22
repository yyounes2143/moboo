package org.joda.time;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Calendar;
import java.util.Date;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
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
public final class LocalTime extends BaseLocal implements ReadablePartial, Serializable {
    public static final LocalTime MIDNIGHT = new LocalTime(0, 0, 0, 0);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Set<DurationFieldType> f13619Wwwwwwwwwwwwwwwwwwwwwwwww;
    private static final long serialVersionUID = -12873158713873L;
    private final Chronology iChronology;
    private final long iLocalMillis;

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static final class Property extends AbstractReadableInstantFieldProperty {
        private static final long serialVersionUID = -325842547277223L;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public transient DateTimeField f13620Wwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public transient LocalTime f13621Wwwwwwwwwwwwwwwwwwwwwwwww;

        public Property(LocalTime localTime, DateTimeField dateTimeField) {
            this.f13621Wwwwwwwwwwwwwwwwwwwwwwwww = localTime;
            this.f13620Wwwwwwwwwwwwwwwwwwwwwwww = dateTimeField;
        }

        private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            this.f13621Wwwwwwwwwwwwwwwwwwwwwwwww = (LocalTime) objectInputStream.readObject();
            this.f13620Wwwwwwwwwwwwwwwwwwwwwwww = ((DateTimeFieldType) objectInputStream.readObject()).getField(this.f13621Wwwwwwwwwwwwwwwwwwwwwwwww.getChronology());
        }

        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.writeObject(this.f13621Wwwwwwwwwwwwwwwwwwwwwwwww);
            objectOutputStream.writeObject(this.f13620Wwwwwwwwwwwwwwwwwwwwwwww.getType());
        }

        public LocalTime addCopy(int i) {
            LocalTime localTime = this.f13621Wwwwwwwwwwwwwwwwwwwwwwwww;
            return localTime.withLocalMillis(this.f13620Wwwwwwwwwwwwwwwwwwwwwwww.add(localTime.getLocalMillis(), i));
        }

        public LocalTime addNoWrapToCopy(int i) {
            long add = this.f13620Wwwwwwwwwwwwwwwwwwwwwwww.add(this.f13621Wwwwwwwwwwwwwwwwwwwwwwwww.getLocalMillis(), i);
            if (this.f13621Wwwwwwwwwwwwwwwwwwwwwwwww.getChronology().millisOfDay().get(add) == add) {
                return this.f13621Wwwwwwwwwwwwwwwwwwwwwwwww.withLocalMillis(add);
            }
            throw new IllegalArgumentException("The addition exceeded the boundaries of LocalTime");
        }

        public LocalTime addWrapFieldToCopy(int i) {
            LocalTime localTime = this.f13621Wwwwwwwwwwwwwwwwwwwwwwwww;
            return localTime.withLocalMillis(this.f13620Wwwwwwwwwwwwwwwwwwwwwwww.addWrapField(localTime.getLocalMillis(), i));
        }

        @Override // org.joda.time.field.AbstractReadableInstantFieldProperty
        public Chronology getChronology() {
            return this.f13621Wwwwwwwwwwwwwwwwwwwwwwwww.getChronology();
        }

        @Override // org.joda.time.field.AbstractReadableInstantFieldProperty
        public DateTimeField getField() {
            return this.f13620Wwwwwwwwwwwwwwwwwwwwwwww;
        }

        public LocalTime getLocalTime() {
            return this.f13621Wwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Override // org.joda.time.field.AbstractReadableInstantFieldProperty
        public long getMillis() {
            return this.f13621Wwwwwwwwwwwwwwwwwwwwwwwww.getLocalMillis();
        }

        public LocalTime roundCeilingCopy() {
            LocalTime localTime = this.f13621Wwwwwwwwwwwwwwwwwwwwwwwww;
            return localTime.withLocalMillis(this.f13620Wwwwwwwwwwwwwwwwwwwwwwww.roundCeiling(localTime.getLocalMillis()));
        }

        public LocalTime roundFloorCopy() {
            LocalTime localTime = this.f13621Wwwwwwwwwwwwwwwwwwwwwwwww;
            return localTime.withLocalMillis(this.f13620Wwwwwwwwwwwwwwwwwwwwwwww.roundFloor(localTime.getLocalMillis()));
        }

        public LocalTime roundHalfCeilingCopy() {
            LocalTime localTime = this.f13621Wwwwwwwwwwwwwwwwwwwwwwwww;
            return localTime.withLocalMillis(this.f13620Wwwwwwwwwwwwwwwwwwwwwwww.roundHalfCeiling(localTime.getLocalMillis()));
        }

        public LocalTime roundHalfEvenCopy() {
            LocalTime localTime = this.f13621Wwwwwwwwwwwwwwwwwwwwwwwww;
            return localTime.withLocalMillis(this.f13620Wwwwwwwwwwwwwwwwwwwwwwww.roundHalfEven(localTime.getLocalMillis()));
        }

        public LocalTime roundHalfFloorCopy() {
            LocalTime localTime = this.f13621Wwwwwwwwwwwwwwwwwwwwwwwww;
            return localTime.withLocalMillis(this.f13620Wwwwwwwwwwwwwwwwwwwwwwww.roundHalfFloor(localTime.getLocalMillis()));
        }

        public LocalTime setCopy(int i) {
            LocalTime localTime = this.f13621Wwwwwwwwwwwwwwwwwwwwwwwww;
            return localTime.withLocalMillis(this.f13620Wwwwwwwwwwwwwwwwwwwwwwww.set(localTime.getLocalMillis(), i));
        }

        public LocalTime withMaximumValue() {
            return setCopy(getMaximumValue());
        }

        public LocalTime withMinimumValue() {
            return setCopy(getMinimumValue());
        }

        public LocalTime addCopy(long j) {
            LocalTime localTime = this.f13621Wwwwwwwwwwwwwwwwwwwwwwwww;
            return localTime.withLocalMillis(this.f13620Wwwwwwwwwwwwwwwwwwwwwwww.add(localTime.getLocalMillis(), j));
        }

        public LocalTime setCopy(String str, Locale locale) {
            LocalTime localTime = this.f13621Wwwwwwwwwwwwwwwwwwwwwwwww;
            return localTime.withLocalMillis(this.f13620Wwwwwwwwwwwwwwwwwwwwwwww.set(localTime.getLocalMillis(), str, locale));
        }

        public LocalTime setCopy(String str) {
            return setCopy(str, null);
        }
    }

    static {
        HashSet hashSet = new HashSet();
        f13619Wwwwwwwwwwwwwwwwwwwwwwwww = hashSet;
        hashSet.add(DurationFieldType.millis());
        hashSet.add(DurationFieldType.seconds());
        hashSet.add(DurationFieldType.minutes());
        hashSet.add(DurationFieldType.hours());
    }

    public LocalTime() {
        this(DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), ISOChronology.getInstance());
    }

    public static LocalTime fromCalendarFields(Calendar calendar) {
        if (calendar != null) {
            return new LocalTime(calendar.get(11), calendar.get(12), calendar.get(13), calendar.get(14));
        }
        throw new IllegalArgumentException("The calendar must not be null");
    }

    public static LocalTime fromDateFields(Date date) {
        if (date != null) {
            return new LocalTime(date.getHours(), date.getMinutes(), date.getSeconds(), (((int) (date.getTime() % 1000)) + 1000) % 1000);
        }
        throw new IllegalArgumentException("The date must not be null");
    }

    public static LocalTime fromMillisOfDay(long j) {
        return fromMillisOfDay(j, null);
    }

    public static LocalTime now() {
        return new LocalTime();
    }

    @FromString
    public static LocalTime parse(String str) {
        return parse(str, ISODateTimeFormat.Wwwwwwwwwwwwwwwwwwwww());
    }

    private Object readResolve() {
        Chronology chronology = this.iChronology;
        if (chronology == null) {
            return new LocalTime(this.iLocalMillis, ISOChronology.getInstanceUTC());
        }
        if (!DateTimeZone.UTC.equals(chronology.getZone())) {
            return new LocalTime(this.iLocalMillis, this.iChronology.withUTC());
        }
        return this;
    }

    @Override // org.joda.time.base.AbstractPartial
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LocalTime) {
            LocalTime localTime = (LocalTime) obj;
            if (this.iChronology.equals(localTime.iChronology)) {
                if (this.iLocalMillis == localTime.iLocalMillis) {
                    return true;
                }
                return false;
            }
        }
        return super.equals(obj);
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

    @Override // org.joda.time.ReadablePartial
    public Chronology getChronology() {
        return this.iChronology;
    }

    @Override // org.joda.time.base.AbstractPartial
    public DateTimeField getField(int i, Chronology chronology) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i == 3) {
                        return chronology.millisOfSecond();
                    }
                    throw new IndexOutOfBoundsException("Invalid index: " + i);
                }
                return chronology.secondOfMinute();
            }
            return chronology.minuteOfHour();
        }
        return chronology.hourOfDay();
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

    public int getSecondOfMinute() {
        return getChronology().secondOfMinute().get(getLocalMillis());
    }

    @Override // org.joda.time.ReadablePartial
    public int getValue(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i == 3) {
                        return getChronology().millisOfSecond().get(getLocalMillis());
                    }
                    throw new IndexOutOfBoundsException("Invalid index: " + i);
                }
                return getChronology().secondOfMinute().get(getLocalMillis());
            }
            return getChronology().minuteOfHour().get(getLocalMillis());
        }
        return getChronology().hourOfDay().get(getLocalMillis());
    }

    public Property hourOfDay() {
        return new Property(this, getChronology().hourOfDay());
    }

    @Override // org.joda.time.base.AbstractPartial, org.joda.time.ReadablePartial
    public boolean isSupported(DateTimeFieldType dateTimeFieldType) {
        if (dateTimeFieldType != null && isSupported(dateTimeFieldType.getDurationType())) {
            DurationFieldType rangeDurationType = dateTimeFieldType.getRangeDurationType();
            return isSupported(rangeDurationType) || rangeDurationType == DurationFieldType.days();
        }
        return false;
    }

    public Property millisOfDay() {
        return new Property(this, getChronology().millisOfDay());
    }

    public Property millisOfSecond() {
        return new Property(this, getChronology().millisOfSecond());
    }

    public LocalTime minus(ReadablePeriod readablePeriod) {
        return withPeriodAdded(readablePeriod, -1);
    }

    public LocalTime minusHours(int i) {
        if (i == 0) {
            return this;
        }
        return withLocalMillis(getChronology().hours().subtract(getLocalMillis(), i));
    }

    public LocalTime minusMillis(int i) {
        if (i == 0) {
            return this;
        }
        return withLocalMillis(getChronology().millis().subtract(getLocalMillis(), i));
    }

    public LocalTime minusMinutes(int i) {
        if (i == 0) {
            return this;
        }
        return withLocalMillis(getChronology().minutes().subtract(getLocalMillis(), i));
    }

    public LocalTime minusSeconds(int i) {
        if (i == 0) {
            return this;
        }
        return withLocalMillis(getChronology().seconds().subtract(getLocalMillis(), i));
    }

    public Property minuteOfHour() {
        return new Property(this, getChronology().minuteOfHour());
    }

    public LocalTime plus(ReadablePeriod readablePeriod) {
        return withPeriodAdded(readablePeriod, 1);
    }

    public LocalTime plusHours(int i) {
        if (i == 0) {
            return this;
        }
        return withLocalMillis(getChronology().hours().add(getLocalMillis(), i));
    }

    public LocalTime plusMillis(int i) {
        if (i == 0) {
            return this;
        }
        return withLocalMillis(getChronology().millis().add(getLocalMillis(), i));
    }

    public LocalTime plusMinutes(int i) {
        if (i == 0) {
            return this;
        }
        return withLocalMillis(getChronology().minutes().add(getLocalMillis(), i));
    }

    public LocalTime plusSeconds(int i) {
        if (i == 0) {
            return this;
        }
        return withLocalMillis(getChronology().seconds().add(getLocalMillis(), i));
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

    public DateTime toDateTimeToday() {
        return toDateTimeToday(null);
    }

    @ToString
    public String toString() {
        return ISODateTimeFormat.Wwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwww(this);
    }

    public LocalTime withField(DateTimeFieldType dateTimeFieldType, int i) {
        if (dateTimeFieldType != null) {
            if (isSupported(dateTimeFieldType)) {
                return withLocalMillis(dateTimeFieldType.getField(getChronology()).set(getLocalMillis(), i));
            }
            throw new IllegalArgumentException("Field '" + dateTimeFieldType + "' is not supported");
        }
        throw new IllegalArgumentException("Field must not be null");
    }

    public LocalTime withFieldAdded(DurationFieldType durationFieldType, int i) {
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

    public LocalTime withFields(ReadablePartial readablePartial) {
        if (readablePartial == null) {
            return this;
        }
        return withLocalMillis(getChronology().set(readablePartial, getLocalMillis()));
    }

    public LocalTime withHourOfDay(int i) {
        return withLocalMillis(getChronology().hourOfDay().set(getLocalMillis(), i));
    }

    public LocalTime withLocalMillis(long j) {
        if (j == getLocalMillis()) {
            return this;
        }
        return new LocalTime(j, getChronology());
    }

    public LocalTime withMillisOfDay(int i) {
        return withLocalMillis(getChronology().millisOfDay().set(getLocalMillis(), i));
    }

    public LocalTime withMillisOfSecond(int i) {
        return withLocalMillis(getChronology().millisOfSecond().set(getLocalMillis(), i));
    }

    public LocalTime withMinuteOfHour(int i) {
        return withLocalMillis(getChronology().minuteOfHour().set(getLocalMillis(), i));
    }

    public LocalTime withPeriodAdded(ReadablePeriod readablePeriod, int i) {
        if (readablePeriod != null && i != 0) {
            return withLocalMillis(getChronology().add(readablePeriod, getLocalMillis(), i));
        }
        return this;
    }

    public LocalTime withSecondOfMinute(int i) {
        return withLocalMillis(getChronology().secondOfMinute().set(getLocalMillis(), i));
    }

    public LocalTime(DateTimeZone dateTimeZone) {
        this(DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), ISOChronology.getInstance(dateTimeZone));
    }

    public static LocalTime fromMillisOfDay(long j, Chronology chronology) {
        return new LocalTime(j, DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(chronology).withUTC());
    }

    public static LocalTime now(DateTimeZone dateTimeZone) {
        if (dateTimeZone != null) {
            return new LocalTime(dateTimeZone);
        }
        throw new NullPointerException("Zone must not be null");
    }

    public static LocalTime parse(String str, DateTimeFormatter dateTimeFormatter) {
        return dateTimeFormatter.Wwwwwwwwwwwwwwwwwwwwwwwwww(str);
    }

    @Override // org.joda.time.base.AbstractPartial, java.lang.Comparable
    public int compareTo(ReadablePartial readablePartial) {
        if (this == readablePartial) {
            return 0;
        }
        if (readablePartial instanceof LocalTime) {
            LocalTime localTime = (LocalTime) readablePartial;
            if (this.iChronology.equals(localTime.iChronology)) {
                long j = this.iLocalMillis;
                long j2 = localTime.iLocalMillis;
                if (j < j2) {
                    return -1;
                }
                return j == j2 ? 0 : 1;
            }
        }
        return super.compareTo(readablePartial);
    }

    public DateTime toDateTimeToday(DateTimeZone dateTimeZone) {
        Chronology withZone = getChronology().withZone(dateTimeZone);
        return new DateTime(withZone.set(this, DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()), withZone);
    }

    public String toString(String str) {
        if (str == null) {
            return toString();
        }
        return DateTimeFormat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str).Wwwwwwwwwwwwwwwwwwwwwww(this);
    }

    public LocalTime(Chronology chronology) {
        this(DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), chronology);
    }

    public LocalTime(long j) {
        this(j, ISOChronology.getInstance());
    }

    public static LocalTime now(Chronology chronology) {
        if (chronology != null) {
            return new LocalTime(chronology);
        }
        throw new NullPointerException("Chronology must not be null");
    }

    public boolean isSupported(DurationFieldType durationFieldType) {
        if (durationFieldType == null) {
            return false;
        }
        DurationField field = durationFieldType.getField(getChronology());
        if (f13619Wwwwwwwwwwwwwwwwwwwwwwwww.contains(durationFieldType) || field.getUnitMillis() < getChronology().days().getUnitMillis()) {
            return field.isSupported();
        }
        return false;
    }

    public String toString(String str, Locale locale) throws IllegalArgumentException {
        if (str == null) {
            return toString();
        }
        return DateTimeFormat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str).Wwwwwwwwwwwww(locale).Wwwwwwwwwwwwwwwwwwwwwww(this);
    }

    public LocalTime(long j, DateTimeZone dateTimeZone) {
        this(j, ISOChronology.getInstance(dateTimeZone));
    }

    public LocalTime(long j, Chronology chronology) {
        Chronology Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(chronology);
        long millisKeepLocal = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getZone().getMillisKeepLocal(DateTimeZone.UTC, j);
        Chronology withUTC = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.withUTC();
        this.iLocalMillis = withUTC.millisOfDay().get(millisKeepLocal);
        this.iChronology = withUTC;
    }

    public LocalTime(Object obj) {
        this(obj, (Chronology) null);
    }

    public LocalTime(Object obj, DateTimeZone dateTimeZone) {
        PartialConverter Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ConverterManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obj);
        Chronology Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obj, dateTimeZone));
        Chronology withUTC = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.withUTC();
        this.iChronology = withUTC;
        int[] Wwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwww(this, obj, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, ISODateTimeFormat.Wwwwwwwwwwwwwwwwwwwww());
        this.iLocalMillis = withUTC.getDateTimeMillis(0L, Wwwwwwwwwwwwwwwwwwwwwwww2[0], Wwwwwwwwwwwwwwwwwwwwwwww2[1], Wwwwwwwwwwwwwwwwwwwwwwww2[2], Wwwwwwwwwwwwwwwwwwwwwwww2[3]);
    }

    public LocalTime(Object obj, Chronology chronology) {
        PartialConverter Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ConverterManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obj);
        Chronology Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obj, chronology));
        Chronology withUTC = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.withUTC();
        this.iChronology = withUTC;
        int[] Wwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwww(this, obj, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, ISODateTimeFormat.Wwwwwwwwwwwwwwwwwwwww());
        this.iLocalMillis = withUTC.getDateTimeMillis(0L, Wwwwwwwwwwwwwwwwwwwwwwww2[0], Wwwwwwwwwwwwwwwwwwwwwwww2[1], Wwwwwwwwwwwwwwwwwwwwwwww2[2], Wwwwwwwwwwwwwwwwwwwwwwww2[3]);
    }

    public LocalTime(int i, int i2) {
        this(i, i2, 0, 0, ISOChronology.getInstanceUTC());
    }

    public LocalTime(int i, int i2, int i3) {
        this(i, i2, i3, 0, ISOChronology.getInstanceUTC());
    }

    public LocalTime(int i, int i2, int i3, int i4) {
        this(i, i2, i3, i4, ISOChronology.getInstanceUTC());
    }

    public LocalTime(int i, int i2, int i3, int i4, Chronology chronology) {
        Chronology withUTC = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(chronology).withUTC();
        long dateTimeMillis = withUTC.getDateTimeMillis(0L, i, i2, i3, i4);
        this.iChronology = withUTC;
        this.iLocalMillis = dateTimeMillis;
    }
}
