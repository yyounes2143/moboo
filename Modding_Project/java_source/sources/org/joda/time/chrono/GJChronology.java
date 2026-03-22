package org.joda.time.chrono;

import j$.util.concurrent.ConcurrentHashMap;
import java.util.Locale;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.joda.time.Chronology;
import org.joda.time.DateTimeField;
import org.joda.time.DateTimeUtils;
import org.joda.time.DateTimeZone;
import org.joda.time.DurationField;
import org.joda.time.IllegalFieldValueException;
import org.joda.time.Instant;
import org.joda.time.LocalDate;
import org.joda.time.ReadableInstant;
import org.joda.time.ReadablePartial;
import org.joda.time.chrono.AssembledChronology;
import org.joda.time.field.BaseDateTimeField;
import org.joda.time.field.DecoratedDurationField;
import org.joda.time.format.DateTimeFormatter;
import org.joda.time.format.ISODateTimeFormat;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public final class GJChronology extends AssembledChronology {
    static final Instant DEFAULT_CUTOVER = new Instant(-12219292800000L);

    /* renamed from: Kkkkkkkkkkkkk  reason: collision with root package name */
    public static final ConcurrentHashMap<GJCacheKey, GJChronology> f13746Kkkkkkkkkkkkk = new ConcurrentHashMap<>();
    private static final long serialVersionUID = -2545574827706931671L;
    private Instant iCutoverInstant;
    private long iCutoverMillis;
    private long iGapDuration;
    private GregorianChronology iGregorianChronology;
    private JulianChronology iJulianChronology;

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public class CutoverField extends BaseDateTimeField {

        /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public DurationField f13748Wwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public DurationField f13749Wwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final boolean f13750Wwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final long f13751Wwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final DateTimeField f13752Wwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final DateTimeField f13753Wwwwwwwwwwwwwwwwwwwwwwww;

        public CutoverField(GJChronology gJChronology, DateTimeField dateTimeField, DateTimeField dateTimeField2, long j) {
            this(gJChronology, dateTimeField, dateTimeField2, j, false);
        }

        public long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j) {
            if (this.f13750Wwwwwwwwwwwwwwwwwwwww) {
                return GJChronology.this.julianToGregorianByWeekyear(j);
            }
            return GJChronology.this.julianToGregorianByYear(j);
        }

        public long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j) {
            if (this.f13750Wwwwwwwwwwwwwwwwwwwww) {
                return GJChronology.this.gregorianToJulianByWeekyear(j);
            }
            return GJChronology.this.gregorianToJulianByYear(j);
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public long add(long j, int i) {
            return this.f13752Wwwwwwwwwwwwwwwwwwwwwww.add(j, i);
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public int get(long j) {
            if (j >= this.f13751Wwwwwwwwwwwwwwwwwwwwww) {
                return this.f13752Wwwwwwwwwwwwwwwwwwwwwww.get(j);
            }
            return this.f13753Wwwwwwwwwwwwwwwwwwwwwwww.get(j);
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public String getAsShortText(long j, Locale locale) {
            if (j >= this.f13751Wwwwwwwwwwwwwwwwwwwwww) {
                return this.f13752Wwwwwwwwwwwwwwwwwwwwwww.getAsShortText(j, locale);
            }
            return this.f13753Wwwwwwwwwwwwwwwwwwwwwwww.getAsShortText(j, locale);
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public String getAsText(long j, Locale locale) {
            if (j >= this.f13751Wwwwwwwwwwwwwwwwwwwwww) {
                return this.f13752Wwwwwwwwwwwwwwwwwwwwwww.getAsText(j, locale);
            }
            return this.f13753Wwwwwwwwwwwwwwwwwwwwwwww.getAsText(j, locale);
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public int getDifference(long j, long j2) {
            return this.f13752Wwwwwwwwwwwwwwwwwwwwwww.getDifference(j, j2);
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public long getDifferenceAsLong(long j, long j2) {
            return this.f13752Wwwwwwwwwwwwwwwwwwwwwww.getDifferenceAsLong(j, j2);
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public DurationField getDurationField() {
            return this.f13749Wwwwwwwwwwwwwwwwwwww;
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public int getLeapAmount(long j) {
            if (j >= this.f13751Wwwwwwwwwwwwwwwwwwwwww) {
                return this.f13752Wwwwwwwwwwwwwwwwwwwwwww.getLeapAmount(j);
            }
            return this.f13753Wwwwwwwwwwwwwwwwwwwwwwww.getLeapAmount(j);
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public DurationField getLeapDurationField() {
            return this.f13752Wwwwwwwwwwwwwwwwwwwwwww.getLeapDurationField();
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public int getMaximumShortTextLength(Locale locale) {
            return Math.max(this.f13753Wwwwwwwwwwwwwwwwwwwwwwww.getMaximumShortTextLength(locale), this.f13752Wwwwwwwwwwwwwwwwwwwwwww.getMaximumShortTextLength(locale));
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public int getMaximumTextLength(Locale locale) {
            return Math.max(this.f13753Wwwwwwwwwwwwwwwwwwwwwwww.getMaximumTextLength(locale), this.f13752Wwwwwwwwwwwwwwwwwwwwwww.getMaximumTextLength(locale));
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public int getMaximumValue() {
            return this.f13752Wwwwwwwwwwwwwwwwwwwwwww.getMaximumValue();
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public int getMinimumValue() {
            return this.f13753Wwwwwwwwwwwwwwwwwwwwwwww.getMinimumValue();
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public DurationField getRangeDurationField() {
            return this.f13748Wwwwwwwwwwwwwwwwwww;
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public boolean isLeap(long j) {
            if (j >= this.f13751Wwwwwwwwwwwwwwwwwwwwww) {
                return this.f13752Wwwwwwwwwwwwwwwwwwwwwww.isLeap(j);
            }
            return this.f13753Wwwwwwwwwwwwwwwwwwwwwwww.isLeap(j);
        }

        @Override // org.joda.time.DateTimeField
        public boolean isLenient() {
            return false;
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public long roundCeiling(long j) {
            if (j >= this.f13751Wwwwwwwwwwwwwwwwwwwwww) {
                return this.f13752Wwwwwwwwwwwwwwwwwwwwwww.roundCeiling(j);
            }
            long roundCeiling = this.f13753Wwwwwwwwwwwwwwwwwwwwwwww.roundCeiling(j);
            if (roundCeiling >= this.f13751Wwwwwwwwwwwwwwwwwwwwww && roundCeiling - GJChronology.this.iGapDuration >= this.f13751Wwwwwwwwwwwwwwwwwwwwww) {
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(roundCeiling);
            }
            return roundCeiling;
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public long roundFloor(long j) {
            if (j >= this.f13751Wwwwwwwwwwwwwwwwwwwwww) {
                long roundFloor = this.f13752Wwwwwwwwwwwwwwwwwwwwwww.roundFloor(j);
                if (roundFloor < this.f13751Wwwwwwwwwwwwwwwwwwwwww && GJChronology.this.iGapDuration + roundFloor < this.f13751Wwwwwwwwwwwwwwwwwwwwww) {
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(roundFloor);
                }
                return roundFloor;
            }
            return this.f13753Wwwwwwwwwwwwwwwwwwwwwwww.roundFloor(j);
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public long set(long j, int i) {
            if (j >= this.f13751Wwwwwwwwwwwwwwwwwwwwww) {
                long j2 = this.f13752Wwwwwwwwwwwwwwwwwwwwwww.set(j, i);
                if (j2 < this.f13751Wwwwwwwwwwwwwwwwwwwwww) {
                    if (GJChronology.this.iGapDuration + j2 < this.f13751Wwwwwwwwwwwwwwwwwwwwww) {
                        j2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j2);
                    }
                    if (get(j2) == i) {
                        return j2;
                    }
                    throw new IllegalFieldValueException(this.f13752Wwwwwwwwwwwwwwwwwwwwwww.getType(), Integer.valueOf(i), (Number) null, (Number) null);
                }
                return j2;
            }
            long j3 = this.f13753Wwwwwwwwwwwwwwwwwwwwwwww.set(j, i);
            if (j3 >= this.f13751Wwwwwwwwwwwwwwwwwwwwww) {
                if (j3 - GJChronology.this.iGapDuration >= this.f13751Wwwwwwwwwwwwwwwwwwwwww) {
                    j3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j3);
                }
                if (get(j3) == i) {
                    return j3;
                }
                throw new IllegalFieldValueException(this.f13753Wwwwwwwwwwwwwwwwwwwwwwww.getType(), Integer.valueOf(i), (Number) null, (Number) null);
            }
            return j3;
        }

        public CutoverField(GJChronology gJChronology, DateTimeField dateTimeField, DateTimeField dateTimeField2, long j, boolean z) {
            this(dateTimeField, dateTimeField2, null, j, z);
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public long add(long j, long j2) {
            return this.f13752Wwwwwwwwwwwwwwwwwwwwwww.add(j, j2);
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public int getMaximumValue(long j) {
            if (j >= this.f13751Wwwwwwwwwwwwwwwwwwwwww) {
                return this.f13752Wwwwwwwwwwwwwwwwwwwwwww.getMaximumValue(j);
            }
            int maximumValue = this.f13753Wwwwwwwwwwwwwwwwwwwwwwww.getMaximumValue(j);
            long j2 = this.f13753Wwwwwwwwwwwwwwwwwwwwwwww.set(j, maximumValue);
            long j3 = this.f13751Wwwwwwwwwwwwwwwwwwwwww;
            if (j2 >= j3) {
                DateTimeField dateTimeField = this.f13753Wwwwwwwwwwwwwwwwwwwwwwww;
                return dateTimeField.get(dateTimeField.add(j3, -1));
            }
            return maximumValue;
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public int getMinimumValue(ReadablePartial readablePartial) {
            return this.f13753Wwwwwwwwwwwwwwwwwwwwwwww.getMinimumValue(readablePartial);
        }

        public CutoverField(DateTimeField dateTimeField, DateTimeField dateTimeField2, DurationField durationField, long j, boolean z) {
            super(dateTimeField2.getType());
            this.f13753Wwwwwwwwwwwwwwwwwwwwwwww = dateTimeField;
            this.f13752Wwwwwwwwwwwwwwwwwwwwwww = dateTimeField2;
            this.f13751Wwwwwwwwwwwwwwwwwwwwww = j;
            this.f13750Wwwwwwwwwwwwwwwwwwwww = z;
            this.f13749Wwwwwwwwwwwwwwwwwwww = dateTimeField2.getDurationField();
            if (durationField == null && (durationField = dateTimeField2.getRangeDurationField()) == null) {
                durationField = dateTimeField.getRangeDurationField();
            }
            this.f13748Wwwwwwwwwwwwwwwwwww = durationField;
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public int[] add(ReadablePartial readablePartial, int i, int[] iArr, int i2) {
            if (i2 == 0) {
                return iArr;
            }
            if (DateTimeUtils.Wwwwwwwwwwwwwwwwwwwww(readablePartial)) {
                int size = readablePartial.size();
                long j = 0;
                for (int i3 = 0; i3 < size; i3++) {
                    j = readablePartial.getFieldType(i3).getField(GJChronology.this).set(j, iArr[i3]);
                }
                return GJChronology.this.get(readablePartial, add(j, i2));
            }
            return super.add(readablePartial, i, iArr, i2);
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public int getMinimumValue(ReadablePartial readablePartial, int[] iArr) {
            return this.f13753Wwwwwwwwwwwwwwwwwwwwwwww.getMinimumValue(readablePartial, iArr);
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public String getAsShortText(int i, Locale locale) {
            return this.f13752Wwwwwwwwwwwwwwwwwwwwwww.getAsShortText(i, locale);
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public String getAsText(int i, Locale locale) {
            return this.f13752Wwwwwwwwwwwwwwwwwwwwwww.getAsText(i, locale);
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public int getMinimumValue(long j) {
            if (j < this.f13751Wwwwwwwwwwwwwwwwwwwwww) {
                return this.f13753Wwwwwwwwwwwwwwwwwwwwwwww.getMinimumValue(j);
            }
            int minimumValue = this.f13752Wwwwwwwwwwwwwwwwwwwwwww.getMinimumValue(j);
            long j2 = this.f13752Wwwwwwwwwwwwwwwwwwwwwww.set(j, minimumValue);
            long j3 = this.f13751Wwwwwwwwwwwwwwwwwwwwww;
            return j2 < j3 ? this.f13752Wwwwwwwwwwwwwwwwwwwwwww.get(j3) : minimumValue;
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public int getMaximumValue(ReadablePartial readablePartial) {
            return getMaximumValue(GJChronology.getInstanceUTC().set(readablePartial, 0L));
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public int getMaximumValue(ReadablePartial readablePartial, int[] iArr) {
            GJChronology instanceUTC = GJChronology.getInstanceUTC();
            int size = readablePartial.size();
            long j = 0;
            for (int i = 0; i < size; i++) {
                DateTimeField field = readablePartial.getFieldType(i).getField(instanceUTC);
                if (iArr[i] <= field.getMaximumValue(j)) {
                    j = field.set(j, iArr[i]);
                }
            }
            return getMaximumValue(j);
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public long set(long j, String str, Locale locale) {
            if (j >= this.f13751Wwwwwwwwwwwwwwwwwwwwww) {
                long j2 = this.f13752Wwwwwwwwwwwwwwwwwwwwwww.set(j, str, locale);
                return (j2 >= this.f13751Wwwwwwwwwwwwwwwwwwwwww || GJChronology.this.iGapDuration + j2 >= this.f13751Wwwwwwwwwwwwwwwwwwwwww) ? j2 : Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j2);
            }
            long j3 = this.f13753Wwwwwwwwwwwwwwwwwwwwwwww.set(j, str, locale);
            return (j3 < this.f13751Wwwwwwwwwwwwwwwwwwwwww || j3 - GJChronology.this.iGapDuration < this.f13751Wwwwwwwwwwwwwwwwwwwwww) ? j3 : Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j3);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public final class ImpreciseCutoverField extends CutoverField {
        public ImpreciseCutoverField(GJChronology gJChronology, DateTimeField dateTimeField, DateTimeField dateTimeField2, long j) {
            this(dateTimeField, dateTimeField2, (DurationField) null, j, false);
        }

        @Override // org.joda.time.chrono.GJChronology.CutoverField, org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public long add(long j, int i) {
            if (j >= this.f13751Wwwwwwwwwwwwwwwwwwwwww) {
                long add = this.f13752Wwwwwwwwwwwwwwwwwwwwwww.add(j, i);
                if (add >= this.f13751Wwwwwwwwwwwwwwwwwwwwww || GJChronology.this.iGapDuration + add >= this.f13751Wwwwwwwwwwwwwwwwwwwwww) {
                    return add;
                }
                if (this.f13750Wwwwwwwwwwwwwwwwwwwww) {
                    if (GJChronology.this.iGregorianChronology.weekyear().get(add) <= 0) {
                        add = GJChronology.this.iGregorianChronology.weekyear().add(add, -1);
                    }
                } else if (GJChronology.this.iGregorianChronology.year().get(add) <= 0) {
                    add = GJChronology.this.iGregorianChronology.year().add(add, -1);
                }
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(add);
            }
            long add2 = this.f13753Wwwwwwwwwwwwwwwwwwwwwwww.add(j, i);
            return (add2 < this.f13751Wwwwwwwwwwwwwwwwwwwwww || add2 - GJChronology.this.iGapDuration < this.f13751Wwwwwwwwwwwwwwwwwwwwww) ? add2 : Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(add2);
        }

        @Override // org.joda.time.chrono.GJChronology.CutoverField, org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public int getDifference(long j, long j2) {
            long j3 = this.f13751Wwwwwwwwwwwwwwwwwwwwww;
            if (j >= j3) {
                if (j2 >= j3) {
                    return this.f13752Wwwwwwwwwwwwwwwwwwwwwww.getDifference(j, j2);
                }
                return this.f13753Wwwwwwwwwwwwwwwwwwwwwwww.getDifference(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j), j2);
            } else if (j2 < j3) {
                return this.f13753Wwwwwwwwwwwwwwwwwwwwwwww.getDifference(j, j2);
            } else {
                return this.f13752Wwwwwwwwwwwwwwwwwwwwwww.getDifference(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j), j2);
            }
        }

        @Override // org.joda.time.chrono.GJChronology.CutoverField, org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public long getDifferenceAsLong(long j, long j2) {
            long j3 = this.f13751Wwwwwwwwwwwwwwwwwwwwww;
            if (j >= j3) {
                if (j2 >= j3) {
                    return this.f13752Wwwwwwwwwwwwwwwwwwwwwww.getDifferenceAsLong(j, j2);
                }
                return this.f13753Wwwwwwwwwwwwwwwwwwwwwwww.getDifferenceAsLong(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j), j2);
            } else if (j2 < j3) {
                return this.f13753Wwwwwwwwwwwwwwwwwwwwwwww.getDifferenceAsLong(j, j2);
            } else {
                return this.f13752Wwwwwwwwwwwwwwwwwwwwwww.getDifferenceAsLong(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j), j2);
            }
        }

        @Override // org.joda.time.chrono.GJChronology.CutoverField, org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public int getMaximumValue(long j) {
            if (j >= this.f13751Wwwwwwwwwwwwwwwwwwwwww) {
                return this.f13752Wwwwwwwwwwwwwwwwwwwwwww.getMaximumValue(j);
            }
            return this.f13753Wwwwwwwwwwwwwwwwwwwwwwww.getMaximumValue(j);
        }

        @Override // org.joda.time.chrono.GJChronology.CutoverField, org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public int getMinimumValue(long j) {
            if (j >= this.f13751Wwwwwwwwwwwwwwwwwwwwww) {
                return this.f13752Wwwwwwwwwwwwwwwwwwwwwww.getMinimumValue(j);
            }
            return this.f13753Wwwwwwwwwwwwwwwwwwwwwwww.getMinimumValue(j);
        }

        public ImpreciseCutoverField(GJChronology gJChronology, DateTimeField dateTimeField, DateTimeField dateTimeField2, DurationField durationField, long j) {
            this(dateTimeField, dateTimeField2, durationField, j, false);
        }

        public ImpreciseCutoverField(GJChronology gJChronology, DateTimeField dateTimeField, DateTimeField dateTimeField2, DurationField durationField, DurationField durationField2, long j) {
            this(dateTimeField, dateTimeField2, durationField, j, false);
            this.f13748Wwwwwwwwwwwwwwwwwww = durationField2;
        }

        public ImpreciseCutoverField(DateTimeField dateTimeField, DateTimeField dateTimeField2, DurationField durationField, long j, boolean z) {
            super(GJChronology.this, dateTimeField, dateTimeField2, j, z);
            this.f13749Wwwwwwwwwwwwwwwwwwww = durationField == null ? new LinkedDurationField(this.f13749Wwwwwwwwwwwwwwwwwwww, this) : durationField;
        }

        @Override // org.joda.time.chrono.GJChronology.CutoverField, org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public long add(long j, long j2) {
            if (j >= this.f13751Wwwwwwwwwwwwwwwwwwwwww) {
                long add = this.f13752Wwwwwwwwwwwwwwwwwwwwwww.add(j, j2);
                if (add >= this.f13751Wwwwwwwwwwwwwwwwwwwwww || GJChronology.this.iGapDuration + add >= this.f13751Wwwwwwwwwwwwwwwwwwwwww) {
                    return add;
                }
                if (this.f13750Wwwwwwwwwwwwwwwwwwwww) {
                    if (GJChronology.this.iGregorianChronology.weekyear().get(add) <= 0) {
                        add = GJChronology.this.iGregorianChronology.weekyear().add(add, -1);
                    }
                } else if (GJChronology.this.iGregorianChronology.year().get(add) <= 0) {
                    add = GJChronology.this.iGregorianChronology.year().add(add, -1);
                }
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(add);
            }
            long add2 = this.f13753Wwwwwwwwwwwwwwwwwwwwwwww.add(j, j2);
            return (add2 < this.f13751Wwwwwwwwwwwwwwwwwwwwww || add2 - GJChronology.this.iGapDuration < this.f13751Wwwwwwwwwwwwwwwwwwwwww) ? add2 : Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(add2);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static class LinkedDurationField extends DecoratedDurationField {
        private static final long serialVersionUID = 4097975388007713084L;
        private final ImpreciseCutoverField iField;

        public LinkedDurationField(DurationField durationField, ImpreciseCutoverField impreciseCutoverField) {
            super(durationField, durationField.getType());
            this.iField = impreciseCutoverField;
        }

        @Override // org.joda.time.field.DecoratedDurationField, org.joda.time.DurationField
        public long add(long j, int i) {
            return this.iField.add(j, i);
        }

        @Override // org.joda.time.field.BaseDurationField, org.joda.time.DurationField
        public int getDifference(long j, long j2) {
            return this.iField.getDifference(j, j2);
        }

        @Override // org.joda.time.field.DecoratedDurationField, org.joda.time.DurationField
        public long getDifferenceAsLong(long j, long j2) {
            return this.iField.getDifferenceAsLong(j, j2);
        }

        @Override // org.joda.time.field.DecoratedDurationField, org.joda.time.DurationField
        public long add(long j, long j2) {
            return this.iField.add(j, j2);
        }
    }

    public GJChronology(JulianChronology julianChronology, GregorianChronology gregorianChronology, Instant instant) {
        super(null, new Object[]{julianChronology, gregorianChronology, instant});
    }

    public static long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j, Chronology chronology, Chronology chronology2) {
        return chronology2.getDateTimeMillis(chronology.year().get(j), chronology.monthOfYear().get(j), chronology.dayOfMonth().get(j), chronology.millisOfDay().get(j));
    }

    public static long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j, Chronology chronology, Chronology chronology2) {
        return chronology2.millisOfDay().set(chronology2.dayOfWeek().set(chronology2.weekOfWeekyear().set(chronology2.weekyear().set(0L, chronology.weekyear().get(j)), chronology.weekOfWeekyear().get(j)), chronology.dayOfWeek().get(j)), chronology.millisOfDay().get(j));
    }

    public static GJChronology getInstance() {
        return getInstance(DateTimeZone.getDefault(), DEFAULT_CUTOVER, 4);
    }

    public static GJChronology getInstanceUTC() {
        return getInstance(DateTimeZone.UTC, DEFAULT_CUTOVER, 4);
    }

    private Object readResolve() {
        return getInstance(getZone(), this.iCutoverInstant, getMinimumDaysInFirstWeek());
    }

    @Override // org.joda.time.chrono.AssembledChronology
    public void assemble(AssembledChronology.Fields fields) {
        Object[] objArr = (Object[]) getParam();
        JulianChronology julianChronology = (JulianChronology) objArr[0];
        GregorianChronology gregorianChronology = (GregorianChronology) objArr[1];
        Instant instant = (Instant) objArr[2];
        this.iCutoverMillis = instant.getMillis();
        this.iJulianChronology = julianChronology;
        this.iGregorianChronology = gregorianChronology;
        this.iCutoverInstant = instant;
        if (getBase() != null) {
            return;
        }
        if (julianChronology.getMinimumDaysInFirstWeek() == gregorianChronology.getMinimumDaysInFirstWeek()) {
            long j = this.iCutoverMillis;
            this.iGapDuration = j - julianToGregorianByYear(j);
            fields.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(gregorianChronology);
            if (gregorianChronology.millisOfDay().get(this.iCutoverMillis) == 0) {
                fields.f13710Wwwwwwwwwwwwwwwwwwwwww = new CutoverField(this, julianChronology.millisOfSecond(), fields.f13710Wwwwwwwwwwwwwwwwwwwwww, this.iCutoverMillis);
                fields.f13709Wwwwwwwwwwwwwwwwwwwww = new CutoverField(this, julianChronology.millisOfDay(), fields.f13709Wwwwwwwwwwwwwwwwwwwww, this.iCutoverMillis);
                fields.f13708Wwwwwwwwwwwwwwwwwwww = new CutoverField(this, julianChronology.secondOfMinute(), fields.f13708Wwwwwwwwwwwwwwwwwwww, this.iCutoverMillis);
                fields.f13707Wwwwwwwwwwwwwwwwwww = new CutoverField(this, julianChronology.secondOfDay(), fields.f13707Wwwwwwwwwwwwwwwwwww, this.iCutoverMillis);
                fields.f13706Wwwwwwwwwwwwwwwwww = new CutoverField(this, julianChronology.minuteOfHour(), fields.f13706Wwwwwwwwwwwwwwwwww, this.iCutoverMillis);
                fields.f13705Wwwwwwwwwwwwwwwww = new CutoverField(this, julianChronology.minuteOfDay(), fields.f13705Wwwwwwwwwwwwwwwww, this.iCutoverMillis);
                fields.f13704Wwwwwwwwwwwwwwww = new CutoverField(this, julianChronology.hourOfDay(), fields.f13704Wwwwwwwwwwwwwwww, this.iCutoverMillis);
                fields.f13702Wwwwwwwwwwwwww = new CutoverField(this, julianChronology.hourOfHalfday(), fields.f13702Wwwwwwwwwwwwww, this.iCutoverMillis);
                fields.f13703Wwwwwwwwwwwwwww = new CutoverField(this, julianChronology.clockhourOfDay(), fields.f13703Wwwwwwwwwwwwwww, this.iCutoverMillis);
                fields.f13701Wwwwwwwwwwwww = new CutoverField(this, julianChronology.clockhourOfHalfday(), fields.f13701Wwwwwwwwwwwww, this.iCutoverMillis);
                fields.f13700Wwwwwwwwwwww = new CutoverField(this, julianChronology.halfdayOfDay(), fields.f13700Wwwwwwwwwwww, this.iCutoverMillis);
            }
            fields.f13688Kkkkkkkkkkkkkkkkkkkkkkkk = new CutoverField(this, julianChronology.era(), fields.f13688Kkkkkkkkkkkkkkkkkkkkkkkk, this.iCutoverMillis);
            ImpreciseCutoverField impreciseCutoverField = new ImpreciseCutoverField(this, julianChronology.year(), fields.f13692Wwww, this.iCutoverMillis);
            fields.f13692Wwww = impreciseCutoverField;
            fields.f13713Wwwwwwwwwwwwwwwwwwwwwwwww = impreciseCutoverField.getDurationField();
            fields.f13691Www = new ImpreciseCutoverField(this, julianChronology.yearOfEra(), fields.f13691Www, fields.f13713Wwwwwwwwwwwwwwwwwwwwwwwww, this.iCutoverMillis);
            ImpreciseCutoverField impreciseCutoverField2 = new ImpreciseCutoverField(this, julianChronology.centuryOfEra(), fields.f13689Kkkkkkkkkkkkkkkkkkkkkkkkk, this.iCutoverMillis);
            fields.f13689Kkkkkkkkkkkkkkkkkkkkkkkkk = impreciseCutoverField2;
            fields.f13712Wwwwwwwwwwwwwwwwwwwwwwww = impreciseCutoverField2.getDurationField();
            fields.f13690Kkkkkkkkkkkkkkkkkkkkkkkkkk = new ImpreciseCutoverField(this, julianChronology.yearOfCentury(), fields.f13690Kkkkkkkkkkkkkkkkkkkkkkkkkk, fields.f13713Wwwwwwwwwwwwwwwwwwwwwwwww, fields.f13712Wwwwwwwwwwwwwwwwwwwwwwww, this.iCutoverMillis);
            ImpreciseCutoverField impreciseCutoverField3 = new ImpreciseCutoverField(this, julianChronology.monthOfYear(), fields.f13693Wwwww, (DurationField) null, fields.f13713Wwwwwwwwwwwwwwwwwwwwwwwww, this.iCutoverMillis);
            fields.f13693Wwwww = impreciseCutoverField3;
            fields.f13714Wwwwwwwwwwwwwwwwwwwwwwwwww = impreciseCutoverField3.getDurationField();
            ImpreciseCutoverField impreciseCutoverField4 = new ImpreciseCutoverField(julianChronology.weekyear(), fields.f13695Wwwwwww, (DurationField) null, this.iCutoverMillis, true);
            fields.f13695Wwwwwww = impreciseCutoverField4;
            fields.f13715Wwwwwwwwwwwwwwwwwwwwwwwwwww = impreciseCutoverField4.getDurationField();
            fields.f13694Wwwwww = new ImpreciseCutoverField(this, julianChronology.weekyearOfCentury(), fields.f13694Wwwwww, fields.f13715Wwwwwwwwwwwwwwwwwwwwwwwwwww, fields.f13712Wwwwwwwwwwwwwwwwwwwwwwww, this.iCutoverMillis);
            fields.f13697Wwwwwwwww = new CutoverField(julianChronology.dayOfYear(), fields.f13697Wwwwwwwww, fields.f13713Wwwwwwwwwwwwwwwwwwwwwwwww, gregorianChronology.year().roundCeiling(this.iCutoverMillis), false);
            fields.f13696Wwwwwwww = new CutoverField(julianChronology.weekOfWeekyear(), fields.f13696Wwwwwwww, fields.f13715Wwwwwwwwwwwwwwwwwwwwwwwwwww, gregorianChronology.weekyear().roundCeiling(this.iCutoverMillis), true);
            CutoverField cutoverField = new CutoverField(this, julianChronology.dayOfMonth(), fields.f13698Wwwwwwwwww, this.iCutoverMillis);
            cutoverField.f13748Wwwwwwwwwwwwwwwwwww = fields.f13714Wwwwwwwwwwwwwwwwwwwwwwwwww;
            fields.f13698Wwwwwwwwww = cutoverField;
            return;
        }
        throw new IllegalArgumentException();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GJChronology) {
            GJChronology gJChronology = (GJChronology) obj;
            if (this.iCutoverMillis == gJChronology.iCutoverMillis && getMinimumDaysInFirstWeek() == gJChronology.getMinimumDaysInFirstWeek() && getZone().equals(gJChronology.getZone())) {
                return true;
            }
        }
        return false;
    }

    @Override // org.joda.time.chrono.AssembledChronology, org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public long getDateTimeMillis(int i, int i2, int i3, int i4) throws IllegalArgumentException {
        Chronology base = getBase();
        if (base != null) {
            return base.getDateTimeMillis(i, i2, i3, i4);
        }
        long dateTimeMillis = this.iGregorianChronology.getDateTimeMillis(i, i2, i3, i4);
        if (dateTimeMillis < this.iCutoverMillis) {
            long dateTimeMillis2 = this.iJulianChronology.getDateTimeMillis(i, i2, i3, i4);
            if (dateTimeMillis2 < this.iCutoverMillis) {
                return dateTimeMillis2;
            }
            throw new IllegalArgumentException("Specified date does not exist");
        }
        return dateTimeMillis;
    }

    public Instant getGregorianCutover() {
        return this.iCutoverInstant;
    }

    public int getMinimumDaysInFirstWeek() {
        return this.iGregorianChronology.getMinimumDaysInFirstWeek();
    }

    @Override // org.joda.time.chrono.AssembledChronology, org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public DateTimeZone getZone() {
        Chronology base = getBase();
        if (base != null) {
            return base.getZone();
        }
        return DateTimeZone.UTC;
    }

    public long gregorianToJulianByWeekyear(long j) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j, this.iGregorianChronology, this.iJulianChronology);
    }

    public long gregorianToJulianByYear(long j) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j, this.iGregorianChronology, this.iJulianChronology);
    }

    public int hashCode() {
        return 25025 + getZone().hashCode() + getMinimumDaysInFirstWeek() + this.iCutoverInstant.hashCode();
    }

    public long julianToGregorianByWeekyear(long j) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j, this.iJulianChronology, this.iGregorianChronology);
    }

    public long julianToGregorianByYear(long j) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j, this.iJulianChronology, this.iGregorianChronology);
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public String toString() {
        DateTimeFormatter Wwwwwwwwwwwwwwwwwwwwwwwwwww2;
        StringBuffer stringBuffer = new StringBuffer(60);
        stringBuffer.append("GJChronology");
        stringBuffer.append(AbstractJsonLexerKt.BEGIN_LIST);
        stringBuffer.append(getZone().getID());
        if (this.iCutoverMillis != DEFAULT_CUTOVER.getMillis()) {
            stringBuffer.append(",cutover=");
            if (withUTC().dayOfYear().remainder(this.iCutoverMillis) == 0) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = ISODateTimeFormat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            } else {
                Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = ISODateTimeFormat.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwww(withUTC()).Wwwwwwwwwwwwwwwwww(stringBuffer, this.iCutoverMillis);
        }
        if (getMinimumDaysInFirstWeek() != 4) {
            stringBuffer.append(",mdfw=");
            stringBuffer.append(getMinimumDaysInFirstWeek());
        }
        stringBuffer.append(AbstractJsonLexerKt.END_LIST);
        return stringBuffer.toString();
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public Chronology withUTC() {
        return withZone(DateTimeZone.UTC);
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public Chronology withZone(DateTimeZone dateTimeZone) {
        if (dateTimeZone == null) {
            dateTimeZone = DateTimeZone.getDefault();
        }
        if (dateTimeZone == getZone()) {
            return this;
        }
        return getInstance(dateTimeZone, this.iCutoverInstant, getMinimumDaysInFirstWeek());
    }

    public GJChronology(Chronology chronology, JulianChronology julianChronology, GregorianChronology gregorianChronology, Instant instant) {
        super(chronology, new Object[]{julianChronology, gregorianChronology, instant});
    }

    public static GJChronology getInstance(DateTimeZone dateTimeZone) {
        return getInstance(dateTimeZone, DEFAULT_CUTOVER, 4);
    }

    public static GJChronology getInstance(DateTimeZone dateTimeZone, ReadableInstant readableInstant) {
        return getInstance(dateTimeZone, readableInstant, 4);
    }

    public static GJChronology getInstance(DateTimeZone dateTimeZone, ReadableInstant readableInstant, int i) {
        Instant instant;
        DateTimeZone Wwwwwwwwwwwwwwwwwwwwww2 = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwww(dateTimeZone);
        if (readableInstant == null) {
            instant = DEFAULT_CUTOVER;
        } else {
            instant = readableInstant.toInstant();
            if (new LocalDate(instant.getMillis(), GregorianChronology.getInstance(Wwwwwwwwwwwwwwwwwwwwww2)).getYear() <= 0) {
                throw new IllegalArgumentException("Cutover too early. Must be on or after 0001-01-01.");
            }
        }
        GJCacheKey gJCacheKey = new GJCacheKey(Wwwwwwwwwwwwwwwwwwwwww2, instant, i);
        ConcurrentHashMap<GJCacheKey, GJChronology> concurrentHashMap = f13746Kkkkkkkkkkkkk;
        GJChronology gJChronology = concurrentHashMap.get(gJCacheKey);
        if (gJChronology == null) {
            DateTimeZone dateTimeZone2 = DateTimeZone.UTC;
            if (Wwwwwwwwwwwwwwwwwwwwww2 == dateTimeZone2) {
                gJChronology = new GJChronology(JulianChronology.getInstance(Wwwwwwwwwwwwwwwwwwwwww2, i), GregorianChronology.getInstance(Wwwwwwwwwwwwwwwwwwwwww2, i), instant);
            } else {
                GJChronology gJChronology2 = getInstance(dateTimeZone2, instant, i);
                gJChronology = new GJChronology(ZonedChronology.getInstance(gJChronology2, Wwwwwwwwwwwwwwwwwwwwww2), gJChronology2.iJulianChronology, gJChronology2.iGregorianChronology, gJChronology2.iCutoverInstant);
            }
            GJChronology putIfAbsent = concurrentHashMap.putIfAbsent(gJCacheKey, gJChronology);
            if (putIfAbsent != null) {
                return putIfAbsent;
            }
        }
        return gJChronology;
    }

    @Override // org.joda.time.chrono.AssembledChronology, org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public long getDateTimeMillis(int i, int i2, int i3, int i4, int i5, int i6, int i7) throws IllegalArgumentException {
        int i8;
        long j;
        Chronology base = getBase();
        if (base != null) {
            return base.getDateTimeMillis(i, i2, i3, i4, i5, i6, i7);
        }
        try {
            j = this.iGregorianChronology.getDateTimeMillis(i, i2, i3, i4, i5, i6, i7);
            i8 = i3;
        } catch (IllegalFieldValueException e) {
            i8 = i3;
            if (i2 == 2 && i8 == 29) {
                long dateTimeMillis = this.iGregorianChronology.getDateTimeMillis(i, i2, 28, i4, i5, i6, i7);
                if (dateTimeMillis >= this.iCutoverMillis) {
                    throw e;
                }
                j = dateTimeMillis;
            } else {
                throw e;
            }
        }
        if (j < this.iCutoverMillis) {
            j = this.iJulianChronology.getDateTimeMillis(i, i2, i8, i4, i5, i6, i7);
            if (j >= this.iCutoverMillis) {
                throw new IllegalArgumentException("Specified date does not exist");
            }
        }
        return j;
    }

    public static GJChronology getInstance(DateTimeZone dateTimeZone, long j, int i) {
        return getInstance(dateTimeZone, j == DEFAULT_CUTOVER.getMillis() ? null : new Instant(j), i);
    }
}
