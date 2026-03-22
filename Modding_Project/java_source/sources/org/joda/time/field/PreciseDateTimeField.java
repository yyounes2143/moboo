package org.joda.time.field;

import org.joda.time.DateTimeFieldType;
import org.joda.time.DurationField;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class PreciseDateTimeField extends PreciseDurationDateTimeField {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final DurationField f13811Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f13812Wwwwwwwwwwwwwwwwwwwwww;

    public PreciseDateTimeField(DateTimeFieldType dateTimeFieldType, DurationField durationField, DurationField durationField2) {
        super(dateTimeFieldType, durationField);
        if (durationField2.isPrecise()) {
            int unitMillis = (int) (durationField2.getUnitMillis() / Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            this.f13812Wwwwwwwwwwwwwwwwwwwwww = unitMillis;
            if (unitMillis >= 2) {
                this.f13811Wwwwwwwwwwwwwwwwwwwww = durationField2;
                return;
            }
            throw new IllegalArgumentException("The effective range must be at least 2");
        }
        throw new IllegalArgumentException("Range duration field must be precise");
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long addWrapField(long j, int i) {
        int i2 = get(j);
        return j + ((FieldUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i2, i, getMinimumValue(), getMaximumValue()) - i2) * Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int get(long j) {
        if (j >= 0) {
            return (int) ((j / Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) % this.f13812Wwwwwwwwwwwwwwwwwwwwww);
        }
        return (this.f13812Wwwwwwwwwwwwwwwwwwwwww - 1) + ((int) (((j + 1) / Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) % this.f13812Wwwwwwwwwwwwwwwwwwwwww));
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int getMaximumValue() {
        return this.f13812Wwwwwwwwwwwwwwwwwwwwww - 1;
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public DurationField getRangeDurationField() {
        return this.f13811Wwwwwwwwwwwwwwwwwwwww;
    }

    @Override // org.joda.time.field.PreciseDurationDateTimeField, org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long set(long j, int i) {
        FieldUtils.Wwwwwwwwwwwwwwwwwwwww(this, i, getMinimumValue(), getMaximumValue());
        return j + ((i - get(j)) * this.f13814Wwwwwwwwwwwwwwwwwwwwwwww);
    }
}
