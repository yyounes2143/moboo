package org.joda.time.chrono;

import java.util.HashMap;
import java.util.Locale;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.joda.time.Chronology;
import org.joda.time.DateTimeField;
import org.joda.time.DateTimeZone;
import org.joda.time.DurationField;
import org.joda.time.IllegalFieldValueException;
import org.joda.time.IllegalInstantException;
import org.joda.time.ReadablePartial;
import org.joda.time.chrono.AssembledChronology;
import org.joda.time.field.BaseDateTimeField;
import org.joda.time.field.BaseDurationField;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public final class ZonedChronology extends AssembledChronology {
    private static final long serialVersionUID = -1079258847191166848L;

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static final class ZonedDateTimeField extends BaseDateTimeField {

        /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final DurationField f13784Wwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final DurationField f13785Wwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final boolean f13786Wwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final DurationField f13787Wwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final DateTimeZone f13788Wwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final DateTimeField f13789Wwwwwwwwwwwwwwwwwwwwwwww;

        public ZonedDateTimeField(DateTimeField dateTimeField, DateTimeZone dateTimeZone, DurationField durationField, DurationField durationField2, DurationField durationField3) {
            super(dateTimeField.getType());
            if (dateTimeField.isSupported()) {
                this.f13789Wwwwwwwwwwwwwwwwwwwwwwww = dateTimeField;
                this.f13788Wwwwwwwwwwwwwwwwwwwwwww = dateTimeZone;
                this.f13787Wwwwwwwwwwwwwwwwwwwwww = durationField;
                this.f13786Wwwwwwwwwwwwwwwwwwwww = ZonedChronology.useTimeArithmetic(durationField);
                this.f13785Wwwwwwwwwwwwwwwwwwww = durationField2;
                this.f13784Wwwwwwwwwwwwwwwwwww = durationField3;
                return;
            }
            throw new IllegalArgumentException();
        }

        public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j) {
            int offset = this.f13788Wwwwwwwwwwwwwwwwwwwwwww.getOffset(j);
            long j2 = offset;
            if (((j + j2) ^ j) < 0 && (j ^ j2) >= 0) {
                throw new ArithmeticException("Adding time zone offset caused overflow");
            }
            return offset;
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public long add(long j, int i) {
            if (this.f13786Wwwwwwwwwwwwwwwwwwwww) {
                long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j);
                return this.f13789Wwwwwwwwwwwwwwwwwwwwwwww.add(j + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, i) - Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
            return this.f13788Wwwwwwwwwwwwwwwwwwwwwww.convertLocalToUTC(this.f13789Wwwwwwwwwwwwwwwwwwwwwwww.add(this.f13788Wwwwwwwwwwwwwwwwwwwwwww.convertUTCToLocal(j), i), false, j);
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public long addWrapField(long j, int i) {
            if (this.f13786Wwwwwwwwwwwwwwwwwwwww) {
                long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j);
                return this.f13789Wwwwwwwwwwwwwwwwwwwwwwww.addWrapField(j + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, i) - Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
            return this.f13788Wwwwwwwwwwwwwwwwwwwwwww.convertLocalToUTC(this.f13789Wwwwwwwwwwwwwwwwwwwwwwww.addWrapField(this.f13788Wwwwwwwwwwwwwwwwwwwwwww.convertUTCToLocal(j), i), false, j);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof ZonedDateTimeField) {
                ZonedDateTimeField zonedDateTimeField = (ZonedDateTimeField) obj;
                if (this.f13789Wwwwwwwwwwwwwwwwwwwwwwww.equals(zonedDateTimeField.f13789Wwwwwwwwwwwwwwwwwwwwwwww) && this.f13788Wwwwwwwwwwwwwwwwwwwwwww.equals(zonedDateTimeField.f13788Wwwwwwwwwwwwwwwwwwwwwww) && this.f13787Wwwwwwwwwwwwwwwwwwwwww.equals(zonedDateTimeField.f13787Wwwwwwwwwwwwwwwwwwwwww) && this.f13785Wwwwwwwwwwwwwwwwwwww.equals(zonedDateTimeField.f13785Wwwwwwwwwwwwwwwwwwww)) {
                    return true;
                }
            }
            return false;
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public int get(long j) {
            return this.f13789Wwwwwwwwwwwwwwwwwwwwwwww.get(this.f13788Wwwwwwwwwwwwwwwwwwwwwww.convertUTCToLocal(j));
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public String getAsShortText(long j, Locale locale) {
            return this.f13789Wwwwwwwwwwwwwwwwwwwwwwww.getAsShortText(this.f13788Wwwwwwwwwwwwwwwwwwwwwww.convertUTCToLocal(j), locale);
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public String getAsText(long j, Locale locale) {
            return this.f13789Wwwwwwwwwwwwwwwwwwwwwwww.getAsText(this.f13788Wwwwwwwwwwwwwwwwwwwwwww.convertUTCToLocal(j), locale);
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public int getDifference(long j, long j2) {
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j2);
            DateTimeField dateTimeField = this.f13789Wwwwwwwwwwwwwwwwwwwwwwww;
            if (this.f13786Wwwwwwwwwwwwwwwwwwwww) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3;
            } else {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j);
            }
            return dateTimeField.getDifference(j + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, j2 + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3);
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public long getDifferenceAsLong(long j, long j2) {
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j2);
            DateTimeField dateTimeField = this.f13789Wwwwwwwwwwwwwwwwwwwwwwww;
            if (this.f13786Wwwwwwwwwwwwwwwwwwwww) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3;
            } else {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j);
            }
            return dateTimeField.getDifferenceAsLong(j + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, j2 + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3);
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public final DurationField getDurationField() {
            return this.f13787Wwwwwwwwwwwwwwwwwwwwww;
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public int getLeapAmount(long j) {
            return this.f13789Wwwwwwwwwwwwwwwwwwwwwwww.getLeapAmount(this.f13788Wwwwwwwwwwwwwwwwwwwwwww.convertUTCToLocal(j));
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public final DurationField getLeapDurationField() {
            return this.f13784Wwwwwwwwwwwwwwwwwww;
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public int getMaximumShortTextLength(Locale locale) {
            return this.f13789Wwwwwwwwwwwwwwwwwwwwwwww.getMaximumShortTextLength(locale);
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public int getMaximumTextLength(Locale locale) {
            return this.f13789Wwwwwwwwwwwwwwwwwwwwwwww.getMaximumTextLength(locale);
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public int getMaximumValue() {
            return this.f13789Wwwwwwwwwwwwwwwwwwwwwwww.getMaximumValue();
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public int getMinimumValue() {
            return this.f13789Wwwwwwwwwwwwwwwwwwwwwwww.getMinimumValue();
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public final DurationField getRangeDurationField() {
            return this.f13785Wwwwwwwwwwwwwwwwwwww;
        }

        public int hashCode() {
            return this.f13789Wwwwwwwwwwwwwwwwwwwwwwww.hashCode() ^ this.f13788Wwwwwwwwwwwwwwwwwwwwwww.hashCode();
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public boolean isLeap(long j) {
            return this.f13789Wwwwwwwwwwwwwwwwwwwwwwww.isLeap(this.f13788Wwwwwwwwwwwwwwwwwwwwwww.convertUTCToLocal(j));
        }

        @Override // org.joda.time.DateTimeField
        public boolean isLenient() {
            return this.f13789Wwwwwwwwwwwwwwwwwwwwwwww.isLenient();
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public long remainder(long j) {
            return this.f13789Wwwwwwwwwwwwwwwwwwwwwwww.remainder(this.f13788Wwwwwwwwwwwwwwwwwwwwwww.convertUTCToLocal(j));
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public long roundCeiling(long j) {
            if (this.f13786Wwwwwwwwwwwwwwwwwwwww) {
                long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j);
                return this.f13789Wwwwwwwwwwwwwwwwwwwwwwww.roundCeiling(j + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) - Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
            return this.f13788Wwwwwwwwwwwwwwwwwwwwwww.convertLocalToUTC(this.f13789Wwwwwwwwwwwwwwwwwwwwwwww.roundCeiling(this.f13788Wwwwwwwwwwwwwwwwwwwwwww.convertUTCToLocal(j)), false, j);
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public long roundFloor(long j) {
            if (this.f13786Wwwwwwwwwwwwwwwwwwwww) {
                long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j);
                return this.f13789Wwwwwwwwwwwwwwwwwwwwwwww.roundFloor(j + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) - Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
            return this.f13788Wwwwwwwwwwwwwwwwwwwwwww.convertLocalToUTC(this.f13789Wwwwwwwwwwwwwwwwwwwwwwww.roundFloor(this.f13788Wwwwwwwwwwwwwwwwwwwwwww.convertUTCToLocal(j)), false, j);
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public long set(long j, int i) {
            long j2 = this.f13789Wwwwwwwwwwwwwwwwwwwwwwww.set(this.f13788Wwwwwwwwwwwwwwwwwwwwwww.convertUTCToLocal(j), i);
            long convertLocalToUTC = this.f13788Wwwwwwwwwwwwwwwwwwwwwww.convertLocalToUTC(j2, false, j);
            if (get(convertLocalToUTC) == i) {
                return convertLocalToUTC;
            }
            IllegalInstantException illegalInstantException = new IllegalInstantException(j2, this.f13788Wwwwwwwwwwwwwwwwwwwwwww.getID());
            IllegalFieldValueException illegalFieldValueException = new IllegalFieldValueException(this.f13789Wwwwwwwwwwwwwwwwwwwwwwww.getType(), Integer.valueOf(i), illegalInstantException.getMessage());
            illegalFieldValueException.initCause(illegalInstantException);
            throw illegalFieldValueException;
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public int getMaximumValue(long j) {
            return this.f13789Wwwwwwwwwwwwwwwwwwwwwwww.getMaximumValue(this.f13788Wwwwwwwwwwwwwwwwwwwwwww.convertUTCToLocal(j));
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public int getMinimumValue(long j) {
            return this.f13789Wwwwwwwwwwwwwwwwwwwwwwww.getMinimumValue(this.f13788Wwwwwwwwwwwwwwwwwwwwwww.convertUTCToLocal(j));
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public String getAsShortText(int i, Locale locale) {
            return this.f13789Wwwwwwwwwwwwwwwwwwwwwwww.getAsShortText(i, locale);
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public String getAsText(int i, Locale locale) {
            return this.f13789Wwwwwwwwwwwwwwwwwwwwwwww.getAsText(i, locale);
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public int getMaximumValue(ReadablePartial readablePartial) {
            return this.f13789Wwwwwwwwwwwwwwwwwwwwwwww.getMaximumValue(readablePartial);
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public int getMinimumValue(ReadablePartial readablePartial) {
            return this.f13789Wwwwwwwwwwwwwwwwwwwwwwww.getMinimumValue(readablePartial);
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public int getMaximumValue(ReadablePartial readablePartial, int[] iArr) {
            return this.f13789Wwwwwwwwwwwwwwwwwwwwwwww.getMaximumValue(readablePartial, iArr);
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public int getMinimumValue(ReadablePartial readablePartial, int[] iArr) {
            return this.f13789Wwwwwwwwwwwwwwwwwwwwwwww.getMinimumValue(readablePartial, iArr);
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public long add(long j, long j2) {
            if (this.f13786Wwwwwwwwwwwwwwwwwwwww) {
                long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j);
                return this.f13789Wwwwwwwwwwwwwwwwwwwwwwww.add(j + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, j2) - Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
            return this.f13788Wwwwwwwwwwwwwwwwwwwwwww.convertLocalToUTC(this.f13789Wwwwwwwwwwwwwwwwwwwwwwww.add(this.f13788Wwwwwwwwwwwwwwwwwwwwwww.convertUTCToLocal(j), j2), false, j);
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public long set(long j, String str, Locale locale) {
            return this.f13788Wwwwwwwwwwwwwwwwwwwwwww.convertLocalToUTC(this.f13789Wwwwwwwwwwwwwwwwwwwwwwww.set(this.f13788Wwwwwwwwwwwwwwwwwwwwwww.convertUTCToLocal(j), str, locale), false, j);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static class ZonedDurationField extends BaseDurationField {
        private static final long serialVersionUID = -485345310999208286L;
        final DurationField iField;
        final boolean iTimeField;
        final DateTimeZone iZone;

        public ZonedDurationField(DurationField durationField, DateTimeZone dateTimeZone) {
            super(durationField.getType());
            if (durationField.isSupported()) {
                this.iField = durationField;
                this.iTimeField = ZonedChronology.useTimeArithmetic(durationField);
                this.iZone = dateTimeZone;
                return;
            }
            throw new IllegalArgumentException();
        }

        public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j) {
            int offset = this.iZone.getOffset(j);
            long j2 = offset;
            if (((j + j2) ^ j) < 0 && (j ^ j2) >= 0) {
                throw new ArithmeticException("Adding time zone offset caused overflow");
            }
            return offset;
        }

        public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j) {
            int offsetFromLocal = this.iZone.getOffsetFromLocal(j);
            long j2 = offsetFromLocal;
            if (((j - j2) ^ j) < 0 && (j ^ j2) < 0) {
                throw new ArithmeticException("Subtracting time zone offset caused overflow");
            }
            return offsetFromLocal;
        }

        public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j) {
            return this.iZone.convertUTCToLocal(j);
        }

        @Override // org.joda.time.DurationField
        public long add(long j, int i) {
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j);
            long add = this.iField.add(j + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, i);
            if (!this.iTimeField) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(add);
            }
            return add - Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof ZonedDurationField) {
                ZonedDurationField zonedDurationField = (ZonedDurationField) obj;
                if (this.iField.equals(zonedDurationField.iField) && this.iZone.equals(zonedDurationField.iZone)) {
                    return true;
                }
            }
            return false;
        }

        @Override // org.joda.time.field.BaseDurationField, org.joda.time.DurationField
        public int getDifference(long j, long j2) {
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j2);
            DurationField durationField = this.iField;
            if (this.iTimeField) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3;
            } else {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j);
            }
            return durationField.getDifference(j + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, j2 + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3);
        }

        @Override // org.joda.time.DurationField
        public long getDifferenceAsLong(long j, long j2) {
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j2);
            DurationField durationField = this.iField;
            if (this.iTimeField) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3;
            } else {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j);
            }
            return durationField.getDifferenceAsLong(j + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, j2 + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3);
        }

        @Override // org.joda.time.DurationField
        public long getMillis(int i, long j) {
            return this.iField.getMillis(i, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j));
        }

        @Override // org.joda.time.DurationField
        public long getUnitMillis() {
            return this.iField.getUnitMillis();
        }

        @Override // org.joda.time.field.BaseDurationField, org.joda.time.DurationField
        public int getValue(long j, long j2) {
            return this.iField.getValue(j, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j2));
        }

        @Override // org.joda.time.DurationField
        public long getValueAsLong(long j, long j2) {
            return this.iField.getValueAsLong(j, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j2));
        }

        public int hashCode() {
            return this.iField.hashCode() ^ this.iZone.hashCode();
        }

        @Override // org.joda.time.DurationField
        public boolean isPrecise() {
            if (this.iTimeField) {
                return this.iField.isPrecise();
            }
            if (this.iField.isPrecise() && this.iZone.isFixed()) {
                return true;
            }
            return false;
        }

        @Override // org.joda.time.DurationField
        public long getMillis(long j, long j2) {
            return this.iField.getMillis(j, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j2));
        }

        @Override // org.joda.time.DurationField
        public long add(long j, long j2) {
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j);
            long add = this.iField.add(j + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, j2);
            if (!this.iTimeField) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(add);
            }
            return add - Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }
    }

    public ZonedChronology(Chronology chronology, DateTimeZone dateTimeZone) {
        super(chronology, dateTimeZone);
    }

    private DurationField Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DurationField durationField, HashMap<Object, Object> hashMap) {
        if (durationField != null && durationField.isSupported()) {
            if (hashMap.containsKey(durationField)) {
                return (DurationField) hashMap.get(durationField);
            }
            ZonedDurationField zonedDurationField = new ZonedDurationField(durationField, getZone());
            hashMap.put(durationField, zonedDurationField);
            return zonedDurationField;
        }
        return durationField;
    }

    private DateTimeField Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DateTimeField dateTimeField, HashMap<Object, Object> hashMap) {
        if (dateTimeField == null || !dateTimeField.isSupported()) {
            return dateTimeField;
        }
        if (hashMap.containsKey(dateTimeField)) {
            return (DateTimeField) hashMap.get(dateTimeField);
        }
        ZonedDateTimeField zonedDateTimeField = new ZonedDateTimeField(dateTimeField, getZone(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dateTimeField.getDurationField(), hashMap), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dateTimeField.getRangeDurationField(), hashMap), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dateTimeField.getLeapDurationField(), hashMap));
        hashMap.put(dateTimeField, zonedDateTimeField);
        return zonedDateTimeField;
    }

    public static ZonedChronology getInstance(Chronology chronology, DateTimeZone dateTimeZone) {
        if (chronology != null) {
            Chronology withUTC = chronology.withUTC();
            if (withUTC != null) {
                if (dateTimeZone != null) {
                    return new ZonedChronology(withUTC, dateTimeZone);
                }
                throw new IllegalArgumentException("DateTimeZone must not be null");
            }
            throw new IllegalArgumentException("UTC chronology must not be null");
        }
        throw new IllegalArgumentException("Must supply a chronology");
    }

    public static boolean useTimeArithmetic(DurationField durationField) {
        if (durationField != null && durationField.getUnitMillis() < 43200000) {
            return true;
        }
        return false;
    }

    public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j) {
        if (j == Long.MAX_VALUE) {
            return Long.MAX_VALUE;
        }
        if (j == Long.MIN_VALUE) {
            return Long.MIN_VALUE;
        }
        DateTimeZone zone = getZone();
        int offsetFromLocal = zone.getOffsetFromLocal(j);
        long j2 = j - offsetFromLocal;
        if (j > 604800000 && j2 < 0) {
            return Long.MAX_VALUE;
        }
        if (j < -604800000 && j2 > 0) {
            return Long.MIN_VALUE;
        }
        if (offsetFromLocal == zone.getOffset(j2)) {
            return j2;
        }
        throw new IllegalInstantException(j, zone.getID());
    }

    @Override // org.joda.time.chrono.AssembledChronology
    public void assemble(AssembledChronology.Fields fields) {
        HashMap<Object, Object> hashMap = new HashMap<>();
        fields.f13711Wwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13711Wwwwwwwwwwwwwwwwwwwwwww, hashMap);
        fields.f13712Wwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13712Wwwwwwwwwwwwwwwwwwwwwwww, hashMap);
        fields.f13713Wwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13713Wwwwwwwwwwwwwwwwwwwwwwwww, hashMap);
        fields.f13714Wwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13714Wwwwwwwwwwwwwwwwwwwwwwwwww, hashMap);
        fields.f13715Wwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13715Wwwwwwwwwwwwwwwwwwwwwwwwwww, hashMap);
        fields.f13716Wwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13716Wwwwwwwwwwwwwwwwwwwwwwwwwwww, hashMap);
        fields.f13717Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13717Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, hashMap);
        fields.f13718Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13718Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww, hashMap);
        fields.f13719Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13719Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, hashMap);
        fields.f13720Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13720Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, hashMap);
        fields.f13721Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13721Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, hashMap);
        fields.f13722Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13722Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, hashMap);
        fields.f13692Wwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13692Wwww, hashMap);
        fields.f13691Www = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13691Www, hashMap);
        fields.f13690Kkkkkkkkkkkkkkkkkkkkkkkkkk = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13690Kkkkkkkkkkkkkkkkkkkkkkkkkk, hashMap);
        fields.f13689Kkkkkkkkkkkkkkkkkkkkkkkkk = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13689Kkkkkkkkkkkkkkkkkkkkkkkkk, hashMap);
        fields.f13688Kkkkkkkkkkkkkkkkkkkkkkkk = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13688Kkkkkkkkkkkkkkkkkkkkkkkk, hashMap);
        fields.f13699Wwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13699Wwwwwwwwwww, hashMap);
        fields.f13698Wwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13698Wwwwwwwwww, hashMap);
        fields.f13697Wwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13697Wwwwwwwww, hashMap);
        fields.f13693Wwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13693Wwwww, hashMap);
        fields.f13696Wwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13696Wwwwwwww, hashMap);
        fields.f13695Wwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13695Wwwwwww, hashMap);
        fields.f13694Wwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13694Wwwwww, hashMap);
        fields.f13710Wwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13710Wwwwwwwwwwwwwwwwwwwwww, hashMap);
        fields.f13709Wwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13709Wwwwwwwwwwwwwwwwwwwww, hashMap);
        fields.f13708Wwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13708Wwwwwwwwwwwwwwwwwwww, hashMap);
        fields.f13707Wwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13707Wwwwwwwwwwwwwwwwwww, hashMap);
        fields.f13706Wwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13706Wwwwwwwwwwwwwwwwww, hashMap);
        fields.f13705Wwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13705Wwwwwwwwwwwwwwwww, hashMap);
        fields.f13704Wwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13704Wwwwwwwwwwwwwwww, hashMap);
        fields.f13702Wwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13702Wwwwwwwwwwwwww, hashMap);
        fields.f13703Wwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13703Wwwwwwwwwwwwwww, hashMap);
        fields.f13701Wwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13701Wwwwwwwwwwwww, hashMap);
        fields.f13700Wwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fields.f13700Wwwwwwwwwwww, hashMap);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ZonedChronology)) {
            return false;
        }
        ZonedChronology zonedChronology = (ZonedChronology) obj;
        if (getBase().equals(zonedChronology.getBase()) && getZone().equals(zonedChronology.getZone())) {
            return true;
        }
        return false;
    }

    @Override // org.joda.time.chrono.AssembledChronology, org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public long getDateTimeMillis(int i, int i2, int i3, int i4) throws IllegalArgumentException {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(getBase().getDateTimeMillis(i, i2, i3, i4));
    }

    @Override // org.joda.time.chrono.AssembledChronology, org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public DateTimeZone getZone() {
        return (DateTimeZone) getParam();
    }

    public int hashCode() {
        return (getZone().hashCode() * 11) + 326565 + (getBase().hashCode() * 7);
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public String toString() {
        return "ZonedChronology[" + getBase() + ", " + getZone().getID() + AbstractJsonLexerKt.END_LIST;
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public Chronology withUTC() {
        return getBase();
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public Chronology withZone(DateTimeZone dateTimeZone) {
        if (dateTimeZone == null) {
            dateTimeZone = DateTimeZone.getDefault();
        }
        if (dateTimeZone == getParam()) {
            return this;
        }
        if (dateTimeZone == DateTimeZone.UTC) {
            return getBase();
        }
        return new ZonedChronology(getBase(), dateTimeZone);
    }

    @Override // org.joda.time.chrono.AssembledChronology, org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public long getDateTimeMillis(int i, int i2, int i3, int i4, int i5, int i6, int i7) throws IllegalArgumentException {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(getBase().getDateTimeMillis(i, i2, i3, i4, i5, i6, i7));
    }

    @Override // org.joda.time.chrono.AssembledChronology, org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public long getDateTimeMillis(long j, int i, int i2, int i3, int i4) throws IllegalArgumentException {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(getBase().getDateTimeMillis(getZone().getOffset(j) + j, i, i2, i3, i4));
    }
}
