package org.joda.time.field;

import org.joda.time.DateTimeFieldType;
import org.joda.time.DurationField;
import org.joda.time.DurationFieldType;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public abstract class ImpreciseDateTimeField extends BaseDateTimeField {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final DurationField f13806Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f13807Wwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public final class LinkedDurationField extends BaseDurationField {
        private static final long serialVersionUID = -203813474600094134L;

        public LinkedDurationField(DurationFieldType durationFieldType) {
            super(durationFieldType);
        }

        @Override // org.joda.time.DurationField
        public long add(long j, int i) {
            return ImpreciseDateTimeField.this.add(j, i);
        }

        @Override // org.joda.time.field.BaseDurationField, org.joda.time.DurationField
        public int getDifference(long j, long j2) {
            return ImpreciseDateTimeField.this.getDifference(j, j2);
        }

        @Override // org.joda.time.DurationField
        public long getDifferenceAsLong(long j, long j2) {
            return ImpreciseDateTimeField.this.getDifferenceAsLong(j, j2);
        }

        @Override // org.joda.time.DurationField
        public long getMillis(int i, long j) {
            return ImpreciseDateTimeField.this.add(j, i) - j;
        }

        @Override // org.joda.time.DurationField
        public long getUnitMillis() {
            return ImpreciseDateTimeField.this.f13807Wwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Override // org.joda.time.field.BaseDurationField, org.joda.time.DurationField
        public int getValue(long j, long j2) {
            return ImpreciseDateTimeField.this.getDifference(j + j2, j2);
        }

        @Override // org.joda.time.DurationField
        public long getValueAsLong(long j, long j2) {
            return ImpreciseDateTimeField.this.getDifferenceAsLong(j + j2, j2);
        }

        @Override // org.joda.time.DurationField
        public boolean isPrecise() {
            return false;
        }

        @Override // org.joda.time.DurationField
        public long add(long j, long j2) {
            return ImpreciseDateTimeField.this.add(j, j2);
        }

        @Override // org.joda.time.DurationField
        public long getMillis(long j, long j2) {
            return ImpreciseDateTimeField.this.add(j2, j) - j2;
        }
    }

    public ImpreciseDateTimeField(DateTimeFieldType dateTimeFieldType, long j) {
        super(dateTimeFieldType);
        this.f13807Wwwwwwwwwwwwwwwwwwwwwwww = j;
        this.f13806Wwwwwwwwwwwwwwwwwwwwwww = new LinkedDurationField(dateTimeFieldType.getDurationType());
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public abstract long add(long j, int i);

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public abstract long add(long j, long j2);

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public int getDifference(long j, long j2) {
        return FieldUtils.Wwwwwwwwwwwwwwwwwwwwww(getDifferenceAsLong(j, j2));
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public long getDifferenceAsLong(long j, long j2) {
        if (j < j2) {
            return -getDifferenceAsLong(j2, j);
        }
        long j3 = (j - j2) / this.f13807Wwwwwwwwwwwwwwwwwwwwwwww;
        if (add(j2, j3) >= j) {
            if (add(j2, j3) > j) {
                do {
                    j3--;
                } while (add(j2, j3) > j);
                return j3;
            }
            return j3;
        }
        while (true) {
            long j4 = j3 + 1;
            if (add(j2, j4) > j) {
                return j3;
            }
            j3 = j4;
        }
    }

    @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
    public final DurationField getDurationField() {
        return this.f13806Wwwwwwwwwwwwwwwwwwwwwww;
    }
}
