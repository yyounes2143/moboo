package org.joda.time.chrono;

import java.util.Locale;
import org.joda.time.DateTimeFieldType;
import org.joda.time.DurationField;
import org.joda.time.field.PreciseDurationDateTimeField;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
final class GJDayOfWeekDateTimeField extends PreciseDurationDateTimeField {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final BasicChronology f13755Wwwwwwwwwwwwwwwwwwwwww;

    public GJDayOfWeekDateTimeField(BasicChronology basicChronology, DurationField durationField) {
        super(DateTimeFieldType.dayOfWeek(), durationField);
        this.f13755Wwwwwwwwwwwwwwwwwwwwww = basicChronology;
    }

    @Override // org.joda.time.field.BaseDateTimeField
    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, Locale locale) {
        return GJLocaleSymbols.Wwwwwwwwwwwwwwwwwwwwwwwwwww(locale).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int get(long j) {
        return this.f13755Wwwwwwwwwwwwwwwwwwwwww.getDayOfWeek(j);
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public String getAsShortText(int i, Locale locale) {
        return GJLocaleSymbols.Wwwwwwwwwwwwwwwwwwwwwwwwwww(locale).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i);
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public String getAsText(int i, Locale locale) {
        return GJLocaleSymbols.Wwwwwwwwwwwwwwwwwwwwwwwwwww(locale).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i);
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int getMaximumShortTextLength(Locale locale) {
        return GJLocaleSymbols.Wwwwwwwwwwwwwwwwwwwwwwwwwww(locale).Wwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int getMaximumTextLength(Locale locale) {
        return GJLocaleSymbols.Wwwwwwwwwwwwwwwwwwwwwwwwwww(locale).Wwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int getMaximumValue() {
        return 7;
    }

    @Override // org.joda.time.field.PreciseDurationDateTimeField, org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int getMinimumValue() {
        return 1;
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public DurationField getRangeDurationField() {
        return this.f13755Wwwwwwwwwwwwwwwwwwwwww.weeks();
    }
}
