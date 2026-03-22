package org.joda.time;

import java.io.Serializable;
import java.util.Comparator;
import org.joda.time.convert.ConverterManager;
import org.joda.time.convert.InstantConverter;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class DateTimeComparator implements Comparator<Object>, Serializable {
    private static final long serialVersionUID = -6097339773320178364L;
    private final DateTimeFieldType iLowerLimit;
    private final DateTimeFieldType iUpperLimit;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final DateTimeComparator f13574Wwwwwwwwwwwwwwwwwwwwwwwww = new DateTimeComparator(null, null);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final DateTimeComparator f13573Wwwwwwwwwwwwwwwwwwwwwwww = new DateTimeComparator(DateTimeFieldType.dayOfYear(), null);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final DateTimeComparator f13572Wwwwwwwwwwwwwwwwwwwwwww = new DateTimeComparator(null, DateTimeFieldType.dayOfYear());

    public DateTimeComparator(DateTimeFieldType dateTimeFieldType, DateTimeFieldType dateTimeFieldType2) {
        this.iLowerLimit = dateTimeFieldType;
        this.iUpperLimit = dateTimeFieldType2;
    }

    public static DateTimeComparator getDateOnlyInstance() {
        return f13573Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    public static DateTimeComparator getInstance() {
        return f13574Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public static DateTimeComparator getTimeOnlyInstance() {
        return f13572Wwwwwwwwwwwwwwwwwwwwwww;
    }

    private Object readResolve() {
        return getInstance(this.iLowerLimit, this.iUpperLimit);
    }

    @Override // java.util.Comparator
    public int compare(Object obj, Object obj2) {
        InstantConverter Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ConverterManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obj);
        Chronology Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obj, null);
        long Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwww(obj, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        if (obj == obj2) {
            return 0;
        }
        InstantConverter Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = ConverterManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obj2);
        Chronology Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obj2, null);
        long Wwwwwwwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.Wwwwwwwwwwwwwwwwwwwwwwwwwww(obj2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3);
        DateTimeFieldType dateTimeFieldType = this.iLowerLimit;
        if (dateTimeFieldType != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = dateTimeFieldType.getField(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2).roundFloor(Wwwwwwwwwwwwwwwwwwwwwwwwwww2);
            Wwwwwwwwwwwwwwwwwwwwwwwwwww3 = this.iLowerLimit.getField(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3).roundFloor(Wwwwwwwwwwwwwwwwwwwwwwwwwww3);
        }
        DateTimeFieldType dateTimeFieldType2 = this.iUpperLimit;
        if (dateTimeFieldType2 != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = dateTimeFieldType2.getField(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2).remainder(Wwwwwwwwwwwwwwwwwwwwwwwwwww2);
            Wwwwwwwwwwwwwwwwwwwwwwwwwww3 = this.iUpperLimit.getField(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3).remainder(Wwwwwwwwwwwwwwwwwwwwwwwwwww3);
        }
        int i = (Wwwwwwwwwwwwwwwwwwwwwwwwwww2 > Wwwwwwwwwwwwwwwwwwwwwwwwwww3 ? 1 : (Wwwwwwwwwwwwwwwwwwwwwwwwwww2 == Wwwwwwwwwwwwwwwwwwwwwwwwwww3 ? 0 : -1));
        if (i < 0) {
            return -1;
        }
        if (i <= 0) {
            return 0;
        }
        return 1;
    }

    @Override // java.util.Comparator
    public boolean equals(Object obj) {
        DateTimeFieldType dateTimeFieldType;
        if (!(obj instanceof DateTimeComparator)) {
            return false;
        }
        DateTimeComparator dateTimeComparator = (DateTimeComparator) obj;
        if (this.iLowerLimit == dateTimeComparator.getLowerLimit() || ((dateTimeFieldType = this.iLowerLimit) != null && dateTimeFieldType.equals(dateTimeComparator.getLowerLimit()))) {
            if (this.iUpperLimit != dateTimeComparator.getUpperLimit()) {
                DateTimeFieldType dateTimeFieldType2 = this.iUpperLimit;
                if (dateTimeFieldType2 != null && dateTimeFieldType2.equals(dateTimeComparator.getUpperLimit())) {
                    return true;
                }
            } else {
                return true;
            }
        }
        return false;
    }

    public DateTimeFieldType getLowerLimit() {
        return this.iLowerLimit;
    }

    public DateTimeFieldType getUpperLimit() {
        return this.iUpperLimit;
    }

    public int hashCode() {
        int hashCode;
        DateTimeFieldType dateTimeFieldType = this.iLowerLimit;
        int i = 0;
        if (dateTimeFieldType == null) {
            hashCode = 0;
        } else {
            hashCode = dateTimeFieldType.hashCode();
        }
        DateTimeFieldType dateTimeFieldType2 = this.iUpperLimit;
        if (dateTimeFieldType2 != null) {
            i = dateTimeFieldType2.hashCode();
        }
        return hashCode + (i * 123);
    }

    public String toString() {
        String name;
        String str = "";
        if (this.iLowerLimit == this.iUpperLimit) {
            StringBuilder sb = new StringBuilder();
            sb.append("DateTimeComparator[");
            DateTimeFieldType dateTimeFieldType = this.iLowerLimit;
            if (dateTimeFieldType != null) {
                str = dateTimeFieldType.getName();
            }
            sb.append(str);
            sb.append("]");
            return sb.toString();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("DateTimeComparator[");
        DateTimeFieldType dateTimeFieldType2 = this.iLowerLimit;
        if (dateTimeFieldType2 == null) {
            name = "";
        } else {
            name = dateTimeFieldType2.getName();
        }
        sb2.append(name);
        sb2.append("-");
        DateTimeFieldType dateTimeFieldType3 = this.iUpperLimit;
        if (dateTimeFieldType3 != null) {
            str = dateTimeFieldType3.getName();
        }
        sb2.append(str);
        sb2.append("]");
        return sb2.toString();
    }

    public static DateTimeComparator getInstance(DateTimeFieldType dateTimeFieldType) {
        return getInstance(dateTimeFieldType, null);
    }

    public static DateTimeComparator getInstance(DateTimeFieldType dateTimeFieldType, DateTimeFieldType dateTimeFieldType2) {
        if (dateTimeFieldType == null && dateTimeFieldType2 == null) {
            return f13574Wwwwwwwwwwwwwwwwwwwwwwwww;
        }
        if (dateTimeFieldType == DateTimeFieldType.dayOfYear() && dateTimeFieldType2 == null) {
            return f13573Wwwwwwwwwwwwwwwwwwwwwwww;
        }
        if (dateTimeFieldType == null && dateTimeFieldType2 == DateTimeFieldType.dayOfYear()) {
            return f13572Wwwwwwwwwwwwwwwwwwwwwww;
        }
        return new DateTimeComparator(dateTimeFieldType, dateTimeFieldType2);
    }
}
