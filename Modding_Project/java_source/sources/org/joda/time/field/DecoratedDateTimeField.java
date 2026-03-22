package org.joda.time.field;

import org.joda.time.DateTimeField;
import org.joda.time.DateTimeFieldType;
import org.joda.time.DurationField;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public abstract class DecoratedDateTimeField extends BaseDateTimeField {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final DateTimeField f13800Wwwwwwwwwwwwwwwwwwwwwwww;

    public DecoratedDateTimeField(DateTimeField dateTimeField, DateTimeFieldType dateTimeFieldType) {
        super(dateTimeFieldType);
        if (dateTimeField != null) {
            if (dateTimeField.isSupported()) {
                this.f13800Wwwwwwwwwwwwwwwwwwwwwwww = dateTimeField;
                return;
            }
            throw new IllegalArgumentException("The field must be supported");
        }
        throw new IllegalArgumentException("The field must not be null");
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int get(long j) {
        return this.f13800Wwwwwwwwwwwwwwwwwwwwwwww.get(j);
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public DurationField getDurationField() {
        return this.f13800Wwwwwwwwwwwwwwwwwwwwwwww.getDurationField();
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int getMaximumValue() {
        return this.f13800Wwwwwwwwwwwwwwwwwwwwwwww.getMaximumValue();
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int getMinimumValue() {
        return this.f13800Wwwwwwwwwwwwwwwwwwwwwwww.getMinimumValue();
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public DurationField getRangeDurationField() {
        return this.f13800Wwwwwwwwwwwwwwwwwwwwwwww.getRangeDurationField();
    }

    public final DateTimeField getWrappedField() {
        return this.f13800Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // org.joda.time.DateTimeField
    public boolean isLenient() {
        return this.f13800Wwwwwwwwwwwwwwwwwwwwwwww.isLenient();
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long roundFloor(long j) {
        return this.f13800Wwwwwwwwwwwwwwwwwwwwwwww.roundFloor(j);
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long set(long j, int i) {
        return this.f13800Wwwwwwwwwwwwwwwwwwwwwwww.set(j, i);
    }
}
