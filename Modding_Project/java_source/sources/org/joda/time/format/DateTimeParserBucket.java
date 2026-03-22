package org.joda.time.format;

import java.util.Arrays;
import java.util.Locale;
import org.joda.time.Chronology;
import org.joda.time.DateTimeField;
import org.joda.time.DateTimeFieldType;
import org.joda.time.DateTimeUtils;
import org.joda.time.DateTimeZone;
import org.joda.time.DurationField;
import org.joda.time.DurationFieldType;
import org.joda.time.IllegalFieldValueException;
import org.joda.time.IllegalInstantException;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class DateTimeParserBucket {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Object f13871Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f13872Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f13873Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public SavedField[] f13874Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Integer f13875Wwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Integer f13876Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public DateTimeZone f13877Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Integer f13878Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final DateTimeZone f13879Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f13880Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Locale f13881Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f13882Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Chronology f13883Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static class SavedField implements Comparable<SavedField> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Locale f13884Wwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f13885Wwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f13886Wwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public DateTimeField f13887Wwwwwwwwwwwwwwwwwwwwwwwww;

        public long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j, boolean z) {
            long j2;
            String str = this.f13885Wwwwwwwwwwwwwwwwwwwwwww;
            if (str == null) {
                j2 = this.f13887Wwwwwwwwwwwwwwwwwwwwwwwww.setExtended(j, this.f13886Wwwwwwwwwwwwwwwwwwwwwwww);
            } else {
                j2 = this.f13887Wwwwwwwwwwwwwwwwwwwwwwwww.set(j, str, this.f13884Wwwwwwwwwwwwwwwwwwwwww);
            }
            if (z) {
                return this.f13887Wwwwwwwwwwwwwwwwwwwwwwwww.roundFloor(j2);
            }
            return j2;
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DateTimeField dateTimeField, String str, Locale locale) {
            this.f13887Wwwwwwwwwwwwwwwwwwwwwwwww = dateTimeField;
            this.f13886Wwwwwwwwwwwwwwwwwwwwwwww = 0;
            this.f13885Wwwwwwwwwwwwwwwwwwwwwww = str;
            this.f13884Wwwwwwwwwwwwwwwwwwwwww = locale;
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DateTimeField dateTimeField, int i) {
            this.f13887Wwwwwwwwwwwwwwwwwwwwwwwww = dateTimeField;
            this.f13886Wwwwwwwwwwwwwwwwwwwwwwww = i;
            this.f13885Wwwwwwwwwwwwwwwwwwwwwww = null;
            this.f13884Wwwwwwwwwwwwwwwwwwwwww = null;
        }

        @Override // java.lang.Comparable
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public int compareTo(SavedField savedField) {
            DateTimeField dateTimeField = savedField.f13887Wwwwwwwwwwwwwwwwwwwwwwwww;
            int Wwwwwwwwwwwwwwwwwwwwwwwww2 = DateTimeParserBucket.Wwwwwwwwwwwwwwwwwwwwwwwww(this.f13887Wwwwwwwwwwwwwwwwwwwwwwwww.getRangeDurationField(), dateTimeField.getRangeDurationField());
            if (Wwwwwwwwwwwwwwwwwwwwwwwww2 != 0) {
                return Wwwwwwwwwwwwwwwwwwwwwwwww2;
            }
            return DateTimeParserBucket.Wwwwwwwwwwwwwwwwwwwwwwwww(this.f13887Wwwwwwwwwwwwwwwwwwwwwwwww.getDurationField(), dateTimeField.getDurationField());
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public class SavedState {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f13889Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final SavedField[] f13890Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Integer f13891Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final DateTimeZone f13892Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public SavedState() {
            this.f13892Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = DateTimeParserBucket.this.f13877Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
            this.f13891Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = DateTimeParserBucket.this.f13876Wwwwwwwwwwwwwwwwwwwwwwwwwww;
            this.f13890Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = DateTimeParserBucket.this.f13874Wwwwwwwwwwwwwwwwwwwwwwwww;
            this.f13889Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = DateTimeParserBucket.this.f13873Wwwwwwwwwwwwwwwwwwwwwwww;
        }

        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DateTimeParserBucket dateTimeParserBucket) {
            if (dateTimeParserBucket == DateTimeParserBucket.this) {
                dateTimeParserBucket.f13877Wwwwwwwwwwwwwwwwwwwwwwwwwwww = this.f13892Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                dateTimeParserBucket.f13876Wwwwwwwwwwwwwwwwwwwwwwwwwww = this.f13891Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                dateTimeParserBucket.f13874Wwwwwwwwwwwwwwwwwwwwwwwww = this.f13890Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (this.f13889Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww < dateTimeParserBucket.f13873Wwwwwwwwwwwwwwwwwwwwwwww) {
                    dateTimeParserBucket.f13872Wwwwwwwwwwwwwwwwwwwwwww = true;
                }
                dateTimeParserBucket.f13873Wwwwwwwwwwwwwwwwwwwwwwww = this.f13889Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                return true;
            }
            return false;
        }
    }

    public DateTimeParserBucket(long j, Chronology chronology, Locale locale, Integer num, int i) {
        Chronology Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(chronology);
        this.f13882Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = j;
        DateTimeZone zone = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getZone();
        this.f13879Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = zone;
        this.f13883Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.withUTC();
        this.f13881Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = locale == null ? Locale.getDefault() : locale;
        this.f13880Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        this.f13878Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = num;
        this.f13877Wwwwwwwwwwwwwwwwwwwwwwwwwwww = zone;
        this.f13875Wwwwwwwwwwwwwwwwwwwwwwwwww = num;
        this.f13874Wwwwwwwwwwwwwwwwwwwwwwwww = new SavedField[8];
    }

    public static void Wwwwwwww(SavedField[] savedFieldArr, int i) {
        if (i > 10) {
            Arrays.sort(savedFieldArr, 0, i);
            return;
        }
        for (int i2 = 0; i2 < i; i2++) {
            for (int i3 = i2; i3 > 0; i3--) {
                int i4 = i3 - 1;
                if (savedFieldArr[i4].compareTo(savedFieldArr[i3]) > 0) {
                    SavedField savedField = savedFieldArr[i3];
                    savedFieldArr[i3] = savedFieldArr[i4];
                    savedFieldArr[i4] = savedField;
                }
            }
        }
    }

    public static int Wwwwwwwwwwwwwwwwwwwwwwwww(DurationField durationField, DurationField durationField2) {
        if (durationField != null && durationField.isSupported()) {
            if (durationField2 != null && durationField2.isSupported()) {
                return -durationField.compareTo(durationField2);
            }
            return 1;
        } else if (durationField2 != null && durationField2.isSupported()) {
            return -1;
        } else {
            return 0;
        }
    }

    public void Wwwwwwwww(DateTimeZone dateTimeZone) {
        this.f13871Wwwwwwwwwwwwwwwwwwwwww = null;
        this.f13877Wwwwwwwwwwwwwwwwwwwwwwwwwwww = dateTimeZone;
    }

    public void Wwwwwwwwww(Integer num) {
        this.f13871Wwwwwwwwwwwwwwwwwwwwww = null;
        this.f13876Wwwwwwwwwwwwwwwwwwwwwwwwwww = num;
    }

    public Object Wwwwwwwwwww() {
        if (this.f13871Wwwwwwwwwwwwwwwwwwwwww == null) {
            this.f13871Wwwwwwwwwwwwwwwwwwwwww = new SavedState();
        }
        return this.f13871Wwwwwwwwwwwwwwwwwwwwww;
    }

    public void Wwwwwwwwwwww(DateTimeFieldType dateTimeFieldType, String str, Locale locale) {
        Wwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dateTimeFieldType.getField(this.f13883Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww), str, locale);
    }

    public void Wwwwwwwwwwwww(DateTimeFieldType dateTimeFieldType, int i) {
        Wwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dateTimeFieldType.getField(this.f13883Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww), i);
    }

    public void Wwwwwwwwwwwwww(DateTimeField dateTimeField, int i) {
        Wwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dateTimeField, i);
    }

    public boolean Wwwwwwwwwwwwwww(Object obj) {
        if ((obj instanceof SavedState) && ((SavedState) obj).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            this.f13871Wwwwwwwwwwwwwwwwwwwwww = obj;
            return true;
        }
        return false;
    }

    public final SavedField Wwwwwwwwwwwwwwww() {
        int length;
        SavedField[] savedFieldArr = this.f13874Wwwwwwwwwwwwwwwwwwwwwwwww;
        int i = this.f13873Wwwwwwwwwwwwwwwwwwwwwwww;
        if (i == savedFieldArr.length || this.f13872Wwwwwwwwwwwwwwwwwwwwwww) {
            if (i == savedFieldArr.length) {
                length = i * 2;
            } else {
                length = savedFieldArr.length;
            }
            SavedField[] savedFieldArr2 = new SavedField[length];
            System.arraycopy(savedFieldArr, 0, savedFieldArr2, 0, i);
            this.f13874Wwwwwwwwwwwwwwwwwwwwwwwww = savedFieldArr2;
            this.f13872Wwwwwwwwwwwwwwwwwwwwwww = false;
            savedFieldArr = savedFieldArr2;
        }
        this.f13871Wwwwwwwwwwwwwwwwwwwwww = null;
        SavedField savedField = savedFieldArr[i];
        if (savedField == null) {
            savedField = new SavedField();
            savedFieldArr[i] = savedField;
        }
        this.f13873Wwwwwwwwwwwwwwwwwwwwwwww = i + 1;
        return savedField;
    }

    public DateTimeZone Wwwwwwwwwwwwwwwww() {
        return this.f13877Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public Integer Wwwwwwwwwwwwwwwwww() {
        return this.f13875Wwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public Integer Wwwwwwwwwwwwwwwwwww() {
        return this.f13876Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public Locale Wwwwwwwwwwwwwwwwwwww() {
        return this.f13881Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public Chronology Wwwwwwwwwwwwwwwwwwwww() {
        return this.f13883Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public long Wwwwwwwwwwwwwwwwwwwwww(InternalParser internalParser, CharSequence charSequence) {
        int parseInto = internalParser.parseInto(this, charSequence, 0);
        if (parseInto >= 0) {
            if (parseInto >= charSequence.length()) {
                return Wwwwwwwwwwwwwwwwwwwwwwww(true, charSequence);
            }
        } else {
            parseInto = ~parseInto;
        }
        throw new IllegalArgumentException(FormatUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwww(charSequence.toString(), parseInto));
    }

    public long Wwwwwwwwwwwwwwwwwwwwwww(boolean z, String str) {
        return Wwwwwwwwwwwwwwwwwwwwwwww(z, str);
    }

    public long Wwwwwwwwwwwwwwwwwwwwwwww(boolean z, CharSequence charSequence) {
        Integer num;
        boolean z2;
        SavedField[] savedFieldArr = this.f13874Wwwwwwwwwwwwwwwwwwwwwwwww;
        int i = this.f13873Wwwwwwwwwwwwwwwwwwwwwwww;
        if (this.f13872Wwwwwwwwwwwwwwwwwwwwwww) {
            savedFieldArr = (SavedField[]) savedFieldArr.clone();
            this.f13874Wwwwwwwwwwwwwwwwwwwwwwwww = savedFieldArr;
            this.f13872Wwwwwwwwwwwwwwwwwwwwwww = false;
        }
        Wwwwwwww(savedFieldArr, i);
        if (i > 0) {
            DurationField field = DurationFieldType.months().getField(this.f13883Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            DurationField field2 = DurationFieldType.days().getField(this.f13883Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            DurationField durationField = savedFieldArr[0].f13887Wwwwwwwwwwwwwwwwwwwwwwwww.getDurationField();
            if (Wwwwwwwwwwwwwwwwwwwwwwwww(durationField, field) >= 0 && Wwwwwwwwwwwwwwwwwwwwwwwww(durationField, field2) <= 0) {
                Wwwwwwwwwwwww(DateTimeFieldType.year(), this.f13880Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                return Wwwwwwwwwwwwwwwwwwwwwwww(z, charSequence);
            }
        }
        long j = this.f13882Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        for (int i2 = 0; i2 < i; i2++) {
            try {
                j = savedFieldArr[i2].Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j, z);
            } catch (IllegalFieldValueException e) {
                if (charSequence != null) {
                    e.prependMessage("Cannot parse \"" + ((Object) charSequence) + '\"');
                }
                throw e;
            }
        }
        if (z) {
            for (int i3 = 0; i3 < i; i3++) {
                if (!savedFieldArr[i3].f13887Wwwwwwwwwwwwwwwwwwwwwwwww.isLenient()) {
                    SavedField savedField = savedFieldArr[i3];
                    if (i3 == i - 1) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    j = savedField.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j, z2);
                }
            }
        }
        if (this.f13876Wwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
            return j - num.intValue();
        }
        DateTimeZone dateTimeZone = this.f13877Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (dateTimeZone != null) {
            int offsetFromLocal = dateTimeZone.getOffsetFromLocal(j);
            j -= offsetFromLocal;
            if (offsetFromLocal != this.f13877Wwwwwwwwwwwwwwwwwwwwwwwwwwww.getOffset(j)) {
                String str = "Illegal instant due to time zone offset transition (" + this.f13877Wwwwwwwwwwwwwwwwwwwwwwwwwwww + ')';
                if (charSequence != null) {
                    str = "Cannot parse \"" + ((Object) charSequence) + "\": " + str;
                }
                throw new IllegalInstantException(str);
            }
        }
        return j;
    }
}
