package org.joda.time.chrono;

import java.io.IOException;
import java.io.ObjectInputStream;
import org.joda.time.Chronology;
import org.joda.time.DateTimeField;
import org.joda.time.DateTimeZone;
import org.joda.time.DurationField;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public abstract class AssembledChronology extends BaseChronology {
    private static final long serialVersionUID = -6728465968995518215L;

    /* renamed from: Kkkkkkkkkkkkkk  reason: collision with root package name */
    public transient int f13652Kkkkkkkkkkkkkk;

    /* renamed from: Kkkkkkkkkkkkkkk  reason: collision with root package name */
    public transient DateTimeField f13653Kkkkkkkkkkkkkkk;

    /* renamed from: Kkkkkkkkkkkkkkkk  reason: collision with root package name */
    public transient DateTimeField f13654Kkkkkkkkkkkkkkkk;

    /* renamed from: Kkkkkkkkkkkkkkkkk  reason: collision with root package name */
    public transient DateTimeField f13655Kkkkkkkkkkkkkkkkk;

    /* renamed from: Kkkkkkkkkkkkkkkkkk  reason: collision with root package name */
    public transient DateTimeField f13656Kkkkkkkkkkkkkkkkkk;

    /* renamed from: Kkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
    public transient DateTimeField f13657Kkkkkkkkkkkkkkkkkkk;

    /* renamed from: Kkkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
    public transient DateTimeField f13658Kkkkkkkkkkkkkkkkkkkk;

    /* renamed from: Kkkkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
    public transient DateTimeField f13659Kkkkkkkkkkkkkkkkkkkkk;

    /* renamed from: Kkkkkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
    public transient DateTimeField f13660Kkkkkkkkkkkkkkkkkkkkkk;

    /* renamed from: Kkkkkkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
    public transient DateTimeField f13661Kkkkkkkkkkkkkkkkkkkkkkk;

    /* renamed from: Kkkkkkkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
    public transient DateTimeField f13662Kkkkkkkkkkkkkkkkkkkkkkkk;

    /* renamed from: Kkkkkkkkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
    public transient DateTimeField f13663Kkkkkkkkkkkkkkkkkkkkkkkkk;

    /* renamed from: Kkkkkkkkkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
    public transient DateTimeField f13664Kkkkkkkkkkkkkkkkkkkkkkkkkk;

    /* renamed from: Www  reason: collision with root package name */
    public transient DateTimeField f13665Www;

    /* renamed from: Wwww  reason: collision with root package name */
    public transient DateTimeField f13666Wwww;

    /* renamed from: Wwwww  reason: collision with root package name */
    public transient DateTimeField f13667Wwwww;

    /* renamed from: Wwwwww  reason: collision with root package name */
    public transient DateTimeField f13668Wwwwww;

    /* renamed from: Wwwwwww  reason: collision with root package name */
    public transient DateTimeField f13669Wwwwwww;

    /* renamed from: Wwwwwwww  reason: collision with root package name */
    public transient DateTimeField f13670Wwwwwwww;

    /* renamed from: Wwwwwwwww  reason: collision with root package name */
    public transient DateTimeField f13671Wwwwwwwww;

    /* renamed from: Wwwwwwwwww  reason: collision with root package name */
    public transient DateTimeField f13672Wwwwwwwwww;

    /* renamed from: Wwwwwwwwwww  reason: collision with root package name */
    public transient DateTimeField f13673Wwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwww  reason: collision with root package name */
    public transient DateTimeField f13674Wwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwww  reason: collision with root package name */
    public transient DateTimeField f13675Wwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwww  reason: collision with root package name */
    public transient DurationField f13676Wwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwww  reason: collision with root package name */
    public transient DurationField f13677Wwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
    public transient DurationField f13678Wwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public transient DurationField f13679Wwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public transient DurationField f13680Wwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public transient DurationField f13681Wwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public transient DurationField f13682Wwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public transient DurationField f13683Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public transient DurationField f13684Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public transient DurationField f13685Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public transient DurationField f13686Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public transient DurationField f13687Wwwwwwwwwwwwwwwwwwwwwwwww;
    private final Chronology iBase;
    private final Object iParam;

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static final class Fields {

        /* renamed from: Kkkkkkkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
        public DateTimeField f13688Kkkkkkkkkkkkkkkkkkkkkkkk;

        /* renamed from: Kkkkkkkkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
        public DateTimeField f13689Kkkkkkkkkkkkkkkkkkkkkkkkk;

        /* renamed from: Kkkkkkkkkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
        public DateTimeField f13690Kkkkkkkkkkkkkkkkkkkkkkkkkk;

        /* renamed from: Www  reason: collision with root package name */
        public DateTimeField f13691Www;

        /* renamed from: Wwww  reason: collision with root package name */
        public DateTimeField f13692Wwww;

        /* renamed from: Wwwww  reason: collision with root package name */
        public DateTimeField f13693Wwwww;

        /* renamed from: Wwwwww  reason: collision with root package name */
        public DateTimeField f13694Wwwwww;

        /* renamed from: Wwwwwww  reason: collision with root package name */
        public DateTimeField f13695Wwwwwww;

        /* renamed from: Wwwwwwww  reason: collision with root package name */
        public DateTimeField f13696Wwwwwwww;

        /* renamed from: Wwwwwwwww  reason: collision with root package name */
        public DateTimeField f13697Wwwwwwwww;

        /* renamed from: Wwwwwwwwww  reason: collision with root package name */
        public DateTimeField f13698Wwwwwwwwww;

        /* renamed from: Wwwwwwwwwww  reason: collision with root package name */
        public DateTimeField f13699Wwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwww  reason: collision with root package name */
        public DateTimeField f13700Wwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwww  reason: collision with root package name */
        public DateTimeField f13701Wwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwww  reason: collision with root package name */
        public DateTimeField f13702Wwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwww  reason: collision with root package name */
        public DateTimeField f13703Wwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
        public DateTimeField f13704Wwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
        public DateTimeField f13705Wwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public DateTimeField f13706Wwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public DateTimeField f13707Wwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public DateTimeField f13708Wwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public DateTimeField f13709Wwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public DateTimeField f13710Wwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public DurationField f13711Wwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public DurationField f13712Wwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public DurationField f13713Wwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public DurationField f13714Wwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public DurationField f13715Wwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public DurationField f13716Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public DurationField f13717Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public DurationField f13718Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public DurationField f13719Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public DurationField f13720Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public DurationField f13721Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public DurationField f13722Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DurationField durationField) {
            if (durationField == null) {
                return false;
            }
            return durationField.isSupported();
        }

        public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DateTimeField dateTimeField) {
            if (dateTimeField == null) {
                return false;
            }
            return dateTimeField.isSupported();
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Chronology chronology) {
            DurationField millis = chronology.millis();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(millis)) {
                this.f13722Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = millis;
            }
            DurationField seconds = chronology.seconds();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(seconds)) {
                this.f13721Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = seconds;
            }
            DurationField minutes = chronology.minutes();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(minutes)) {
                this.f13720Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = minutes;
            }
            DurationField hours = chronology.hours();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(hours)) {
                this.f13719Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = hours;
            }
            DurationField halfdays = chronology.halfdays();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(halfdays)) {
                this.f13718Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = halfdays;
            }
            DurationField days = chronology.days();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(days)) {
                this.f13717Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = days;
            }
            DurationField weeks = chronology.weeks();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(weeks)) {
                this.f13716Wwwwwwwwwwwwwwwwwwwwwwwwwwww = weeks;
            }
            DurationField weekyears = chronology.weekyears();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(weekyears)) {
                this.f13715Wwwwwwwwwwwwwwwwwwwwwwwwwww = weekyears;
            }
            DurationField months = chronology.months();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(months)) {
                this.f13714Wwwwwwwwwwwwwwwwwwwwwwwwww = months;
            }
            DurationField years = chronology.years();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(years)) {
                this.f13713Wwwwwwwwwwwwwwwwwwwwwwwww = years;
            }
            DurationField centuries = chronology.centuries();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(centuries)) {
                this.f13712Wwwwwwwwwwwwwwwwwwwwwwww = centuries;
            }
            DurationField eras = chronology.eras();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(eras)) {
                this.f13711Wwwwwwwwwwwwwwwwwwwwwww = eras;
            }
            DateTimeField millisOfSecond = chronology.millisOfSecond();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(millisOfSecond)) {
                this.f13710Wwwwwwwwwwwwwwwwwwwwww = millisOfSecond;
            }
            DateTimeField millisOfDay = chronology.millisOfDay();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(millisOfDay)) {
                this.f13709Wwwwwwwwwwwwwwwwwwwww = millisOfDay;
            }
            DateTimeField secondOfMinute = chronology.secondOfMinute();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(secondOfMinute)) {
                this.f13708Wwwwwwwwwwwwwwwwwwww = secondOfMinute;
            }
            DateTimeField secondOfDay = chronology.secondOfDay();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(secondOfDay)) {
                this.f13707Wwwwwwwwwwwwwwwwwww = secondOfDay;
            }
            DateTimeField minuteOfHour = chronology.minuteOfHour();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(minuteOfHour)) {
                this.f13706Wwwwwwwwwwwwwwwwww = minuteOfHour;
            }
            DateTimeField minuteOfDay = chronology.minuteOfDay();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(minuteOfDay)) {
                this.f13705Wwwwwwwwwwwwwwwww = minuteOfDay;
            }
            DateTimeField hourOfDay = chronology.hourOfDay();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(hourOfDay)) {
                this.f13704Wwwwwwwwwwwwwwww = hourOfDay;
            }
            DateTimeField clockhourOfDay = chronology.clockhourOfDay();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(clockhourOfDay)) {
                this.f13703Wwwwwwwwwwwwwww = clockhourOfDay;
            }
            DateTimeField hourOfHalfday = chronology.hourOfHalfday();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(hourOfHalfday)) {
                this.f13702Wwwwwwwwwwwwww = hourOfHalfday;
            }
            DateTimeField clockhourOfHalfday = chronology.clockhourOfHalfday();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(clockhourOfHalfday)) {
                this.f13701Wwwwwwwwwwwww = clockhourOfHalfday;
            }
            DateTimeField halfdayOfDay = chronology.halfdayOfDay();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(halfdayOfDay)) {
                this.f13700Wwwwwwwwwwww = halfdayOfDay;
            }
            DateTimeField dayOfWeek = chronology.dayOfWeek();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dayOfWeek)) {
                this.f13699Wwwwwwwwwww = dayOfWeek;
            }
            DateTimeField dayOfMonth = chronology.dayOfMonth();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dayOfMonth)) {
                this.f13698Wwwwwwwwww = dayOfMonth;
            }
            DateTimeField dayOfYear = chronology.dayOfYear();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dayOfYear)) {
                this.f13697Wwwwwwwww = dayOfYear;
            }
            DateTimeField weekOfWeekyear = chronology.weekOfWeekyear();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(weekOfWeekyear)) {
                this.f13696Wwwwwwww = weekOfWeekyear;
            }
            DateTimeField weekyear = chronology.weekyear();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(weekyear)) {
                this.f13695Wwwwwww = weekyear;
            }
            DateTimeField weekyearOfCentury = chronology.weekyearOfCentury();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(weekyearOfCentury)) {
                this.f13694Wwwwww = weekyearOfCentury;
            }
            DateTimeField monthOfYear = chronology.monthOfYear();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(monthOfYear)) {
                this.f13693Wwwww = monthOfYear;
            }
            DateTimeField year = chronology.year();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(year)) {
                this.f13692Wwww = year;
            }
            DateTimeField yearOfEra = chronology.yearOfEra();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(yearOfEra)) {
                this.f13691Www = yearOfEra;
            }
            DateTimeField yearOfCentury = chronology.yearOfCentury();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(yearOfCentury)) {
                this.f13690Kkkkkkkkkkkkkkkkkkkkkkkkkk = yearOfCentury;
            }
            DateTimeField centuryOfEra = chronology.centuryOfEra();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(centuryOfEra)) {
                this.f13689Kkkkkkkkkkkkkkkkkkkkkkkkk = centuryOfEra;
            }
            DateTimeField era = chronology.era();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(era)) {
                this.f13688Kkkkkkkkkkkkkkkkkkkkkkkk = era;
            }
        }
    }

    public AssembledChronology(Chronology chronology, Object obj) {
        this.iBase = chronology;
        this.iParam = obj;
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Fields fields = new Fields();
        Chronology chronology = this.iBase;
        if (chronology != null) {
            fields.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(chronology);
        }
        assemble(fields);
        DurationField durationField = fields.f13722Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (durationField == null) {
            durationField = super.millis();
        }
        this.f13687Wwwwwwwwwwwwwwwwwwwwwwwww = durationField;
        DurationField durationField2 = fields.f13721Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (durationField2 == null) {
            durationField2 = super.seconds();
        }
        this.f13686Wwwwwwwwwwwwwwwwwwwwwwww = durationField2;
        DurationField durationField3 = fields.f13720Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (durationField3 == null) {
            durationField3 = super.minutes();
        }
        this.f13685Wwwwwwwwwwwwwwwwwwwwwww = durationField3;
        DurationField durationField4 = fields.f13719Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (durationField4 == null) {
            durationField4 = super.hours();
        }
        this.f13684Wwwwwwwwwwwwwwwwwwwwww = durationField4;
        DurationField durationField5 = fields.f13718Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (durationField5 == null) {
            durationField5 = super.halfdays();
        }
        this.f13683Wwwwwwwwwwwwwwwwwwwww = durationField5;
        DurationField durationField6 = fields.f13717Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (durationField6 == null) {
            durationField6 = super.days();
        }
        this.f13682Wwwwwwwwwwwwwwwwwwww = durationField6;
        DurationField durationField7 = fields.f13716Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (durationField7 == null) {
            durationField7 = super.weeks();
        }
        this.f13681Wwwwwwwwwwwwwwwwwww = durationField7;
        DurationField durationField8 = fields.f13715Wwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (durationField8 == null) {
            durationField8 = super.weekyears();
        }
        this.f13680Wwwwwwwwwwwwwwwwww = durationField8;
        DurationField durationField9 = fields.f13714Wwwwwwwwwwwwwwwwwwwwwwwwww;
        if (durationField9 == null) {
            durationField9 = super.months();
        }
        this.f13679Wwwwwwwwwwwwwwwww = durationField9;
        DurationField durationField10 = fields.f13713Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (durationField10 == null) {
            durationField10 = super.years();
        }
        this.f13678Wwwwwwwwwwwwwwww = durationField10;
        DurationField durationField11 = fields.f13712Wwwwwwwwwwwwwwwwwwwwwwww;
        if (durationField11 == null) {
            durationField11 = super.centuries();
        }
        this.f13677Wwwwwwwwwwwwwww = durationField11;
        DurationField durationField12 = fields.f13711Wwwwwwwwwwwwwwwwwwwwwww;
        if (durationField12 == null) {
            durationField12 = super.eras();
        }
        this.f13676Wwwwwwwwwwwwww = durationField12;
        DateTimeField dateTimeField = fields.f13710Wwwwwwwwwwwwwwwwwwwwww;
        if (dateTimeField == null) {
            dateTimeField = super.millisOfSecond();
        }
        this.f13675Wwwwwwwwwwwww = dateTimeField;
        DateTimeField dateTimeField2 = fields.f13709Wwwwwwwwwwwwwwwwwwwww;
        if (dateTimeField2 == null) {
            dateTimeField2 = super.millisOfDay();
        }
        this.f13674Wwwwwwwwwwww = dateTimeField2;
        DateTimeField dateTimeField3 = fields.f13708Wwwwwwwwwwwwwwwwwwww;
        if (dateTimeField3 == null) {
            dateTimeField3 = super.secondOfMinute();
        }
        this.f13673Wwwwwwwwwww = dateTimeField3;
        DateTimeField dateTimeField4 = fields.f13707Wwwwwwwwwwwwwwwwwww;
        if (dateTimeField4 == null) {
            dateTimeField4 = super.secondOfDay();
        }
        this.f13672Wwwwwwwwww = dateTimeField4;
        DateTimeField dateTimeField5 = fields.f13706Wwwwwwwwwwwwwwwwww;
        if (dateTimeField5 == null) {
            dateTimeField5 = super.minuteOfHour();
        }
        this.f13671Wwwwwwwww = dateTimeField5;
        DateTimeField dateTimeField6 = fields.f13705Wwwwwwwwwwwwwwwww;
        if (dateTimeField6 == null) {
            dateTimeField6 = super.minuteOfDay();
        }
        this.f13670Wwwwwwww = dateTimeField6;
        DateTimeField dateTimeField7 = fields.f13704Wwwwwwwwwwwwwwww;
        if (dateTimeField7 == null) {
            dateTimeField7 = super.hourOfDay();
        }
        this.f13669Wwwwwww = dateTimeField7;
        DateTimeField dateTimeField8 = fields.f13703Wwwwwwwwwwwwwww;
        if (dateTimeField8 == null) {
            dateTimeField8 = super.clockhourOfDay();
        }
        this.f13668Wwwwww = dateTimeField8;
        DateTimeField dateTimeField9 = fields.f13702Wwwwwwwwwwwwww;
        if (dateTimeField9 == null) {
            dateTimeField9 = super.hourOfHalfday();
        }
        this.f13667Wwwww = dateTimeField9;
        DateTimeField dateTimeField10 = fields.f13701Wwwwwwwwwwwww;
        if (dateTimeField10 == null) {
            dateTimeField10 = super.clockhourOfHalfday();
        }
        this.f13666Wwww = dateTimeField10;
        DateTimeField dateTimeField11 = fields.f13700Wwwwwwwwwwww;
        if (dateTimeField11 == null) {
            dateTimeField11 = super.halfdayOfDay();
        }
        this.f13665Www = dateTimeField11;
        DateTimeField dateTimeField12 = fields.f13699Wwwwwwwwwww;
        if (dateTimeField12 == null) {
            dateTimeField12 = super.dayOfWeek();
        }
        this.f13664Kkkkkkkkkkkkkkkkkkkkkkkkkk = dateTimeField12;
        DateTimeField dateTimeField13 = fields.f13698Wwwwwwwwww;
        if (dateTimeField13 == null) {
            dateTimeField13 = super.dayOfMonth();
        }
        this.f13663Kkkkkkkkkkkkkkkkkkkkkkkkk = dateTimeField13;
        DateTimeField dateTimeField14 = fields.f13697Wwwwwwwww;
        if (dateTimeField14 == null) {
            dateTimeField14 = super.dayOfYear();
        }
        this.f13662Kkkkkkkkkkkkkkkkkkkkkkkk = dateTimeField14;
        DateTimeField dateTimeField15 = fields.f13696Wwwwwwww;
        if (dateTimeField15 == null) {
            dateTimeField15 = super.weekOfWeekyear();
        }
        this.f13661Kkkkkkkkkkkkkkkkkkkkkkk = dateTimeField15;
        DateTimeField dateTimeField16 = fields.f13695Wwwwwww;
        if (dateTimeField16 == null) {
            dateTimeField16 = super.weekyear();
        }
        this.f13660Kkkkkkkkkkkkkkkkkkkkkk = dateTimeField16;
        DateTimeField dateTimeField17 = fields.f13694Wwwwww;
        if (dateTimeField17 == null) {
            dateTimeField17 = super.weekyearOfCentury();
        }
        this.f13659Kkkkkkkkkkkkkkkkkkkkk = dateTimeField17;
        DateTimeField dateTimeField18 = fields.f13693Wwwww;
        if (dateTimeField18 == null) {
            dateTimeField18 = super.monthOfYear();
        }
        this.f13658Kkkkkkkkkkkkkkkkkkkk = dateTimeField18;
        DateTimeField dateTimeField19 = fields.f13692Wwww;
        if (dateTimeField19 == null) {
            dateTimeField19 = super.year();
        }
        this.f13657Kkkkkkkkkkkkkkkkkkk = dateTimeField19;
        DateTimeField dateTimeField20 = fields.f13691Www;
        if (dateTimeField20 == null) {
            dateTimeField20 = super.yearOfEra();
        }
        this.f13656Kkkkkkkkkkkkkkkkkk = dateTimeField20;
        DateTimeField dateTimeField21 = fields.f13690Kkkkkkkkkkkkkkkkkkkkkkkkkk;
        if (dateTimeField21 == null) {
            dateTimeField21 = super.yearOfCentury();
        }
        this.f13655Kkkkkkkkkkkkkkkkk = dateTimeField21;
        DateTimeField dateTimeField22 = fields.f13689Kkkkkkkkkkkkkkkkkkkkkkkkk;
        if (dateTimeField22 == null) {
            dateTimeField22 = super.centuryOfEra();
        }
        this.f13654Kkkkkkkkkkkkkkkk = dateTimeField22;
        DateTimeField dateTimeField23 = fields.f13688Kkkkkkkkkkkkkkkkkkkkkkkk;
        if (dateTimeField23 == null) {
            dateTimeField23 = super.era();
        }
        this.f13653Kkkkkkkkkkkkkkk = dateTimeField23;
        Chronology chronology2 = this.iBase;
        int i = 0;
        if (chronology2 != null) {
            int i2 = ((this.f13669Wwwwwww == chronology2.hourOfDay() && this.f13671Wwwwwwwww == this.iBase.minuteOfHour() && this.f13673Wwwwwwwwwww == this.iBase.secondOfMinute() && this.f13675Wwwwwwwwwwwww == this.iBase.millisOfSecond()) ? 1 : 0) | (this.f13674Wwwwwwwwwwww == this.iBase.millisOfDay() ? 2 : 0);
            if (this.f13657Kkkkkkkkkkkkkkkkkkk == this.iBase.year() && this.f13658Kkkkkkkkkkkkkkkkkkkk == this.iBase.monthOfYear() && this.f13663Kkkkkkkkkkkkkkkkkkkkkkkkk == this.iBase.dayOfMonth()) {
                i = 4;
            }
            i |= i2;
        }
        this.f13652Kkkkkkkkkkkkkk = i;
    }

    public abstract void assemble(Fields fields);

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public final DurationField centuries() {
        return this.f13677Wwwwwwwwwwwwwww;
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public final DateTimeField centuryOfEra() {
        return this.f13654Kkkkkkkkkkkkkkkk;
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public final DateTimeField clockhourOfDay() {
        return this.f13668Wwwwww;
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public final DateTimeField clockhourOfHalfday() {
        return this.f13666Wwww;
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public final DateTimeField dayOfMonth() {
        return this.f13663Kkkkkkkkkkkkkkkkkkkkkkkkk;
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public final DateTimeField dayOfWeek() {
        return this.f13664Kkkkkkkkkkkkkkkkkkkkkkkkkk;
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public final DateTimeField dayOfYear() {
        return this.f13662Kkkkkkkkkkkkkkkkkkkkkkkk;
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public final DurationField days() {
        return this.f13682Wwwwwwwwwwwwwwwwwwww;
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public final DateTimeField era() {
        return this.f13653Kkkkkkkkkkkkkkk;
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public final DurationField eras() {
        return this.f13676Wwwwwwwwwwwwww;
    }

    public final Chronology getBase() {
        return this.iBase;
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public long getDateTimeMillis(int i, int i2, int i3, int i4) throws IllegalArgumentException {
        Chronology chronology = this.iBase;
        if (chronology != null && (this.f13652Kkkkkkkkkkkkkk & 6) == 6) {
            return chronology.getDateTimeMillis(i, i2, i3, i4);
        }
        return super.getDateTimeMillis(i, i2, i3, i4);
    }

    public final Object getParam() {
        return this.iParam;
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public DateTimeZone getZone() {
        Chronology chronology = this.iBase;
        if (chronology != null) {
            return chronology.getZone();
        }
        return null;
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public final DateTimeField halfdayOfDay() {
        return this.f13665Www;
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public final DurationField halfdays() {
        return this.f13683Wwwwwwwwwwwwwwwwwwwww;
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public final DateTimeField hourOfDay() {
        return this.f13669Wwwwwww;
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public final DateTimeField hourOfHalfday() {
        return this.f13667Wwwww;
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public final DurationField hours() {
        return this.f13684Wwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public final DurationField millis() {
        return this.f13687Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public final DateTimeField millisOfDay() {
        return this.f13674Wwwwwwwwwwww;
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public final DateTimeField millisOfSecond() {
        return this.f13675Wwwwwwwwwwwww;
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public final DateTimeField minuteOfDay() {
        return this.f13670Wwwwwwww;
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public final DateTimeField minuteOfHour() {
        return this.f13671Wwwwwwwww;
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public final DurationField minutes() {
        return this.f13685Wwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public final DateTimeField monthOfYear() {
        return this.f13658Kkkkkkkkkkkkkkkkkkkk;
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public final DurationField months() {
        return this.f13679Wwwwwwwwwwwwwwwww;
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public final DateTimeField secondOfDay() {
        return this.f13672Wwwwwwwwww;
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public final DateTimeField secondOfMinute() {
        return this.f13673Wwwwwwwwwww;
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public final DurationField seconds() {
        return this.f13686Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public final DateTimeField weekOfWeekyear() {
        return this.f13661Kkkkkkkkkkkkkkkkkkkkkkk;
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public final DurationField weeks() {
        return this.f13681Wwwwwwwwwwwwwwwwwww;
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public final DateTimeField weekyear() {
        return this.f13660Kkkkkkkkkkkkkkkkkkkkkk;
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public final DateTimeField weekyearOfCentury() {
        return this.f13659Kkkkkkkkkkkkkkkkkkkkk;
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public final DurationField weekyears() {
        return this.f13680Wwwwwwwwwwwwwwwwww;
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public final DateTimeField year() {
        return this.f13657Kkkkkkkkkkkkkkkkkkk;
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public final DateTimeField yearOfCentury() {
        return this.f13655Kkkkkkkkkkkkkkkkk;
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public final DateTimeField yearOfEra() {
        return this.f13656Kkkkkkkkkkkkkkkkkk;
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public final DurationField years() {
        return this.f13678Wwwwwwwwwwwwwwww;
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public long getDateTimeMillis(int i, int i2, int i3, int i4, int i5, int i6, int i7) throws IllegalArgumentException {
        Chronology chronology = this.iBase;
        if (chronology != null && (this.f13652Kkkkkkkkkkkkkk & 5) == 5) {
            return chronology.getDateTimeMillis(i, i2, i3, i4, i5, i6, i7);
        }
        return super.getDateTimeMillis(i, i2, i3, i4, i5, i6, i7);
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public long getDateTimeMillis(long j, int i, int i2, int i3, int i4) throws IllegalArgumentException {
        Chronology chronology = this.iBase;
        if (chronology != null && (this.f13652Kkkkkkkkkkkkkk & 1) == 1) {
            return chronology.getDateTimeMillis(j, i, i2, i3, i4);
        }
        return super.getDateTimeMillis(j, i, i2, i3, i4);
    }
}
