package org.joda.time;

import androidx.lifecycle.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
import com.unity3d.services.core.fid.Constants;
import java.text.DateFormatSymbols;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import org.joda.time.chrono.ISOChronology;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class DateTimeUtils {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final AtomicReference<Map<String, DateTimeZone>> f13600Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static volatile MillisProvider f13601Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final MillisProvider f13602Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static class FixedMillisProvider implements MillisProvider {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final long f13603Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        @Override // org.joda.time.DateTimeUtils.MillisProvider
        public long getMillis() {
            return this.f13603Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public interface MillisProvider {
        long getMillis();
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static class OffsetMillisProvider implements MillisProvider {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final long f13604Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        @Override // org.joda.time.DateTimeUtils.MillisProvider
        public long getMillis() {
            return System.currentTimeMillis() + this.f13604Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static class SystemMillisProvider implements MillisProvider {
        @Override // org.joda.time.DateTimeUtils.MillisProvider
        public long getMillis() {
            return System.currentTimeMillis();
        }
    }

    static {
        SystemMillisProvider systemMillisProvider = new SystemMillisProvider();
        f13602Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = systemMillisProvider;
        f13601Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = systemMillisProvider;
        f13600Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new AtomicReference<>();
    }

    public static void Wwwwwwwwwwwwwwwwwwww(Map<String, DateTimeZone> map, String str, String str2) {
        try {
            map.put(str, DateTimeZone.forID(str2));
        } catch (RuntimeException unused) {
        }
    }

    public static final boolean Wwwwwwwwwwwwwwwwwwwww(ReadablePartial readablePartial) {
        if (readablePartial != null) {
            DurationFieldType durationFieldType = null;
            for (int i = 0; i < readablePartial.size(); i++) {
                DateTimeField field = readablePartial.getField(i);
                if (i > 0 && (field.getRangeDurationField() == null || field.getRangeDurationField().getType() != durationFieldType)) {
                    return false;
                }
                durationFieldType = field.getDurationField().getType();
            }
            return true;
        }
        throw new IllegalArgumentException("Partial must not be null");
    }

    public static final DateTimeZone Wwwwwwwwwwwwwwwwwwwwww(DateTimeZone dateTimeZone) {
        if (dateTimeZone == null) {
            return DateTimeZone.getDefault();
        }
        return dateTimeZone;
    }

    public static final ReadableInterval Wwwwwwwwwwwwwwwwwwwwwww(ReadableInterval readableInterval) {
        if (readableInterval == null) {
            long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            return new Interval(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        }
        return readableInterval;
    }

    public static final PeriodType Wwwwwwwwwwwwwwwwwwwwwwww(PeriodType periodType) {
        if (periodType == null) {
            return PeriodType.standard();
        }
        return periodType;
    }

    public static final Chronology Wwwwwwwwwwwwwwwwwwwwwwwww(ReadableInterval readableInterval) {
        if (readableInterval == null) {
            return ISOChronology.getInstance();
        }
        Chronology chronology = readableInterval.getChronology();
        if (chronology == null) {
            return ISOChronology.getInstance();
        }
        return chronology;
    }

    public static final Chronology Wwwwwwwwwwwwwwwwwwwwwwwwww(ReadableInstant readableInstant, ReadableInstant readableInstant2) {
        Chronology chronology;
        if (readableInstant != null) {
            chronology = readableInstant.getChronology();
        } else if (readableInstant2 != null) {
            chronology = readableInstant2.getChronology();
        } else {
            chronology = null;
        }
        if (chronology == null) {
            return ISOChronology.getInstance();
        }
        return chronology;
    }

    public static final long Wwwwwwwwwwwwwwwwwwwwwwwwwww(ReadableInstant readableInstant) {
        if (readableInstant == null) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        return readableInstant.getMillis();
    }

    public static final Chronology Wwwwwwwwwwwwwwwwwwwwwwwwwwww(ReadableInstant readableInstant) {
        if (readableInstant == null) {
            return ISOChronology.getInstance();
        }
        Chronology chronology = readableInstant.getChronology();
        if (chronology == null) {
            return ISOChronology.getInstance();
        }
        return chronology;
    }

    public static final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(ReadableDuration readableDuration) {
        if (readableDuration == null) {
            return 0L;
        }
        return readableDuration.getMillis();
    }

    public static final Map<String, DateTimeZone> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        AtomicReference<Map<String, DateTimeZone>> atomicReference = f13600Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        Map<String, DateTimeZone> map = atomicReference.get();
        if (map == null) {
            map = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(atomicReference, null, map)) {
                return atomicReference.get();
            }
        }
        return map;
    }

    public static final DateFormatSymbols Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Locale locale) {
        try {
            return (DateFormatSymbols) DateFormatSymbols.class.getMethod(Constants.GET_INSTANCE, Locale.class).invoke(null, locale);
        } catch (Exception unused) {
            return new DateFormatSymbols(locale);
        }
    }

    public static final Chronology Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Chronology chronology) {
        if (chronology == null) {
            return ISOChronology.getInstance();
        }
        return chronology;
    }

    public static final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return f13601Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getMillis();
    }

    public static Map<String, DateTimeZone> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        DateTimeZone dateTimeZone = DateTimeZone.UTC;
        linkedHashMap.put("UT", dateTimeZone);
        linkedHashMap.put("UTC", dateTimeZone);
        linkedHashMap.put("GMT", dateTimeZone);
        Wwwwwwwwwwwwwwwwwwww(linkedHashMap, "EST", "America/New_York");
        Wwwwwwwwwwwwwwwwwwww(linkedHashMap, "EDT", "America/New_York");
        Wwwwwwwwwwwwwwwwwwww(linkedHashMap, "CST", "America/Chicago");
        Wwwwwwwwwwwwwwwwwwww(linkedHashMap, "CDT", "America/Chicago");
        Wwwwwwwwwwwwwwwwwwww(linkedHashMap, "MST", "America/Denver");
        Wwwwwwwwwwwwwwwwwwww(linkedHashMap, "MDT", "America/Denver");
        Wwwwwwwwwwwwwwwwwwww(linkedHashMap, "PST", "America/Los_Angeles");
        Wwwwwwwwwwwwwwwwwwww(linkedHashMap, "PDT", "America/Los_Angeles");
        return Collections.unmodifiableMap(linkedHashMap);
    }
}
