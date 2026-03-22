package org.joda.time.chrono;

import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.joda.time.Chronology;
import org.joda.time.DateTimeField;
import org.joda.time.DateTimeZone;
import org.joda.time.chrono.AssembledChronology;
import org.joda.time.field.StrictDateTimeField;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public final class StrictChronology extends AssembledChronology {
    private static final long serialVersionUID = 6633006628097111960L;

    /* renamed from: Kkkkkkkkkkkkk  reason: collision with root package name */
    public transient Chronology f13783Kkkkkkkkkkkkk;

    public StrictChronology(Chronology chronology) {
        super(chronology, null);
    }

    private static final DateTimeField Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DateTimeField dateTimeField) {
        return StrictDateTimeField.getInstance(dateTimeField);
    }

    public static StrictChronology getInstance(Chronology chronology) {
        if (chronology != null) {
            return new StrictChronology(chronology);
        }
        throw new IllegalArgumentException("Must supply a chronology");
    }

    @Override // org.joda.time.chrono.AssembledChronology
    public void assemble(AssembledChronology.Fields fields) {
        fields.f13692Wwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13692Wwww);
        fields.f13691Www = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13691Www);
        fields.f13690Kkkkkkkkkkkkkkkkkkkkkkkkkk = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13690Kkkkkkkkkkkkkkkkkkkkkkkkkk);
        fields.f13689Kkkkkkkkkkkkkkkkkkkkkkkkk = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13689Kkkkkkkkkkkkkkkkkkkkkkkkk);
        fields.f13688Kkkkkkkkkkkkkkkkkkkkkkkk = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13688Kkkkkkkkkkkkkkkkkkkkkkkk);
        fields.f13699Wwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13699Wwwwwwwwwww);
        fields.f13698Wwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13698Wwwwwwwwww);
        fields.f13697Wwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13697Wwwwwwwww);
        fields.f13693Wwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13693Wwwww);
        fields.f13696Wwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13696Wwwwwwww);
        fields.f13695Wwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13695Wwwwwww);
        fields.f13694Wwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13694Wwwwww);
        fields.f13710Wwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13710Wwwwwwwwwwwwwwwwwwwwww);
        fields.f13709Wwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13709Wwwwwwwwwwwwwwwwwwwww);
        fields.f13708Wwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13708Wwwwwwwwwwwwwwwwwwww);
        fields.f13707Wwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13707Wwwwwwwwwwwwwwwwwww);
        fields.f13706Wwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13706Wwwwwwwwwwwwwwwwww);
        fields.f13705Wwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13705Wwwwwwwwwwwwwwwww);
        fields.f13704Wwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13704Wwwwwwwwwwwwwwww);
        fields.f13702Wwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13702Wwwwwwwwwwwwww);
        fields.f13703Wwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13703Wwwwwwwwwwwwwww);
        fields.f13701Wwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13701Wwwwwwwwwwwww);
        fields.f13700Wwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13700Wwwwwwwwwwww);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StrictChronology)) {
            return false;
        }
        return getBase().equals(((StrictChronology) obj).getBase());
    }

    public int hashCode() {
        return (getBase().hashCode() * 7) + 352831696;
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public String toString() {
        return "StrictChronology[" + getBase().toString() + AbstractJsonLexerKt.END_LIST;
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public Chronology withUTC() {
        if (this.f13783Kkkkkkkkkkkkk == null) {
            if (getZone() == DateTimeZone.UTC) {
                this.f13783Kkkkkkkkkkkkk = this;
            } else {
                this.f13783Kkkkkkkkkkkkk = getInstance(getBase().withUTC());
            }
        }
        return this.f13783Kkkkkkkkkkkkk;
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public Chronology withZone(DateTimeZone dateTimeZone) {
        if (dateTimeZone == null) {
            dateTimeZone = DateTimeZone.getDefault();
        }
        if (dateTimeZone == DateTimeZone.UTC) {
            return withUTC();
        }
        if (dateTimeZone == getZone()) {
            return this;
        }
        return getInstance(getBase().withZone(dateTimeZone));
    }
}
