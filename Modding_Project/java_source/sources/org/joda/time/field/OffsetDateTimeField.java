package org.joda.time.field;

import org.joda.time.DateTimeField;
import org.joda.time.DateTimeFieldType;
import org.joda.time.DurationField;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class OffsetDateTimeField extends DecoratedDateTimeField {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f13808Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f13809Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f13810Wwwwwwwwwwwwwwwwwwwwwww;

    public OffsetDateTimeField(DateTimeField dateTimeField, int i) {
        this(dateTimeField, dateTimeField == null ? null : dateTimeField.getType(), i, Integer.MIN_VALUE, Integer.MAX_VALUE);
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long add(long j, int i) {
        long add = super.add(j, i);
        FieldUtils.Wwwwwwwwwwwwwwwwwwwww(this, get(add), this.f13809Wwwwwwwwwwwwwwwwwwwwww, this.f13808Wwwwwwwwwwwwwwwwwwwww);
        return add;
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long addWrapField(long j, int i) {
        return set(j, FieldUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(get(j), i, this.f13809Wwwwwwwwwwwwwwwwwwwwww, this.f13808Wwwwwwwwwwwwwwwwwwwww));
    }

    @Override // org.joda.time.field.DecoratedDateTimeField, org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int get(long j) {
        return super.get(j) + this.f13810Wwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int getLeapAmount(long j) {
        return getWrappedField().getLeapAmount(j);
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public DurationField getLeapDurationField() {
        return getWrappedField().getLeapDurationField();
    }

    @Override // org.joda.time.field.DecoratedDateTimeField, org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int getMaximumValue() {
        return this.f13808Wwwwwwwwwwwwwwwwwwwww;
    }

    @Override // org.joda.time.field.DecoratedDateTimeField, org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int getMinimumValue() {
        return this.f13809Wwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public boolean isLeap(long j) {
        return getWrappedField().isLeap(j);
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
        FieldUtils.Wwwwwwwwwwwwwwwwwwwww(this, i, this.f13809Wwwwwwwwwwwwwwwwwwwwww, this.f13808Wwwwwwwwwwwwwwwwwwwww);
        return super.set(j, i - this.f13810Wwwwwwwwwwwwwwwwwwwwwww);
    }

    public OffsetDateTimeField(DateTimeField dateTimeField, DateTimeFieldType dateTimeFieldType, int i) {
        this(dateTimeField, dateTimeFieldType, i, Integer.MIN_VALUE, Integer.MAX_VALUE);
    }

    public OffsetDateTimeField(DateTimeField dateTimeField, DateTimeFieldType dateTimeFieldType, int i, int i2, int i3) {
        super(dateTimeField, dateTimeFieldType);
        if (i != 0) {
            this.f13810Wwwwwwwwwwwwwwwwwwwwwww = i;
            if (i2 < dateTimeField.getMinimumValue() + i) {
                this.f13809Wwwwwwwwwwwwwwwwwwwwww = dateTimeField.getMinimumValue() + i;
            } else {
                this.f13809Wwwwwwwwwwwwwwwwwwwwww = i2;
            }
            if (i3 > dateTimeField.getMaximumValue() + i) {
                this.f13808Wwwwwwwwwwwwwwwwwwwww = dateTimeField.getMaximumValue() + i;
                return;
            } else {
                this.f13808Wwwwwwwwwwwwwwwwwwwww = i3;
                return;
            }
        }
        throw new IllegalArgumentException("The offset cannot be zero");
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long add(long j, long j2) {
        long add = super.add(j, j2);
        FieldUtils.Wwwwwwwwwwwwwwwwwwwww(this, get(add), this.f13809Wwwwwwwwwwwwwwwwwwwwww, this.f13808Wwwwwwwwwwwwwwwwwwwww);
        return add;
    }
}
