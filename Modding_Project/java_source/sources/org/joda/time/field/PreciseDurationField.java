package org.joda.time.field;

import org.joda.time.DurationFieldType;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class PreciseDurationField extends BaseDurationField {
    private static final long serialVersionUID = -8346152187724495365L;
    private final long iUnitMillis;

    public PreciseDurationField(DurationFieldType durationFieldType, long j) {
        super(durationFieldType);
        this.iUnitMillis = j;
    }

    @Override // org.joda.time.DurationField
    public long add(long j, int i) {
        return FieldUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j, i * this.iUnitMillis);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PreciseDurationField) {
            PreciseDurationField preciseDurationField = (PreciseDurationField) obj;
            if (getType() == preciseDurationField.getType() && this.iUnitMillis == preciseDurationField.iUnitMillis) {
                return true;
            }
        }
        return false;
    }

    @Override // org.joda.time.DurationField
    public long getDifferenceAsLong(long j, long j2) {
        return FieldUtils.Wwwwwwwwwwwwwwwwwwwwwww(j, j2) / this.iUnitMillis;
    }

    @Override // org.joda.time.DurationField
    public long getMillis(int i, long j) {
        return i * this.iUnitMillis;
    }

    @Override // org.joda.time.DurationField
    public final long getUnitMillis() {
        return this.iUnitMillis;
    }

    @Override // org.joda.time.DurationField
    public long getValueAsLong(long j, long j2) {
        return j / this.iUnitMillis;
    }

    public int hashCode() {
        long j = this.iUnitMillis;
        return ((int) (j ^ (j >>> 32))) + getType().hashCode();
    }

    @Override // org.joda.time.DurationField
    public final boolean isPrecise() {
        return true;
    }

    @Override // org.joda.time.DurationField
    public long getMillis(long j, long j2) {
        return FieldUtils.Wwwwwwwwwwwwwwwwwwwwwwwww(j, this.iUnitMillis);
    }

    @Override // org.joda.time.DurationField
    public long add(long j, long j2) {
        return FieldUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j, FieldUtils.Wwwwwwwwwwwwwwwwwwwwwwwww(j2, this.iUnitMillis));
    }
}
