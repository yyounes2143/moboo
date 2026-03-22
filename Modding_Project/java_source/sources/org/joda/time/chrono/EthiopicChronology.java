package org.joda.time.chrono;

import com.vungle.ads.internal.signals.SignalManager;
import j$.util.concurrent.ConcurrentHashMap;
import org.joda.time.Chronology;
import org.joda.time.DateTime;
import org.joda.time.DateTimeField;
import org.joda.time.DateTimeZone;
import org.joda.time.chrono.AssembledChronology;
import org.joda.time.field.SkipDateTimeField;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public final class EthiopicChronology extends BasicFixedMonthChronology {
    public static final int EE = 1;
    private static final long serialVersionUID = -5972804258688333942L;
    public static final DateTimeField Illlllllllllllllllllll = new BasicSingleEraDateTimeField("EE");
    public static final ConcurrentHashMap<DateTimeZone, EthiopicChronology[]> Illllllllllllllllllll = new ConcurrentHashMap<>();
    public static final EthiopicChronology Illlllllllllllllllll = getInstance(DateTimeZone.UTC);

    public EthiopicChronology(Chronology chronology, Object obj, int i) {
        super(chronology, obj, i);
    }

    public static EthiopicChronology getInstance() {
        return getInstance(DateTimeZone.getDefault(), 4);
    }

    public static EthiopicChronology getInstanceUTC() {
        return Illlllllllllllllllll;
    }

    private Object readResolve() {
        Chronology base = getBase();
        if (base == null) {
            return getInstance(DateTimeZone.UTC, getMinimumDaysInFirstWeek());
        }
        return getInstance(base.getZone(), getMinimumDaysInFirstWeek());
    }

    @Override // org.joda.time.chrono.BasicChronology, org.joda.time.chrono.AssembledChronology
    public void assemble(AssembledChronology.Fields fields) {
        if (getBase() == null) {
            super.assemble(fields);
            fields.f13692Wwww = new SkipDateTimeField(this, fields.f13692Wwww);
            fields.f13695Wwwwwww = new SkipDateTimeField(this, fields.f13695Wwwwwww);
            fields.f13688Kkkkkkkkkkkkkkkkkkkkkkkk = Illlllllllllllllllllll;
            BasicMonthOfYearDateTimeField basicMonthOfYearDateTimeField = new BasicMonthOfYearDateTimeField(this, 13);
            fields.f13693Wwwww = basicMonthOfYearDateTimeField;
            fields.f13714Wwwwwwwwwwwwwwwwwwwwwwwwww = basicMonthOfYearDateTimeField.getDurationField();
        }
    }

    @Override // org.joda.time.chrono.BasicChronology
    public long calculateFirstDayOfYearMillis(int i) {
        int i2;
        int i3 = i - 1963;
        if (i3 <= 0) {
            i2 = (i - 1960) >> 2;
        } else {
            int i4 = i3 >> 2;
            if (!isLeapYear(i)) {
                i2 = i4 + 1;
            } else {
                i2 = i4;
            }
        }
        return (((i3 * 365) + i2) * SignalManager.TWENTY_FOUR_HOURS_MILLIS) + 21859200000L;
    }

    @Override // org.joda.time.chrono.BasicChronology
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // org.joda.time.chrono.BasicChronology
    public long getApproxMillisAtEpochDividedByTwo() {
        return 30962844000000L;
    }

    @Override // org.joda.time.chrono.BasicChronology, org.joda.time.chrono.AssembledChronology, org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public /* bridge */ /* synthetic */ long getDateTimeMillis(int i, int i2, int i3, int i4) throws IllegalArgumentException {
        return super.getDateTimeMillis(i, i2, i3, i4);
    }

    @Override // org.joda.time.chrono.BasicChronology
    public int getMaxYear() {
        return 292272984;
    }

    @Override // org.joda.time.chrono.BasicChronology
    public int getMinYear() {
        return -292269337;
    }

    @Override // org.joda.time.chrono.BasicChronology
    public /* bridge */ /* synthetic */ int getMinimumDaysInFirstWeek() {
        return super.getMinimumDaysInFirstWeek();
    }

    @Override // org.joda.time.chrono.BasicChronology, org.joda.time.chrono.AssembledChronology, org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public /* bridge */ /* synthetic */ DateTimeZone getZone() {
        return super.getZone();
    }

    @Override // org.joda.time.chrono.BasicChronology
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // org.joda.time.chrono.BasicChronology
    public boolean isLeapDay(long j) {
        if (dayOfMonth().get(j) == 6 && monthOfYear().isLeap(j)) {
            return true;
        }
        return false;
    }

    @Override // org.joda.time.chrono.BasicChronology, org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public Chronology withUTC() {
        return Illlllllllllllllllll;
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public Chronology withZone(DateTimeZone dateTimeZone) {
        if (dateTimeZone == null) {
            dateTimeZone = DateTimeZone.getDefault();
        }
        if (dateTimeZone == getZone()) {
            return this;
        }
        return getInstance(dateTimeZone);
    }

    public static EthiopicChronology getInstance(DateTimeZone dateTimeZone) {
        return getInstance(dateTimeZone, 4);
    }

    @Override // org.joda.time.chrono.BasicChronology, org.joda.time.chrono.AssembledChronology, org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public /* bridge */ /* synthetic */ long getDateTimeMillis(int i, int i2, int i3, int i4, int i5, int i6, int i7) throws IllegalArgumentException {
        return super.getDateTimeMillis(i, i2, i3, i4, i5, i6, i7);
    }

    public static EthiopicChronology getInstance(DateTimeZone dateTimeZone, int i) {
        EthiopicChronology ethiopicChronology;
        EthiopicChronology[] putIfAbsent;
        if (dateTimeZone == null) {
            dateTimeZone = DateTimeZone.getDefault();
        }
        ConcurrentHashMap<DateTimeZone, EthiopicChronology[]> concurrentHashMap = Illllllllllllllllllll;
        EthiopicChronology[] ethiopicChronologyArr = concurrentHashMap.get(dateTimeZone);
        if (ethiopicChronologyArr == null && (putIfAbsent = concurrentHashMap.putIfAbsent(dateTimeZone, (ethiopicChronologyArr = new EthiopicChronology[7]))) != null) {
            ethiopicChronologyArr = putIfAbsent;
        }
        int i2 = i - 1;
        try {
            EthiopicChronology ethiopicChronology2 = ethiopicChronologyArr[i2];
            if (ethiopicChronology2 == null) {
                synchronized (ethiopicChronologyArr) {
                    try {
                        ethiopicChronology = ethiopicChronologyArr[i2];
                        if (ethiopicChronology == null) {
                            DateTimeZone dateTimeZone2 = DateTimeZone.UTC;
                            if (dateTimeZone == dateTimeZone2) {
                                EthiopicChronology ethiopicChronology3 = new EthiopicChronology(null, null, i);
                                ethiopicChronology = new EthiopicChronology(LimitChronology.getInstance(ethiopicChronology3, new DateTime(1, 1, 1, 0, 0, 0, 0, ethiopicChronology3), null), null, i);
                            } else {
                                ethiopicChronology = new EthiopicChronology(ZonedChronology.getInstance(getInstance(dateTimeZone2, i), dateTimeZone), null, i);
                            }
                            ethiopicChronologyArr[i2] = ethiopicChronology;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return ethiopicChronology;
            }
            return ethiopicChronology2;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new IllegalArgumentException("Invalid min days in first week: " + i);
        }
    }
}
