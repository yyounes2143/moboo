package org.joda.time.field;

import java.io.Serializable;
import java.util.HashMap;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.joda.time.DurationField;
import org.joda.time.DurationFieldType;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public final class UnsupportedDurationField extends DurationField implements Serializable {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static HashMap<DurationFieldType, UnsupportedDurationField> f13821Wwwwwwwwwwwwwwwwwwwwwwwww = null;
    private static final long serialVersionUID = -6390301302770925357L;
    private final DurationFieldType iType;

    public UnsupportedDurationField(DurationFieldType durationFieldType) {
        this.iType = durationFieldType;
    }

    public static synchronized UnsupportedDurationField getInstance(DurationFieldType durationFieldType) {
        UnsupportedDurationField unsupportedDurationField;
        synchronized (UnsupportedDurationField.class) {
            try {
                HashMap<DurationFieldType, UnsupportedDurationField> hashMap = f13821Wwwwwwwwwwwwwwwwwwwwwwwww;
                if (hashMap == null) {
                    f13821Wwwwwwwwwwwwwwwwwwwwwwwww = new HashMap<>(7);
                    unsupportedDurationField = null;
                } else {
                    unsupportedDurationField = hashMap.get(durationFieldType);
                }
                if (unsupportedDurationField == null) {
                    unsupportedDurationField = new UnsupportedDurationField(durationFieldType);
                    f13821Wwwwwwwwwwwwwwwwwwwwwwwww.put(durationFieldType, unsupportedDurationField);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return unsupportedDurationField;
    }

    private Object readResolve() {
        return getInstance(this.iType);
    }

    public final UnsupportedOperationException Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return new UnsupportedOperationException(this.iType + " field is unsupported");
    }

    @Override // org.joda.time.DurationField
    public long add(long j, int i) {
        throw Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // java.lang.Comparable
    public int compareTo(DurationField durationField) {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UnsupportedDurationField)) {
            return false;
        }
        UnsupportedDurationField unsupportedDurationField = (UnsupportedDurationField) obj;
        if (unsupportedDurationField.getName() == null) {
            if (getName() == null) {
                return true;
            }
            return false;
        }
        return unsupportedDurationField.getName().equals(getName());
    }

    @Override // org.joda.time.DurationField
    public int getDifference(long j, long j2) {
        throw Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // org.joda.time.DurationField
    public long getDifferenceAsLong(long j, long j2) {
        throw Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // org.joda.time.DurationField
    public long getMillis(int i) {
        throw Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // org.joda.time.DurationField
    public String getName() {
        return this.iType.getName();
    }

    @Override // org.joda.time.DurationField
    public final DurationFieldType getType() {
        return this.iType;
    }

    @Override // org.joda.time.DurationField
    public long getUnitMillis() {
        return 0L;
    }

    @Override // org.joda.time.DurationField
    public int getValue(long j) {
        throw Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // org.joda.time.DurationField
    public long getValueAsLong(long j) {
        throw Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public int hashCode() {
        return getName().hashCode();
    }

    @Override // org.joda.time.DurationField
    public boolean isPrecise() {
        return true;
    }

    @Override // org.joda.time.DurationField
    public boolean isSupported() {
        return false;
    }

    @Override // org.joda.time.DurationField
    public String toString() {
        return "UnsupportedDurationField[" + getName() + AbstractJsonLexerKt.END_LIST;
    }

    @Override // org.joda.time.DurationField
    public long add(long j, long j2) {
        throw Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // org.joda.time.DurationField
    public long getMillis(long j) {
        throw Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // org.joda.time.DurationField
    public int getValue(long j, long j2) {
        throw Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // org.joda.time.DurationField
    public long getValueAsLong(long j, long j2) {
        throw Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // org.joda.time.DurationField
    public long getMillis(int i, long j) {
        throw Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // org.joda.time.DurationField
    public long getMillis(long j, long j2) {
        throw Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }
}
