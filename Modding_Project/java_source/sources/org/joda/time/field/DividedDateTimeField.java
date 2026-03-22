package org.joda.time.field;

import org.joda.time.DateTimeField;
import org.joda.time.DateTimeFieldType;
import org.joda.time.DurationField;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class DividedDateTimeField extends DecoratedDateTimeField {

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f13801Wwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f13802Wwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final DurationField f13803Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final DurationField f13804Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f13805Wwwwwwwwwwwwwwwwwwwwwww;

    public DividedDateTimeField(DateTimeField dateTimeField, DateTimeFieldType dateTimeFieldType, int i) {
        this(dateTimeField, dateTimeField.getRangeDurationField(), dateTimeFieldType, i);
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        if (i >= 0) {
            return i % this.f13805Wwwwwwwwwwwwwwwwwwwwwww;
        }
        int i2 = this.f13805Wwwwwwwwwwwwwwwwwwwwwww;
        return (i2 - 1) + ((i + 1) % i2);
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long add(long j, int i) {
        return getWrappedField().add(j, i * this.f13805Wwwwwwwwwwwwwwwwwwwwwww);
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long addWrapField(long j, int i) {
        return set(j, FieldUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(get(j), i, this.f13802Wwwwwwwwwwwwwwwwwwww, this.f13801Wwwwwwwwwwwwwwwwwww));
    }

    @Override // org.joda.time.field.DecoratedDateTimeField, org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int get(long j) {
        int i = getWrappedField().get(j);
        if (i >= 0) {
            return i / this.f13805Wwwwwwwwwwwwwwwwwwwwwww;
        }
        return ((i + 1) / this.f13805Wwwwwwwwwwwwwwwwwwwwwww) - 1;
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int getDifference(long j, long j2) {
        return getWrappedField().getDifference(j, j2) / this.f13805Wwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long getDifferenceAsLong(long j, long j2) {
        return getWrappedField().getDifferenceAsLong(j, j2) / this.f13805Wwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // org.joda.time.field.DecoratedDateTimeField, org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public DurationField getDurationField() {
        return this.f13804Wwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // org.joda.time.field.DecoratedDateTimeField, org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int getMaximumValue() {
        return this.f13801Wwwwwwwwwwwwwwwwwww;
    }

    @Override // org.joda.time.field.DecoratedDateTimeField, org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int getMinimumValue() {
        return this.f13802Wwwwwwwwwwwwwwwwwwww;
    }

    @Override // org.joda.time.field.DecoratedDateTimeField, org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public DurationField getRangeDurationField() {
        DurationField durationField = this.f13803Wwwwwwwwwwwwwwwwwwwww;
        if (durationField != null) {
            return durationField;
        }
        return super.getRangeDurationField();
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long remainder(long j) {
        return set(j, get(getWrappedField().remainder(j)));
    }

    @Override // org.joda.time.field.DecoratedDateTimeField, org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long roundFloor(long j) {
        DateTimeField wrappedField = getWrappedField();
        return wrappedField.roundFloor(wrappedField.set(j, get(j) * this.f13805Wwwwwwwwwwwwwwwwwwwwwww));
    }

    @Override // org.joda.time.field.DecoratedDateTimeField, org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long set(long j, int i) {
        FieldUtils.Wwwwwwwwwwwwwwwwwwwww(this, i, this.f13802Wwwwwwwwwwwwwwwwwwww, this.f13801Wwwwwwwwwwwwwwwwwww);
        return getWrappedField().set(j, (i * this.f13805Wwwwwwwwwwwwwwwwwwwwwww) + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(getWrappedField().get(j)));
    }

    public DividedDateTimeField(DateTimeField dateTimeField, DurationField durationField, DateTimeFieldType dateTimeFieldType, int i) {
        super(dateTimeField, dateTimeFieldType);
        if (i >= 2) {
            DurationField durationField2 = dateTimeField.getDurationField();
            if (durationField2 == null) {
                this.f13804Wwwwwwwwwwwwwwwwwwwwww = null;
            } else {
                this.f13804Wwwwwwwwwwwwwwwwwwwwww = new ScaledDurationField(durationField2, dateTimeFieldType.getDurationType(), i);
            }
            this.f13803Wwwwwwwwwwwwwwwwwwwww = durationField;
            this.f13805Wwwwwwwwwwwwwwwwwwwwwww = i;
            int minimumValue = dateTimeField.getMinimumValue();
            int i2 = minimumValue >= 0 ? minimumValue / i : ((minimumValue + 1) / i) - 1;
            int maximumValue = dateTimeField.getMaximumValue();
            int i3 = maximumValue >= 0 ? maximumValue / i : ((maximumValue + 1) / i) - 1;
            this.f13802Wwwwwwwwwwwwwwwwwwww = i2;
            this.f13801Wwwwwwwwwwwwwwwwwww = i3;
            return;
        }
        throw new IllegalArgumentException("The divisor must be at least 2");
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long add(long j, long j2) {
        return getWrappedField().add(j, j2 * this.f13805Wwwwwwwwwwwwwwwwwwwwwww);
    }
}
