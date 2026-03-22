package org.joda.time.base;

import java.io.Serializable;
import org.joda.time.Chronology;
import org.joda.time.DateTimeUtils;
import org.joda.time.Duration;
import org.joda.time.DurationFieldType;
import org.joda.time.MutablePeriod;
import org.joda.time.PeriodType;
import org.joda.time.ReadWritablePeriod;
import org.joda.time.ReadableDuration;
import org.joda.time.ReadableInstant;
import org.joda.time.ReadablePartial;
import org.joda.time.ReadablePeriod;
import org.joda.time.chrono.ISOChronology;
import org.joda.time.convert.ConverterManager;
import org.joda.time.convert.PeriodConverter;
import org.joda.time.field.FieldUtils;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public abstract class BasePeriod extends AbstractPeriod implements ReadablePeriod, Serializable {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final ReadablePeriod f13651Wwwwwwwwwwwwwwwwwwwwwwwww = new AbstractPeriod() { // from class: org.joda.time.base.BasePeriod.1
        @Override // org.joda.time.ReadablePeriod
        public PeriodType getPeriodType() {
            return PeriodType.time();
        }

        @Override // org.joda.time.ReadablePeriod
        public int getValue(int i) {
            return 0;
        }
    };
    private static final long serialVersionUID = -2110953284060001145L;
    private final PeriodType iType;
    private final int[] iValues;

    public BasePeriod(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, PeriodType periodType) {
        this.iType = checkPeriodType(periodType);
        this.iValues = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, i2, i3, i4, i5, i6, i7, i8);
    }

    public final int[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        int[] iArr = new int[size()];
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DurationFieldType.years(), iArr, i);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DurationFieldType.months(), iArr, i2);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DurationFieldType.weeks(), iArr, i3);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DurationFieldType.days(), iArr, i4);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DurationFieldType.hours(), iArr, i5);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DurationFieldType.minutes(), iArr, i6);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DurationFieldType.seconds(), iArr, i7);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DurationFieldType.millis(), iArr, i8);
        return iArr;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ReadablePeriod readablePeriod) {
        int[] iArr = new int[size()];
        int size = readablePeriod.size();
        for (int i = 0; i < size; i++) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(readablePeriod.getFieldType(i), iArr, readablePeriod.getValue(i));
        }
        setValues(iArr);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DurationFieldType durationFieldType, int[] iArr, int i) {
        int indexOf = indexOf(durationFieldType);
        if (indexOf == -1) {
            if (i == 0) {
                return;
            }
            throw new IllegalArgumentException("Period does not support field '" + durationFieldType.getName() + "'");
        }
        iArr[indexOf] = i;
    }

    public void addField(DurationFieldType durationFieldType, int i) {
        addFieldInto(this.iValues, durationFieldType, i);
    }

    public void addFieldInto(int[] iArr, DurationFieldType durationFieldType, int i) {
        int indexOf = indexOf(durationFieldType);
        if (indexOf == -1) {
            if (i == 0 && durationFieldType != null) {
                return;
            }
            throw new IllegalArgumentException("Period does not support field '" + durationFieldType + "'");
        }
        iArr[indexOf] = FieldUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(iArr[indexOf], i);
    }

    public void addPeriod(ReadablePeriod readablePeriod) {
        if (readablePeriod != null) {
            setValues(addPeriodInto(getValues(), readablePeriod));
        }
    }

    public int[] addPeriodInto(int[] iArr, ReadablePeriod readablePeriod) {
        int size = readablePeriod.size();
        for (int i = 0; i < size; i++) {
            DurationFieldType fieldType = readablePeriod.getFieldType(i);
            int value = readablePeriod.getValue(i);
            if (value != 0) {
                int indexOf = indexOf(fieldType);
                if (indexOf != -1) {
                    iArr[indexOf] = FieldUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(getValue(indexOf), value);
                } else {
                    throw new IllegalArgumentException("Period does not support field '" + fieldType.getName() + "'");
                }
            }
        }
        return iArr;
    }

    public PeriodType checkPeriodType(PeriodType periodType) {
        return DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwww(periodType);
    }

    @Override // org.joda.time.ReadablePeriod
    public PeriodType getPeriodType() {
        return this.iType;
    }

    @Override // org.joda.time.ReadablePeriod
    public int getValue(int i) {
        return this.iValues[i];
    }

    public void mergePeriod(ReadablePeriod readablePeriod) {
        if (readablePeriod != null) {
            setValues(mergePeriodInto(getValues(), readablePeriod));
        }
    }

    public int[] mergePeriodInto(int[] iArr, ReadablePeriod readablePeriod) {
        int size = readablePeriod.size();
        for (int i = 0; i < size; i++) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(readablePeriod.getFieldType(i), iArr, readablePeriod.getValue(i));
        }
        return iArr;
    }

    public void setField(DurationFieldType durationFieldType, int i) {
        setFieldInto(this.iValues, durationFieldType, i);
    }

    public void setFieldInto(int[] iArr, DurationFieldType durationFieldType, int i) {
        int indexOf = indexOf(durationFieldType);
        if (indexOf == -1) {
            if (i == 0 && durationFieldType != null) {
                return;
            }
            throw new IllegalArgumentException("Period does not support field '" + durationFieldType + "'");
        }
        iArr[indexOf] = i;
    }

    public void setPeriod(ReadablePeriod readablePeriod) {
        if (readablePeriod == null) {
            setValues(new int[size()]);
        } else {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(readablePeriod);
        }
    }

    public void setValue(int i, int i2) {
        this.iValues[i] = i2;
    }

    public void setValues(int[] iArr) {
        int[] iArr2 = this.iValues;
        System.arraycopy(iArr, 0, iArr2, 0, iArr2.length);
    }

    public Duration toDurationFrom(ReadableInstant readableInstant) {
        long Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwww(readableInstant);
        return new Duration(Wwwwwwwwwwwwwwwwwwwwwwwwwww2, DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(readableInstant).add(this, Wwwwwwwwwwwwwwwwwwwwwwwwwww2, 1));
    }

    public Duration toDurationTo(ReadableInstant readableInstant) {
        long Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwww(readableInstant);
        return new Duration(DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(readableInstant).add(this, Wwwwwwwwwwwwwwwwwwwwwwwwwww2, -1), Wwwwwwwwwwwwwwwwwwwwwwwwwww2);
    }

    public void setPeriod(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        setValues(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, i2, i3, i4, i5, i6, i7, i8));
    }

    public BasePeriod(long j, long j2, PeriodType periodType, Chronology chronology) {
        PeriodType checkPeriodType = checkPeriodType(periodType);
        Chronology Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(chronology);
        this.iType = checkPeriodType;
        this.iValues = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.get(this, j, j2);
    }

    public BasePeriod(ReadableInstant readableInstant, ReadableInstant readableInstant2, PeriodType periodType) {
        PeriodType checkPeriodType = checkPeriodType(periodType);
        if (readableInstant == null && readableInstant2 == null) {
            this.iType = checkPeriodType;
            this.iValues = new int[size()];
            return;
        }
        long Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwww(readableInstant);
        long Wwwwwwwwwwwwwwwwwwwwwwwwwww3 = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwww(readableInstant2);
        Chronology Wwwwwwwwwwwwwwwwwwwwwwwwww2 = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwww(readableInstant, readableInstant2);
        this.iType = checkPeriodType;
        this.iValues = Wwwwwwwwwwwwwwwwwwwwwwwwww2.get(this, Wwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwww3);
    }

    public BasePeriod(ReadablePartial readablePartial, ReadablePartial readablePartial2, PeriodType periodType) {
        if (readablePartial != null && readablePartial2 != null) {
            if ((readablePartial instanceof BaseLocal) && (readablePartial2 instanceof BaseLocal) && readablePartial.getClass() == readablePartial2.getClass()) {
                PeriodType checkPeriodType = checkPeriodType(periodType);
                long localMillis = ((BaseLocal) readablePartial).getLocalMillis();
                long localMillis2 = ((BaseLocal) readablePartial2).getLocalMillis();
                Chronology Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(readablePartial.getChronology());
                this.iType = checkPeriodType;
                this.iValues = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.get(this, localMillis, localMillis2);
                return;
            } else if (readablePartial.size() == readablePartial2.size()) {
                int size = readablePartial.size();
                for (int i = 0; i < size; i++) {
                    if (readablePartial.getFieldType(i) != readablePartial2.getFieldType(i)) {
                        throw new IllegalArgumentException("ReadablePartial objects must have the same set of fields");
                    }
                }
                if (DateTimeUtils.Wwwwwwwwwwwwwwwwwwwww(readablePartial)) {
                    this.iType = checkPeriodType(periodType);
                    Chronology withUTC = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(readablePartial.getChronology()).withUTC();
                    this.iValues = withUTC.get(this, withUTC.set(readablePartial, 0L), withUTC.set(readablePartial2, 0L));
                    return;
                }
                throw new IllegalArgumentException("ReadablePartial objects must be contiguous");
            } else {
                throw new IllegalArgumentException("ReadablePartial objects must have the same set of fields");
            }
        }
        throw new IllegalArgumentException("ReadablePartial objects must not be null");
    }

    public BasePeriod(ReadableInstant readableInstant, ReadableDuration readableDuration, PeriodType periodType) {
        PeriodType checkPeriodType = checkPeriodType(periodType);
        long Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwww(readableInstant);
        long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = FieldUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwww2, DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(readableDuration));
        Chronology Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(readableInstant);
        this.iType = checkPeriodType;
        this.iValues = Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.get(this, Wwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
    }

    public BasePeriod(ReadableDuration readableDuration, ReadableInstant readableInstant, PeriodType periodType) {
        PeriodType checkPeriodType = checkPeriodType(periodType);
        long Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(readableDuration);
        long Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwww(readableInstant);
        long Wwwwwwwwwwwwwwwwwwwwwww2 = FieldUtils.Wwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        Chronology Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(readableInstant);
        this.iType = checkPeriodType;
        this.iValues = Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.get(this, Wwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwww2);
    }

    public BasePeriod(long j) {
        this.iType = PeriodType.standard();
        int[] iArr = ISOChronology.getInstanceUTC().get(f13651Wwwwwwwwwwwwwwwwwwwwwwwww, j);
        int[] iArr2 = new int[8];
        this.iValues = iArr2;
        System.arraycopy(iArr, 0, iArr2, 4, 4);
    }

    public BasePeriod(long j, PeriodType periodType, Chronology chronology) {
        PeriodType checkPeriodType = checkPeriodType(periodType);
        Chronology Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(chronology);
        this.iType = checkPeriodType;
        this.iValues = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.get(this, j);
    }

    public BasePeriod(Object obj, PeriodType periodType, Chronology chronology) {
        PeriodConverter Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ConverterManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(obj);
        PeriodType checkPeriodType = checkPeriodType(periodType == null ? Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obj) : periodType);
        this.iType = checkPeriodType;
        if (this instanceof ReadWritablePeriod) {
            this.iValues = new int[size()];
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww((ReadWritablePeriod) this, obj, DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(chronology));
            return;
        }
        this.iValues = new MutablePeriod(obj, checkPeriodType, chronology).getValues();
    }

    public BasePeriod(int[] iArr, PeriodType periodType) {
        this.iType = periodType;
        this.iValues = iArr;
    }
}
