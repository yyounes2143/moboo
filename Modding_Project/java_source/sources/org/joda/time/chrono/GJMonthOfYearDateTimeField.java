package org.joda.time.chrono;

import java.util.Locale;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
final class GJMonthOfYearDateTimeField extends BasicMonthOfYearDateTimeField {
    public GJMonthOfYearDateTimeField(BasicChronology basicChronology) {
        super(basicChronology, 2);
    }

    @Override // org.joda.time.field.BaseDateTimeField
    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, Locale locale) {
        return GJLocaleSymbols.Wwwwwwwwwwwwwwwwwwwwwwwwwww(locale).Wwwwwwwwwwwwwwwww(str);
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public String getAsShortText(int i, Locale locale) {
        return GJLocaleSymbols.Wwwwwwwwwwwwwwwwwwwwwwwwwww(locale).Wwwwwwwwwwwwwwww(i);
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public String getAsText(int i, Locale locale) {
        return GJLocaleSymbols.Wwwwwwwwwwwwwwwwwwwwwwwwwww(locale).Wwwwwwwwwwwwwww(i);
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int getMaximumShortTextLength(Locale locale) {
        return GJLocaleSymbols.Wwwwwwwwwwwwwwwwwwwwwwwwwww(locale).Wwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int getMaximumTextLength(Locale locale) {
        return GJLocaleSymbols.Wwwwwwwwwwwwwwwwwwwwwwwwwww(locale).Wwwwwwwwwwwwwwwwwwwww();
    }
}
