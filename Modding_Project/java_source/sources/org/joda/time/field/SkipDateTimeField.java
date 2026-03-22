package org.joda.time.field;

import org.joda.time.Chronology;
import org.joda.time.DateTimeField;
import org.joda.time.DateTimeFieldType;
import org.joda.time.IllegalFieldValueException;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public final class SkipDateTimeField extends DelegatedDateTimeField {
    private static final long serialVersionUID = -8869148464118507846L;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public transient int f13818Wwwwwwwwwwwwwwwwwwwwwwwww;
    private final Chronology iChronology;
    private final int iSkip;

    public SkipDateTimeField(Chronology chronology, DateTimeField dateTimeField) {
        this(chronology, dateTimeField, 0);
    }

    private Object readResolve() {
        return getType().getField(this.iChronology);
    }

    @Override // org.joda.time.field.DelegatedDateTimeField, org.joda.time.DateTimeField
    public int get(long j) {
        int i = super.get(j);
        if (i <= this.iSkip) {
            return i - 1;
        }
        return i;
    }

    @Override // org.joda.time.field.DelegatedDateTimeField, org.joda.time.DateTimeField
    public int getMinimumValue() {
        return this.f13818Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // org.joda.time.field.DelegatedDateTimeField, org.joda.time.DateTimeField
    public long set(long j, int i) {
        FieldUtils.Wwwwwwwwwwwwwwwwwwwww(this, i, this.f13818Wwwwwwwwwwwwwwwwwwwwwwwww, getMaximumValue());
        int i2 = this.iSkip;
        if (i <= i2) {
            if (i != i2) {
                i++;
            } else {
                throw new IllegalFieldValueException(DateTimeFieldType.year(), Integer.valueOf(i), (Number) null, (Number) null);
            }
        }
        return super.set(j, i);
    }

    public SkipDateTimeField(Chronology chronology, DateTimeField dateTimeField, int i) {
        super(dateTimeField);
        this.iChronology = chronology;
        int minimumValue = super.getMinimumValue();
        if (minimumValue < i) {
            this.f13818Wwwwwwwwwwwwwwwwwwwwwwwww = minimumValue - 1;
        } else if (minimumValue == i) {
            this.f13818Wwwwwwwwwwwwwwwwwwwwwwwww = i + 1;
        } else {
            this.f13818Wwwwwwwwwwwwwwwwwwwwwwwww = minimumValue;
        }
        this.iSkip = i;
    }
}
