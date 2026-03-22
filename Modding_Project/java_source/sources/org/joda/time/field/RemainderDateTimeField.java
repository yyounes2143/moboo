package org.joda.time.field;

import org.joda.time.DateTimeField;
import org.joda.time.DateTimeFieldType;
import org.joda.time.DurationField;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class RemainderDateTimeField extends DecoratedDateTimeField {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final DurationField f13815Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final DurationField f13816Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f13817Wwwwwwwwwwwwwwwwwwwwwww;

    public RemainderDateTimeField(DateTimeField dateTimeField, DurationField durationField, DateTimeFieldType dateTimeFieldType, int i) {
        super(dateTimeField, dateTimeFieldType);
        if (i >= 2) {
            this.f13815Wwwwwwwwwwwwwwwwwwwww = durationField;
            this.f13816Wwwwwwwwwwwwwwwwwwwwww = dateTimeField.getDurationField();
            this.f13817Wwwwwwwwwwwwwwwwwwwwwww = i;
            return;
        }
        throw new IllegalArgumentException("The divisor must be at least 2");
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        if (i >= 0) {
            return i / this.f13817Wwwwwwwwwwwwwwwwwwwwwww;
        }
        return ((i + 1) / this.f13817Wwwwwwwwwwwwwwwwwwwwwww) - 1;
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long addWrapField(long j, int i) {
        return set(j, FieldUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(get(j), i, 0, this.f13817Wwwwwwwwwwwwwwwwwwwwwww - 1));
    }

    @Override // org.joda.time.field.DecoratedDateTimeField, org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int get(long j) {
        int i = getWrappedField().get(j);
        if (i >= 0) {
            return i % this.f13817Wwwwwwwwwwwwwwwwwwwwwww;
        }
        int i2 = this.f13817Wwwwwwwwwwwwwwwwwwwwwww;
        return (i2 - 1) + ((i + 1) % i2);
    }

    @Override // org.joda.time.field.DecoratedDateTimeField, org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public DurationField getDurationField() {
        return this.f13816Wwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // org.joda.time.field.DecoratedDateTimeField, org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int getMaximumValue() {
        return this.f13817Wwwwwwwwwwwwwwwwwwwwwww - 1;
    }

    @Override // org.joda.time.field.DecoratedDateTimeField, org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int getMinimumValue() {
        return 0;
    }

    @Override // org.joda.time.field.DecoratedDateTimeField, org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public DurationField getRangeDurationField() {
        return this.f13815Wwwwwwwwwwwwwwwwwwwww;
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long remainder(long j) {
        return getWrappedField().remainder(j);
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long roundCeiling(long j) {
        return getWrappedField().roundCeiling(j);
    }

    @Override // org.joda.time.field.DecoratedDateTimeField, org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long roundFloor(long j) {
        return getWrappedField().roundFloor(j);
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long roundHalfCeiling(long j) {
        return getWrappedField().roundHalfCeiling(j);
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long roundHalfEven(long j) {
        return getWrappedField().roundHalfEven(j);
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long roundHalfFloor(long j) {
        return getWrappedField().roundHalfFloor(j);
    }

    @Override // org.joda.time.field.DecoratedDateTimeField, org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long set(long j, int i) {
        FieldUtils.Wwwwwwwwwwwwwwwwwwwww(this, i, 0, this.f13817Wwwwwwwwwwwwwwwwwwwwwww - 1);
        return getWrappedField().set(j, (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(getWrappedField().get(j)) * this.f13817Wwwwwwwwwwwwwwwwwwwwwww) + i);
    }

    public RemainderDateTimeField(DividedDateTimeField dividedDateTimeField) {
        this(dividedDateTimeField, dividedDateTimeField.getType());
    }

    public RemainderDateTimeField(DividedDateTimeField dividedDateTimeField, DateTimeFieldType dateTimeFieldType) {
        this(dividedDateTimeField, dividedDateTimeField.getWrappedField().getDurationField(), dateTimeFieldType);
    }

    public RemainderDateTimeField(DividedDateTimeField dividedDateTimeField, DurationField durationField, DateTimeFieldType dateTimeFieldType) {
        super(dividedDateTimeField.getWrappedField(), dateTimeFieldType);
        this.f13817Wwwwwwwwwwwwwwwwwwwwwww = dividedDateTimeField.f13805Wwwwwwwwwwwwwwwwwwwwwww;
        this.f13816Wwwwwwwwwwwwwwwwwwwwww = durationField;
        this.f13815Wwwwwwwwwwwwwwwwwwwww = dividedDateTimeField.f13804Wwwwwwwwwwwwwwwwwwwwww;
    }
}
