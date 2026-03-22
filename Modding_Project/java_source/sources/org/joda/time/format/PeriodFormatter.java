package org.joda.time.format;

import java.util.Locale;
import org.joda.time.MutablePeriod;
import org.joda.time.Period;
import org.joda.time.PeriodType;
import org.joda.time.ReadWritablePeriod;
import org.joda.time.ReadablePeriod;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class PeriodFormatter {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final PeriodType f13952Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Locale f13953Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final PeriodParser f13954Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final PeriodPrinter f13955Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public PeriodFormatter(PeriodPrinter periodPrinter, PeriodParser periodParser) {
        this.f13955Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = periodPrinter;
        this.f13954Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = periodParser;
        this.f13953Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
        this.f13952Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
    }

    public PeriodFormatter Wwwwwwwwwwwwwwwwwwwwwww(PeriodType periodType) {
        if (periodType == this.f13952Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return this;
        }
        return new PeriodFormatter(this.f13955Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f13954Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f13953Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, periodType);
    }

    public PeriodFormatter Wwwwwwwwwwwwwwwwwwwwwwww(Locale locale) {
        if (locale != Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() && (locale == null || !locale.equals(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()))) {
            return new PeriodFormatter(this.f13955Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f13954Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, locale, this.f13952Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
        return this;
    }

    public String Wwwwwwwwwwwwwwwwwwwwwwwww(ReadablePeriod readablePeriod) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(readablePeriod);
        PeriodPrinter Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        StringBuffer stringBuffer = new StringBuffer(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(readablePeriod, this.f13953Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww));
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(stringBuffer, readablePeriod, this.f13953Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        return stringBuffer.toString();
    }

    public Period Wwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        return Wwwwwwwwwwwwwwwwwwwwwwwwwww(str).toPeriod();
    }

    public MutablePeriod Wwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        MutablePeriod mutablePeriod = new MutablePeriod(0L, this.f13952Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(mutablePeriod, str, 0, this.f13953Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 >= 0) {
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 >= str.length()) {
                return mutablePeriod;
            }
        } else {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ~Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }
        throw new IllegalArgumentException(FormatUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwww(str, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2));
    }

    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwww(ReadWritablePeriod readWritablePeriod, String str, int i) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(readWritablePeriod);
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(readWritablePeriod, str, i, this.f13953Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public PeriodPrinter Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13955Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public PeriodParser Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13954Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public Locale Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13953Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f13955Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
            return;
        }
        throw new UnsupportedOperationException("Printing not supported");
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ReadablePeriod readablePeriod) {
        if (readablePeriod != null) {
            return;
        }
        throw new IllegalArgumentException("Period must not be null");
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f13954Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
            return;
        }
        throw new UnsupportedOperationException("Parsing not supported");
    }

    public PeriodFormatter(PeriodPrinter periodPrinter, PeriodParser periodParser, Locale locale, PeriodType periodType) {
        this.f13955Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = periodPrinter;
        this.f13954Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = periodParser;
        this.f13953Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = locale;
        this.f13952Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = periodType;
    }
}
