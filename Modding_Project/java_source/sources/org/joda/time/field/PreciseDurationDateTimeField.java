package org.joda.time.field;

import org.joda.time.DateTimeFieldType;
import org.joda.time.DurationField;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public abstract class PreciseDurationDateTimeField extends BaseDateTimeField {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final DurationField f13813Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f13814Wwwwwwwwwwwwwwwwwwwwwwww;

    public PreciseDurationDateTimeField(DateTimeFieldType dateTimeFieldType, DurationField durationField) {
        super(dateTimeFieldType);
        if (durationField.isPrecise()) {
            long unitMillis = durationField.getUnitMillis();
            this.f13814Wwwwwwwwwwwwwwwwwwwwwwww = unitMillis;
            if (unitMillis >= 1) {
                this.f13813Wwwwwwwwwwwwwwwwwwwwwww = durationField;
                return;
            }
            throw new IllegalArgumentException("The unit milliseconds must be at least 1");
        }
        throw new IllegalArgumentException("Unit duration field must be precise");
    }

    public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13814Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j, int i) {
        return getMaximumValue(j);
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public DurationField getDurationField() {
        return this.f13813Wwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int getMinimumValue() {
        return 0;
    }

    @Override // org.joda.time.DateTimeField
    public boolean isLenient() {
        return false;
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long remainder(long j) {
        if (j >= 0) {
            return j % this.f13814Wwwwwwwwwwwwwwwwwwwwwwww;
        }
        long j2 = this.f13814Wwwwwwwwwwwwwwwwwwwwwwww;
        return (((j + 1) % j2) + j2) - 1;
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long roundCeiling(long j) {
        if (j > 0) {
            long j2 = j - 1;
            long j3 = this.f13814Wwwwwwwwwwwwwwwwwwwwwwww;
            return (j2 - (j2 % j3)) + j3;
        }
        return j - (j % this.f13814Wwwwwwwwwwwwwwwwwwwwwwww);
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long roundFloor(long j) {
        long j2;
        if (j >= 0) {
            j2 = j % this.f13814Wwwwwwwwwwwwwwwwwwwwwwww;
        } else {
            long j3 = j + 1;
            j2 = this.f13814Wwwwwwwwwwwwwwwwwwwwwwww;
            j = j3 - (j3 % j2);
        }
        return j - j2;
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long set(long j, int i) {
        FieldUtils.Wwwwwwwwwwwwwwwwwwwww(this, i, getMinimumValue(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j, i));
        return j + ((i - get(j)) * this.f13814Wwwwwwwwwwwwwwwwwwwwwwww);
    }
}
