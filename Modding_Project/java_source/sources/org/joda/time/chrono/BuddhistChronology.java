package org.joda.time.chrono;

import j$.util.concurrent.ConcurrentHashMap;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.joda.time.Chronology;
import org.joda.time.DateTime;
import org.joda.time.DateTimeField;
import org.joda.time.DateTimeFieldType;
import org.joda.time.DateTimeZone;
import org.joda.time.DurationFieldType;
import org.joda.time.chrono.AssembledChronology;
import org.joda.time.field.DelegatedDateTimeField;
import org.joda.time.field.DividedDateTimeField;
import org.joda.time.field.OffsetDateTimeField;
import org.joda.time.field.RemainderDateTimeField;
import org.joda.time.field.SkipUndoDateTimeField;
import org.joda.time.field.UnsupportedDurationField;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public final class BuddhistChronology extends AssembledChronology {
    public static final int BE = 1;
    private static final long serialVersionUID = -3474595157769370126L;

    /* renamed from: Kkkkkkkkkkkkk  reason: collision with root package name */
    public static final DateTimeField f13742Kkkkkkkkkkkkk = new BasicSingleEraDateTimeField("BE");

    /* renamed from: Kkkkkkkkkkkk  reason: collision with root package name */
    public static final ConcurrentHashMap<DateTimeZone, BuddhistChronology> f13741Kkkkkkkkkkkk = new ConcurrentHashMap<>();

    /* renamed from: Kkkkkkkkkkk  reason: collision with root package name */
    public static final BuddhistChronology f13740Kkkkkkkkkkk = getInstance(DateTimeZone.UTC);

    public BuddhistChronology(Chronology chronology, Object obj) {
        super(chronology, obj);
    }

    public static BuddhistChronology getInstance() {
        return getInstance(DateTimeZone.getDefault());
    }

    public static BuddhistChronology getInstanceUTC() {
        return f13740Kkkkkkkkkkk;
    }

    private Object readResolve() {
        Chronology base = getBase();
        if (base == null) {
            return getInstanceUTC();
        }
        return getInstance(base.getZone());
    }

    @Override // org.joda.time.chrono.AssembledChronology
    public void assemble(AssembledChronology.Fields fields) {
        if (getParam() == null) {
            fields.f13711Wwwwwwwwwwwwwwwwwwwwwww = UnsupportedDurationField.getInstance(DurationFieldType.eras());
            OffsetDateTimeField offsetDateTimeField = new OffsetDateTimeField(new SkipUndoDateTimeField(this, fields.f13692Wwww), 543);
            fields.f13692Wwww = offsetDateTimeField;
            fields.f13691Www = new DelegatedDateTimeField(offsetDateTimeField, fields.f13711Wwwwwwwwwwwwwwwwwwwwwww, DateTimeFieldType.yearOfEra());
            fields.f13695Wwwwwww = new OffsetDateTimeField(new SkipUndoDateTimeField(this, fields.f13695Wwwwwww), 543);
            DividedDateTimeField dividedDateTimeField = new DividedDateTimeField(new OffsetDateTimeField(fields.f13691Www, 99), fields.f13711Wwwwwwwwwwwwwwwwwwwwwww, DateTimeFieldType.centuryOfEra(), 100);
            fields.f13689Kkkkkkkkkkkkkkkkkkkkkkkkk = dividedDateTimeField;
            fields.f13712Wwwwwwwwwwwwwwwwwwwwwwww = dividedDateTimeField.getDurationField();
            fields.f13690Kkkkkkkkkkkkkkkkkkkkkkkkkk = new OffsetDateTimeField(new RemainderDateTimeField((DividedDateTimeField) fields.f13689Kkkkkkkkkkkkkkkkkkkkkkkkk), DateTimeFieldType.yearOfCentury(), 1);
            fields.f13694Wwwwww = new OffsetDateTimeField(new RemainderDateTimeField(fields.f13695Wwwwwww, fields.f13712Wwwwwwwwwwwwwwwwwwwwwwww, DateTimeFieldType.weekyearOfCentury(), 100), DateTimeFieldType.weekyearOfCentury(), 1);
            fields.f13688Kkkkkkkkkkkkkkkkkkkkkkkk = f13742Kkkkkkkkkkkkk;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BuddhistChronology) {
            return getZone().equals(((BuddhistChronology) obj).getZone());
        }
        return false;
    }

    public int hashCode() {
        return 499287079 + getZone().hashCode();
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public String toString() {
        DateTimeZone zone = getZone();
        if (zone == null) {
            return "BuddhistChronology";
        }
        return "BuddhistChronology" + AbstractJsonLexerKt.BEGIN_LIST + zone.getID() + AbstractJsonLexerKt.END_LIST;
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public Chronology withUTC() {
        return f13740Kkkkkkkkkkk;
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

    public static BuddhistChronology getInstance(DateTimeZone dateTimeZone) {
        if (dateTimeZone == null) {
            dateTimeZone = DateTimeZone.getDefault();
        }
        ConcurrentHashMap<DateTimeZone, BuddhistChronology> concurrentHashMap = f13741Kkkkkkkkkkkk;
        BuddhistChronology buddhistChronology = concurrentHashMap.get(dateTimeZone);
        if (buddhistChronology == null) {
            BuddhistChronology buddhistChronology2 = new BuddhistChronology(GJChronology.getInstance(dateTimeZone, null), null);
            BuddhistChronology buddhistChronology3 = new BuddhistChronology(LimitChronology.getInstance(buddhistChronology2, new DateTime(1, 1, 1, 0, 0, 0, 0, buddhistChronology2), null), "");
            BuddhistChronology putIfAbsent = concurrentHashMap.putIfAbsent(dateTimeZone, buddhistChronology3);
            return putIfAbsent != null ? putIfAbsent : buddhistChronology3;
        }
        return buddhistChronology;
    }
}
