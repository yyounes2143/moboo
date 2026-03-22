package org.joda.time.chrono;

import java.util.Locale;
import org.joda.time.DateTimeFieldType;
import org.joda.time.DurationField;
import org.joda.time.DurationFieldType;
import org.joda.time.field.BaseDateTimeField;
import org.joda.time.field.FieldUtils;
import org.joda.time.field.UnsupportedDurationField;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
final class GJEraDateTimeField extends BaseDateTimeField {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final BasicChronology f13756Wwwwwwwwwwwwwwwwwwwwwwww;

    public GJEraDateTimeField(BasicChronology basicChronology) {
        super(DateTimeFieldType.era());
        this.f13756Wwwwwwwwwwwwwwwwwwwwwwww = basicChronology;
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int get(long j) {
        if (this.f13756Wwwwwwwwwwwwwwwwwwwwwwww.getYear(j) <= 0) {
            return 0;
        }
        return 1;
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public String getAsText(int i, Locale locale) {
        return GJLocaleSymbols.Wwwwwwwwwwwwwwwwwwwwwwwwwww(locale).Wwwwwwwwwwwwwwwwwwwwwwwwwwww(i);
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public DurationField getDurationField() {
        return UnsupportedDurationField.getInstance(DurationFieldType.eras());
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int getMaximumTextLength(Locale locale) {
        return GJLocaleSymbols.Wwwwwwwwwwwwwwwwwwwwwwwwwww(locale).Wwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int getMaximumValue() {
        return 1;
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int getMinimumValue() {
        return 0;
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public DurationField getRangeDurationField() {
        return null;
    }

    @Override // org.joda.time.DateTimeField
    public boolean isLenient() {
        return false;
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long roundCeiling(long j) {
        if (get(j) == 0) {
            return this.f13756Wwwwwwwwwwwwwwwwwwwwwwww.setYear(0L, 1);
        }
        return Long.MAX_VALUE;
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long roundFloor(long j) {
        if (get(j) == 1) {
            return this.f13756Wwwwwwwwwwwwwwwwwwwwwwww.setYear(0L, 1);
        }
        return Long.MIN_VALUE;
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long roundHalfCeiling(long j) {
        return roundFloor(j);
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long roundHalfEven(long j) {
        return roundFloor(j);
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long roundHalfFloor(long j) {
        return roundFloor(j);
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long set(long j, int i) {
        FieldUtils.Wwwwwwwwwwwwwwwwwwwww(this, i, 0, 1);
        if (get(j) != i) {
            return this.f13756Wwwwwwwwwwwwwwwwwwwwwwww.setYear(j, -this.f13756Wwwwwwwwwwwwwwwwwwwwwwww.getYear(j));
        }
        return j;
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long set(long j, String str, Locale locale) {
        return set(j, GJLocaleSymbols.Wwwwwwwwwwwwwwwwwwwwwwwwwww(locale).Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(str));
    }
}
