package org.joda.time.chrono;

import j$.util.concurrent.ConcurrentHashMap;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.joda.time.Chronology;
import org.joda.time.DateTimeFieldType;
import org.joda.time.DateTimeZone;
import org.joda.time.chrono.AssembledChronology;
import org.joda.time.field.DividedDateTimeField;
import org.joda.time.field.RemainderDateTimeField;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public final class ISOChronology extends AssembledChronology {

    /* renamed from: Kkkkkkkkkkkk  reason: collision with root package name */
    public static final ConcurrentHashMap<DateTimeZone, ISOChronology> f13774Kkkkkkkkkkkk;

    /* renamed from: Kkkkkkkkkkkkk  reason: collision with root package name */
    public static final ISOChronology f13775Kkkkkkkkkkkkk;
    private static final long serialVersionUID = -6212696554273812441L;

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static final class Stub implements Serializable {
        private static final long serialVersionUID = -6212696554273812441L;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public transient DateTimeZone f13776Wwwwwwwwwwwwwwwwwwwwwwwww;

        public Stub(DateTimeZone dateTimeZone) {
            this.f13776Wwwwwwwwwwwwwwwwwwwwwwwww = dateTimeZone;
        }

        private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            this.f13776Wwwwwwwwwwwwwwwwwwwwwwwww = (DateTimeZone) objectInputStream.readObject();
        }

        private Object readResolve() {
            return ISOChronology.getInstance(this.f13776Wwwwwwwwwwwwwwwwwwwwwwwww);
        }

        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.writeObject(this.f13776Wwwwwwwwwwwwwwwwwwwwwwwww);
        }
    }

    static {
        ConcurrentHashMap<DateTimeZone, ISOChronology> concurrentHashMap = new ConcurrentHashMap<>();
        f13774Kkkkkkkkkkkk = concurrentHashMap;
        ISOChronology iSOChronology = new ISOChronology(GregorianChronology.getInstanceUTC());
        f13775Kkkkkkkkkkkkk = iSOChronology;
        concurrentHashMap.put(DateTimeZone.UTC, iSOChronology);
    }

    public ISOChronology(Chronology chronology) {
        super(chronology, null);
    }

    public static ISOChronology getInstance() {
        return getInstance(DateTimeZone.getDefault());
    }

    public static ISOChronology getInstanceUTC() {
        return f13775Kkkkkkkkkkkkk;
    }

    private Object writeReplace() {
        return new Stub(getZone());
    }

    @Override // org.joda.time.chrono.AssembledChronology
    public void assemble(AssembledChronology.Fields fields) {
        if (getBase().getZone() == DateTimeZone.UTC) {
            DividedDateTimeField dividedDateTimeField = new DividedDateTimeField(ISOYearOfEraDateTimeField.INSTANCE, DateTimeFieldType.centuryOfEra(), 100);
            fields.f13689Kkkkkkkkkkkkkkkkkkkkkkkkk = dividedDateTimeField;
            fields.f13712Wwwwwwwwwwwwwwwwwwwwwwww = dividedDateTimeField.getDurationField();
            fields.f13690Kkkkkkkkkkkkkkkkkkkkkkkkkk = new RemainderDateTimeField((DividedDateTimeField) fields.f13689Kkkkkkkkkkkkkkkkkkkkkkkkk, DateTimeFieldType.yearOfCentury());
            fields.f13694Wwwwww = new RemainderDateTimeField((DividedDateTimeField) fields.f13689Kkkkkkkkkkkkkkkkkkkkkkkkk, fields.f13715Wwwwwwwwwwwwwwwwwwwwwwwwwww, DateTimeFieldType.weekyearOfCentury());
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ISOChronology) {
            return getZone().equals(((ISOChronology) obj).getZone());
        }
        return false;
    }

    public int hashCode() {
        return 800855 + getZone().hashCode();
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public String toString() {
        DateTimeZone zone = getZone();
        if (zone == null) {
            return "ISOChronology";
        }
        return "ISOChronology" + AbstractJsonLexerKt.BEGIN_LIST + zone.getID() + AbstractJsonLexerKt.END_LIST;
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public Chronology withUTC() {
        return f13775Kkkkkkkkkkkkk;
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

    public static ISOChronology getInstance(DateTimeZone dateTimeZone) {
        ISOChronology putIfAbsent;
        if (dateTimeZone == null) {
            dateTimeZone = DateTimeZone.getDefault();
        }
        ConcurrentHashMap<DateTimeZone, ISOChronology> concurrentHashMap = f13774Kkkkkkkkkkkk;
        ISOChronology iSOChronology = concurrentHashMap.get(dateTimeZone);
        return (iSOChronology != null || (putIfAbsent = concurrentHashMap.putIfAbsent(dateTimeZone, (iSOChronology = new ISOChronology(ZonedChronology.getInstance(f13775Kkkkkkkkkkkkk, dateTimeZone))))) == null) ? iSOChronology : putIfAbsent;
    }
}
