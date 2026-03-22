package org.joda.time.chrono;

import java.util.HashMap;
import java.util.Locale;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.joda.time.Chronology;
import org.joda.time.DateTime;
import org.joda.time.DateTimeField;
import org.joda.time.DateTimeZone;
import org.joda.time.DurationField;
import org.joda.time.MutableDateTime;
import org.joda.time.ReadableDateTime;
import org.joda.time.chrono.AssembledChronology;
import org.joda.time.field.DecoratedDateTimeField;
import org.joda.time.field.DecoratedDurationField;
import org.joda.time.field.FieldUtils;
import org.joda.time.format.DateTimeFormatter;
import org.joda.time.format.ISODateTimeFormat;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public final class LimitChronology extends AssembledChronology {
    private static final long serialVersionUID = 7670866536893052522L;

    /* renamed from: Kkkkkkkkkkkkk  reason: collision with root package name */
    public transient LimitChronology f13778Kkkkkkkkkkkkk;
    final DateTime iLowerLimit;
    final DateTime iUpperLimit;

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public class LimitException extends IllegalArgumentException {
        private static final long serialVersionUID = -5924689995607498581L;
        private final boolean iIsLow;

        public LimitException(String str, boolean z) {
            super(str);
            this.iIsLow = z;
        }

        @Override // java.lang.Throwable
        public String getMessage() {
            StringBuffer stringBuffer = new StringBuffer(85);
            stringBuffer.append("The");
            String message = super.getMessage();
            if (message != null) {
                stringBuffer.append(' ');
                stringBuffer.append(message);
            }
            stringBuffer.append(" instant is ");
            DateTimeFormatter Wwwwwwwwwwwwww2 = ISODateTimeFormat.Wwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwww(LimitChronology.this.getBase());
            if (this.iIsLow) {
                stringBuffer.append("below the supported minimum of ");
                Wwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwww(stringBuffer, LimitChronology.this.getLowerLimit().getMillis());
            } else {
                stringBuffer.append("above the supported maximum of ");
                Wwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwww(stringBuffer, LimitChronology.this.getUpperLimit().getMillis());
            }
            stringBuffer.append(" (");
            stringBuffer.append(LimitChronology.this.getBase());
            stringBuffer.append(')');
            return stringBuffer.toString();
        }

        @Override // java.lang.Throwable
        public String toString() {
            return "IllegalArgumentException: " + getMessage();
        }
    }

    public LimitChronology(Chronology chronology, DateTime dateTime, DateTime dateTime2) {
        super(chronology, null);
        this.iLowerLimit = dateTime;
        this.iUpperLimit = dateTime2;
    }

    public static LimitChronology getInstance(Chronology chronology, ReadableDateTime readableDateTime, ReadableDateTime readableDateTime2) {
        DateTime dateTime;
        if (chronology != null) {
            DateTime dateTime2 = null;
            if (readableDateTime == null) {
                dateTime = null;
            } else {
                dateTime = readableDateTime.toDateTime();
            }
            if (readableDateTime2 != null) {
                dateTime2 = readableDateTime2.toDateTime();
            }
            if (dateTime != null && dateTime2 != null && !dateTime.isBefore(dateTime2)) {
                throw new IllegalArgumentException("The lower limit must be come before than the upper limit");
            }
            return new LimitChronology(chronology, dateTime, dateTime2);
        }
        throw new IllegalArgumentException("Must supply a chronology");
    }

    public final DurationField Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DurationField durationField, HashMap<Object, Object> hashMap) {
        if (durationField != null && durationField.isSupported()) {
            if (hashMap.containsKey(durationField)) {
                return (DurationField) hashMap.get(durationField);
            }
            LimitDurationField limitDurationField = new LimitDurationField(durationField);
            hashMap.put(durationField, limitDurationField);
            return limitDurationField;
        }
        return durationField;
    }

    public final DateTimeField Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DateTimeField dateTimeField, HashMap<Object, Object> hashMap) {
        if (dateTimeField == null || !dateTimeField.isSupported()) {
            return dateTimeField;
        }
        if (hashMap.containsKey(dateTimeField)) {
            return (DateTimeField) hashMap.get(dateTimeField);
        }
        LimitDateTimeField limitDateTimeField = new LimitDateTimeField(dateTimeField, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dateTimeField.getDurationField(), hashMap), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dateTimeField.getRangeDurationField(), hashMap), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dateTimeField.getLeapDurationField(), hashMap));
        hashMap.put(dateTimeField, limitDateTimeField);
        return limitDateTimeField;
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

    public void checkLimits(long j, String str) {
        DateTime dateTime = this.iLowerLimit;
        if (dateTime != null && j < dateTime.getMillis()) {
            throw new LimitException(str, true);
        }
        DateTime dateTime2 = this.iUpperLimit;
        if (dateTime2 != null && j >= dateTime2.getMillis()) {
            throw new LimitException(str, false);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LimitChronology)) {
            return false;
        }
        LimitChronology limitChronology = (LimitChronology) obj;
        if (getBase().equals(limitChronology.getBase()) && FieldUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(getLowerLimit(), limitChronology.getLowerLimit()) && FieldUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(getUpperLimit(), limitChronology.getUpperLimit())) {
            return true;
        }
        return false;
    }

    @Override // org.joda.time.chrono.AssembledChronology, org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public long getDateTimeMillis(int i, int i2, int i3, int i4) throws IllegalArgumentException {
        long dateTimeMillis = getBase().getDateTimeMillis(i, i2, i3, i4);
        checkLimits(dateTimeMillis, "resulting");
        return dateTimeMillis;
    }

    public DateTime getLowerLimit() {
        return this.iLowerLimit;
    }

    public DateTime getUpperLimit() {
        return this.iUpperLimit;
    }

    public int hashCode() {
        int i;
        int i2 = 0;
        if (getLowerLimit() != null) {
            i = getLowerLimit().hashCode();
        } else {
            i = 0;
        }
        int i3 = i + 317351877;
        if (getUpperLimit() != null) {
            i2 = getUpperLimit().hashCode();
        }
        return i3 + i2 + (getBase().hashCode() * 7);
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public String toString() {
        String abstractDateTime;
        StringBuilder sb = new StringBuilder();
        sb.append("LimitChronology[");
        sb.append(getBase().toString());
        sb.append(", ");
        String str = "NoLimit";
        if (getLowerLimit() == null) {
            abstractDateTime = "NoLimit";
        } else {
            abstractDateTime = getLowerLimit().toString();
        }
        sb.append(abstractDateTime);
        sb.append(", ");
        if (getUpperLimit() != null) {
            str = getUpperLimit().toString();
        }
        sb.append(str);
        sb.append(AbstractJsonLexerKt.END_LIST);
        return sb.toString();
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public Chronology withUTC() {
        return withZone(DateTimeZone.UTC);
    }

    @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public Chronology withZone(DateTimeZone dateTimeZone) {
        LimitChronology limitChronology;
        if (dateTimeZone == null) {
            dateTimeZone = DateTimeZone.getDefault();
        }
        if (dateTimeZone == getZone()) {
            return this;
        }
        DateTimeZone dateTimeZone2 = DateTimeZone.UTC;
        if (dateTimeZone == dateTimeZone2 && (limitChronology = this.f13778Kkkkkkkkkkkkk) != null) {
            return limitChronology;
        }
        DateTime dateTime = this.iLowerLimit;
        if (dateTime != null) {
            MutableDateTime mutableDateTime = dateTime.toMutableDateTime();
            mutableDateTime.setZoneRetainFields(dateTimeZone);
            dateTime = mutableDateTime.toDateTime();
        }
        DateTime dateTime2 = this.iUpperLimit;
        if (dateTime2 != null) {
            MutableDateTime mutableDateTime2 = dateTime2.toMutableDateTime();
            mutableDateTime2.setZoneRetainFields(dateTimeZone);
            dateTime2 = mutableDateTime2.toDateTime();
        }
        LimitChronology limitChronology2 = getInstance(getBase().withZone(dateTimeZone), dateTime, dateTime2);
        if (dateTimeZone == dateTimeZone2) {
            this.f13778Kkkkkkkkkkkkk = limitChronology2;
        }
        return limitChronology2;
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public class LimitDurationField extends DecoratedDurationField {
        private static final long serialVersionUID = 8049297699408782284L;

        public LimitDurationField(DurationField durationField) {
            super(durationField, durationField.getType());
        }

        @Override // org.joda.time.field.DecoratedDurationField, org.joda.time.DurationField
        public long add(long j, int i) {
            LimitChronology.this.checkLimits(j, null);
            long add = getWrappedField().add(j, i);
            LimitChronology.this.checkLimits(add, "resulting");
            return add;
        }

        @Override // org.joda.time.field.BaseDurationField, org.joda.time.DurationField
        public int getDifference(long j, long j2) {
            LimitChronology.this.checkLimits(j, "minuend");
            LimitChronology.this.checkLimits(j2, "subtrahend");
            return getWrappedField().getDifference(j, j2);
        }

        @Override // org.joda.time.field.DecoratedDurationField, org.joda.time.DurationField
        public long getDifferenceAsLong(long j, long j2) {
            LimitChronology.this.checkLimits(j, "minuend");
            LimitChronology.this.checkLimits(j2, "subtrahend");
            return getWrappedField().getDifferenceAsLong(j, j2);
        }

        @Override // org.joda.time.field.DecoratedDurationField, org.joda.time.DurationField
        public long getMillis(int i, long j) {
            LimitChronology.this.checkLimits(j, null);
            return getWrappedField().getMillis(i, j);
        }

        @Override // org.joda.time.field.BaseDurationField, org.joda.time.DurationField
        public int getValue(long j, long j2) {
            LimitChronology.this.checkLimits(j2, null);
            return getWrappedField().getValue(j, j2);
        }

        @Override // org.joda.time.field.DecoratedDurationField, org.joda.time.DurationField
        public long getValueAsLong(long j, long j2) {
            LimitChronology.this.checkLimits(j2, null);
            return getWrappedField().getValueAsLong(j, j2);
        }

        @Override // org.joda.time.field.DecoratedDurationField, org.joda.time.DurationField
        public long getMillis(long j, long j2) {
            LimitChronology.this.checkLimits(j2, null);
            return getWrappedField().getMillis(j, j2);
        }

        @Override // org.joda.time.field.DecoratedDurationField, org.joda.time.DurationField
        public long add(long j, long j2) {
            LimitChronology.this.checkLimits(j, null);
            long add = getWrappedField().add(j, j2);
            LimitChronology.this.checkLimits(add, "resulting");
            return add;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public class LimitDateTimeField extends DecoratedDateTimeField {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final DurationField f13780Wwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final DurationField f13781Wwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final DurationField f13782Wwwwwwwwwwwwwwwwwwwwwww;

        public LimitDateTimeField(DateTimeField dateTimeField, DurationField durationField, DurationField durationField2, DurationField durationField3) {
            super(dateTimeField, dateTimeField.getType());
            this.f13782Wwwwwwwwwwwwwwwwwwwwwww = durationField;
            this.f13781Wwwwwwwwwwwwwwwwwwwwww = durationField2;
            this.f13780Wwwwwwwwwwwwwwwwwwwww = durationField3;
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public long add(long j, int i) {
            LimitChronology.this.checkLimits(j, null);
            long add = getWrappedField().add(j, i);
            LimitChronology.this.checkLimits(add, "resulting");
            return add;
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public long addWrapField(long j, int i) {
            LimitChronology.this.checkLimits(j, null);
            long addWrapField = getWrappedField().addWrapField(j, i);
            LimitChronology.this.checkLimits(addWrapField, "resulting");
            return addWrapField;
        }

        @Override // org.joda.time.field.DecoratedDateTimeField, org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public int get(long j) {
            LimitChronology.this.checkLimits(j, null);
            return getWrappedField().get(j);
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public String getAsShortText(long j, Locale locale) {
            LimitChronology.this.checkLimits(j, null);
            return getWrappedField().getAsShortText(j, locale);
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public String getAsText(long j, Locale locale) {
            LimitChronology.this.checkLimits(j, null);
            return getWrappedField().getAsText(j, locale);
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public int getDifference(long j, long j2) {
            LimitChronology.this.checkLimits(j, "minuend");
            LimitChronology.this.checkLimits(j2, "subtrahend");
            return getWrappedField().getDifference(j, j2);
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public long getDifferenceAsLong(long j, long j2) {
            LimitChronology.this.checkLimits(j, "minuend");
            LimitChronology.this.checkLimits(j2, "subtrahend");
            return getWrappedField().getDifferenceAsLong(j, j2);
        }

        @Override // org.joda.time.field.DecoratedDateTimeField, org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public final DurationField getDurationField() {
            return this.f13782Wwwwwwwwwwwwwwwwwwwwwww;
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public int getLeapAmount(long j) {
            LimitChronology.this.checkLimits(j, null);
            return getWrappedField().getLeapAmount(j);
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public final DurationField getLeapDurationField() {
            return this.f13780Wwwwwwwwwwwwwwwwwwwww;
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public int getMaximumShortTextLength(Locale locale) {
            return getWrappedField().getMaximumShortTextLength(locale);
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public int getMaximumTextLength(Locale locale) {
            return getWrappedField().getMaximumTextLength(locale);
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public int getMaximumValue(long j) {
            LimitChronology.this.checkLimits(j, null);
            return getWrappedField().getMaximumValue(j);
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public int getMinimumValue(long j) {
            LimitChronology.this.checkLimits(j, null);
            return getWrappedField().getMinimumValue(j);
        }

        @Override // org.joda.time.field.DecoratedDateTimeField, org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public final DurationField getRangeDurationField() {
            return this.f13781Wwwwwwwwwwwwwwwwwwwwww;
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public boolean isLeap(long j) {
            LimitChronology.this.checkLimits(j, null);
            return getWrappedField().isLeap(j);
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public long remainder(long j) {
            LimitChronology.this.checkLimits(j, null);
            long remainder = getWrappedField().remainder(j);
            LimitChronology.this.checkLimits(remainder, "resulting");
            return remainder;
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public long roundCeiling(long j) {
            LimitChronology.this.checkLimits(j, null);
            long roundCeiling = getWrappedField().roundCeiling(j);
            LimitChronology.this.checkLimits(roundCeiling, "resulting");
            return roundCeiling;
        }

        @Override // org.joda.time.field.DecoratedDateTimeField, org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public long roundFloor(long j) {
            LimitChronology.this.checkLimits(j, null);
            long roundFloor = getWrappedField().roundFloor(j);
            LimitChronology.this.checkLimits(roundFloor, "resulting");
            return roundFloor;
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public long roundHalfCeiling(long j) {
            LimitChronology.this.checkLimits(j, null);
            long roundHalfCeiling = getWrappedField().roundHalfCeiling(j);
            LimitChronology.this.checkLimits(roundHalfCeiling, "resulting");
            return roundHalfCeiling;
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public long roundHalfEven(long j) {
            LimitChronology.this.checkLimits(j, null);
            long roundHalfEven = getWrappedField().roundHalfEven(j);
            LimitChronology.this.checkLimits(roundHalfEven, "resulting");
            return roundHalfEven;
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public long roundHalfFloor(long j) {
            LimitChronology.this.checkLimits(j, null);
            long roundHalfFloor = getWrappedField().roundHalfFloor(j);
            LimitChronology.this.checkLimits(roundHalfFloor, "resulting");
            return roundHalfFloor;
        }

        @Override // org.joda.time.field.DecoratedDateTimeField, org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public long set(long j, int i) {
            LimitChronology.this.checkLimits(j, null);
            long j2 = getWrappedField().set(j, i);
            LimitChronology.this.checkLimits(j2, "resulting");
            return j2;
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public long add(long j, long j2) {
            LimitChronology.this.checkLimits(j, null);
            long add = getWrappedField().add(j, j2);
            LimitChronology.this.checkLimits(add, "resulting");
            return add;
        }

        @Override // org.joda.time.field.BaseDateTimeField, org.joda.time.DateTimeField
        public long set(long j, String str, Locale locale) {
            LimitChronology.this.checkLimits(j, null);
            long j2 = getWrappedField().set(j, str, locale);
            LimitChronology.this.checkLimits(j2, "resulting");
            return j2;
        }
    }

    @Override // org.joda.time.chrono.AssembledChronology, org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public long getDateTimeMillis(int i, int i2, int i3, int i4, int i5, int i6, int i7) throws IllegalArgumentException {
        long dateTimeMillis = getBase().getDateTimeMillis(i, i2, i3, i4, i5, i6, i7);
        checkLimits(dateTimeMillis, "resulting");
        return dateTimeMillis;
    }

    @Override // org.joda.time.chrono.AssembledChronology, org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
    public long getDateTimeMillis(long j, int i, int i2, int i3, int i4) throws IllegalArgumentException {
        checkLimits(j, null);
        long dateTimeMillis = getBase().getDateTimeMillis(j, i, i2, i3, i4);
        checkLimits(dateTimeMillis, "resulting");
        return dateTimeMillis;
    }
}
