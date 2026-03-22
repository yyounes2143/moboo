package org.joda.time.field;

import org.joda.time.Chronology;
import org.joda.time.DateTimeField;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public final class SkipUndoDateTimeField extends DelegatedDateTimeField {
    private static final long serialVersionUID = -5875876968979L;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public transient int f13819Wwwwwwwwwwwwwwwwwwwwwwwww;
    private final Chronology iChronology;
    private final int iSkip;

    public SkipUndoDateTimeField(Chronology chronology, DateTimeField dateTimeField) {
        this(chronology, dateTimeField, 0);
    }

    private Object readResolve() {
        return getType().getField(this.iChronology);
    }

    @Override // org.joda.time.field.DelegatedDateTimeField, org.joda.time.DateTimeField
    public int get(long j) {
        int i = super.get(j);
        if (i < this.iSkip) {
            return i + 1;
        }
        return i;
    }

    @Override // org.joda.time.field.DelegatedDateTimeField, org.joda.time.DateTimeField
    public int getMinimumValue() {
        return this.f13819Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // org.joda.time.field.DelegatedDateTimeField, org.joda.time.DateTimeField
    public long set(long j, int i) {
        FieldUtils.Wwwwwwwwwwwwwwwwwwwww(this, i, this.f13819Wwwwwwwwwwwwwwwwwwwwwwwww, getMaximumValue());
        if (i <= this.iSkip) {
            i--;
        }
        return super.set(j, i);
    }

    public SkipUndoDateTimeField(Chronology chronology, DateTimeField dateTimeField, int i) {
        super(dateTimeField);
        this.iChronology = chronology;
        int minimumValue = super.getMinimumValue();
        if (minimumValue < i) {
            this.f13819Wwwwwwwwwwwwwwwwwwwwwwwww = minimumValue + 1;
        } else if (minimumValue == i + 1) {
            this.f13819Wwwwwwwwwwwwwwwwwwwwwwwww = i;
        } else {
            this.f13819Wwwwwwwwwwwwwwwwwwwwwwwww = minimumValue;
        }
        this.iSkip = i;
    }
}
