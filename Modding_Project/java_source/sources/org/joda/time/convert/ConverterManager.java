package org.joda.time.convert;

import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public final class ConverterManager {
    private static ConverterManager INSTANCE;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ConverterSet f13790Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ConverterSet f13791Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ConverterSet f13792Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ConverterSet f13793Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ConverterSet f13794Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public ConverterManager() {
        ReadableInstantConverter readableInstantConverter = ReadableInstantConverter.INSTANCE;
        StringConverter stringConverter = StringConverter.INSTANCE;
        CalendarConverter calendarConverter = CalendarConverter.INSTANCE;
        DateConverter dateConverter = DateConverter.INSTANCE;
        LongConverter longConverter = LongConverter.INSTANCE;
        NullConverter nullConverter = NullConverter.INSTANCE;
        this.f13794Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ConverterSet(new Converter[]{readableInstantConverter, stringConverter, calendarConverter, dateConverter, longConverter, nullConverter});
        this.f13793Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ConverterSet(new Converter[]{ReadablePartialConverter.INSTANCE, readableInstantConverter, stringConverter, calendarConverter, dateConverter, longConverter, nullConverter});
        ReadableDurationConverter readableDurationConverter = ReadableDurationConverter.INSTANCE;
        ReadableIntervalConverter readableIntervalConverter = ReadableIntervalConverter.INSTANCE;
        this.f13792Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ConverterSet(new Converter[]{readableDurationConverter, readableIntervalConverter, stringConverter, longConverter, nullConverter});
        this.f13791Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ConverterSet(new Converter[]{readableDurationConverter, ReadablePeriodConverter.INSTANCE, readableIntervalConverter, stringConverter, nullConverter});
        this.f13790Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ConverterSet(new Converter[]{readableIntervalConverter, stringConverter, nullConverter});
    }

    public static ConverterManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (INSTANCE == null) {
            INSTANCE = new ConverterManager();
        }
        return INSTANCE;
    }

    public PeriodConverter Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Object obj) {
        Class<?> cls;
        String name;
        ConverterSet converterSet = this.f13791Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (obj == null) {
            cls = null;
        } else {
            cls = obj.getClass();
        }
        PeriodConverter periodConverter = (PeriodConverter) converterSet.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls);
        if (periodConverter != null) {
            return periodConverter;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("No period converter found for type: ");
        if (obj == null) {
            name = AbstractJsonLexerKt.NULL;
        } else {
            name = obj.getClass().getName();
        }
        sb.append(name);
        throw new IllegalArgumentException(sb.toString());
    }

    public PartialConverter Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Object obj) {
        Class<?> cls;
        String name;
        ConverterSet converterSet = this.f13793Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (obj == null) {
            cls = null;
        } else {
            cls = obj.getClass();
        }
        PartialConverter partialConverter = (PartialConverter) converterSet.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls);
        if (partialConverter != null) {
            return partialConverter;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("No partial converter found for type: ");
        if (obj == null) {
            name = AbstractJsonLexerKt.NULL;
        } else {
            name = obj.getClass().getName();
        }
        sb.append(name);
        throw new IllegalArgumentException(sb.toString());
    }

    public IntervalConverter Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Object obj) {
        Class<?> cls;
        String name;
        ConverterSet converterSet = this.f13790Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (obj == null) {
            cls = null;
        } else {
            cls = obj.getClass();
        }
        IntervalConverter intervalConverter = (IntervalConverter) converterSet.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls);
        if (intervalConverter != null) {
            return intervalConverter;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("No interval converter found for type: ");
        if (obj == null) {
            name = AbstractJsonLexerKt.NULL;
        } else {
            name = obj.getClass().getName();
        }
        sb.append(name);
        throw new IllegalArgumentException(sb.toString());
    }

    public InstantConverter Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Object obj) {
        Class<?> cls;
        String name;
        ConverterSet converterSet = this.f13794Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (obj == null) {
            cls = null;
        } else {
            cls = obj.getClass();
        }
        InstantConverter instantConverter = (InstantConverter) converterSet.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls);
        if (instantConverter != null) {
            return instantConverter;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("No instant converter found for type: ");
        if (obj == null) {
            name = AbstractJsonLexerKt.NULL;
        } else {
            name = obj.getClass().getName();
        }
        sb.append(name);
        throw new IllegalArgumentException(sb.toString());
    }

    public DurationConverter Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Object obj) {
        Class<?> cls;
        String name;
        ConverterSet converterSet = this.f13792Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (obj == null) {
            cls = null;
        } else {
            cls = obj.getClass();
        }
        DurationConverter durationConverter = (DurationConverter) converterSet.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls);
        if (durationConverter != null) {
            return durationConverter;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("No duration converter found for type: ");
        if (obj == null) {
            name = AbstractJsonLexerKt.NULL;
        } else {
            name = obj.getClass().getName();
        }
        sb.append(name);
        throw new IllegalArgumentException(sb.toString());
    }

    public String toString() {
        return "ConverterManager[" + this.f13794Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() + " instant," + this.f13793Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() + " partial," + this.f13792Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() + " duration," + this.f13791Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() + " period," + this.f13790Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() + " interval]";
    }
}
