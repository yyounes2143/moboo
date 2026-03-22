package org.joda.time;

import androidx.lifecycle.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
import com.google.common.net.HttpHeaders;
import j$.util.DesugarTimeZone;
import java.io.File;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicReference;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.joda.convert.FromString;
import org.joda.convert.ToString;
import org.joda.time.chrono.BaseChronology;
import org.joda.time.field.FieldUtils;
import org.joda.time.format.DateTimeFormatter;
import org.joda.time.format.DateTimeFormatterBuilder;
import org.joda.time.format.FormatUtils;
import org.joda.time.tz.DefaultNameProvider;
import org.joda.time.tz.FixedDateTimeZone;
import org.joda.time.tz.NameProvider;
import org.joda.time.tz.Provider;
import org.joda.time.tz.UTCProvider;
import org.joda.time.tz.ZoneInfoProvider;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public abstract class DateTimeZone implements Serializable {
    public static final String DEFAULT_TZ_DATA_PATH = "org/joda/time/tz/data";
    private static final long serialVersionUID = 5546345482340108586L;
    private final String iID;
    public static final DateTimeZone UTC = UTCDateTimeZone.INSTANCE;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final AtomicReference<Provider> f13607Wwwwwwwwwwwwwwwwwwwwwwwww = new AtomicReference<>();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final AtomicReference<NameProvider> f13606Wwwwwwwwwwwwwwwwwwwwwwww = new AtomicReference<>();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final AtomicReference<DateTimeZone> f13605Wwwwwwwwwwwwwwwwwwwwwww = new AtomicReference<>();

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static final class LazyInit {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final Map<String, String> f13609Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final DateTimeFormatter f13608Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

        public static Map<String, String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            HashMap hashMap = new HashMap();
            hashMap.put("GMT", "UTC");
            hashMap.put("WET", "WET");
            hashMap.put("CET", "CET");
            hashMap.put("MET", "CET");
            hashMap.put(HttpHeaders.ECT, "CET");
            hashMap.put("EET", "EET");
            hashMap.put("MIT", "Pacific/Apia");
            hashMap.put("HST", "Pacific/Honolulu");
            hashMap.put("AST", "America/Anchorage");
            hashMap.put("PST", "America/Los_Angeles");
            hashMap.put("MST", "America/Denver");
            hashMap.put("PNT", "America/Phoenix");
            hashMap.put("CST", "America/Chicago");
            hashMap.put("EST", "America/New_York");
            hashMap.put("IET", "America/Indiana/Indianapolis");
            hashMap.put("PRT", "America/Puerto_Rico");
            hashMap.put("CNT", "America/St_Johns");
            hashMap.put("AGT", "America/Argentina/Buenos_Aires");
            hashMap.put("BET", "America/Sao_Paulo");
            hashMap.put("ART", "Africa/Cairo");
            hashMap.put("CAT", "Africa/Harare");
            hashMap.put("EAT", "Africa/Addis_Ababa");
            hashMap.put("NET", "Asia/Yerevan");
            hashMap.put("PLT", "Asia/Karachi");
            hashMap.put("IST", "Asia/Kolkata");
            hashMap.put("BST", "Asia/Dhaka");
            hashMap.put("VST", "Asia/Ho_Chi_Minh");
            hashMap.put("CTT", "Asia/Shanghai");
            hashMap.put("JST", "Asia/Tokyo");
            hashMap.put("ACT", "Australia/Darwin");
            hashMap.put("AET", "Australia/Sydney");
            hashMap.put("SST", "Pacific/Guadalcanal");
            hashMap.put("NST", "Pacific/Auckland");
            return Collections.unmodifiableMap(hashMap);
        }

        public static DateTimeFormatter Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return new DateTimeFormatterBuilder().Kkkkkkkkkkkkkkkkkkkk(null, true, 2, 4).Kk().Wwwwwwwwwwwwww(new BaseChronology() { // from class: org.joda.time.DateTimeZone.LazyInit.1
                private static final long serialVersionUID = -3128740902654445468L;

                @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
                public DateTimeZone getZone() {
                    return null;
                }

                @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
                public String toString() {
                    return AnonymousClass1.class.getName();
                }

                @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
                public Chronology withUTC() {
                    return this;
                }

                @Override // org.joda.time.chrono.BaseChronology, org.joda.time.Chronology
                public Chronology withZone(DateTimeZone dateTimeZone) {
                    return this;
                }
            });
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static final class Stub implements Serializable {
        private static final long serialVersionUID = -6471952376487863581L;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public transient String f13610Wwwwwwwwwwwwwwwwwwwwwwwww;

        public Stub(String str) {
            this.f13610Wwwwwwwwwwwwwwwwwwwwwwwww = str;
        }

        private void readObject(ObjectInputStream objectInputStream) throws IOException {
            this.f13610Wwwwwwwwwwwwwwwwwwwwwwwww = objectInputStream.readUTF();
        }

        private Object readResolve() throws ObjectStreamException {
            return DateTimeZone.forID(this.f13610Wwwwwwwwwwwwwwwwwwwwwwwww);
        }

        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.writeUTF(this.f13610Wwwwwwwwwwwwwwwwwwwwwwwww);
        }
    }

    public DateTimeZone(String str) {
        if (str != null) {
            this.iID = str;
            return;
        }
        throw new IllegalArgumentException("Id must not be null");
    }

    public static Provider Wwwwwwwwwwwwwwwwwwwwwwwwwww(Provider provider) {
        Set<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = provider.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.size() != 0) {
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.contains("UTC")) {
                if (UTC.equals(provider.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("UTC"))) {
                    return provider;
                }
                throw new IllegalArgumentException("Invalid UTC zone provided");
            }
            throw new IllegalArgumentException("The provider doesn't support UTC");
        }
        throw new IllegalArgumentException("The provider doesn't have any available ids");
    }

    public static String Wwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        StringBuffer stringBuffer = new StringBuffer();
        if (i >= 0) {
            stringBuffer.append('+');
        } else {
            stringBuffer.append('-');
            i = -i;
        }
        int i2 = i / 3600000;
        FormatUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(stringBuffer, i2, 2);
        int i3 = i - (i2 * 3600000);
        int i4 = i3 / 60000;
        stringBuffer.append(AbstractJsonLexerKt.COLON);
        FormatUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(stringBuffer, i4, 2);
        int i5 = i3 - (i4 * 60000);
        if (i5 == 0) {
            return stringBuffer.toString();
        }
        int i6 = i5 / 1000;
        stringBuffer.append(AbstractJsonLexerKt.COLON);
        FormatUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(stringBuffer, i6, 2);
        int i7 = i5 - (i6 * 1000);
        if (i7 == 0) {
            return stringBuffer.toString();
        }
        stringBuffer.append('.');
        FormatUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(stringBuffer, i7, 3);
        return stringBuffer.toString();
    }

    public static int Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        return -((int) LazyInit.f13608Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww(str));
    }

    public static Provider Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        try {
            String property = System.getProperty("org.joda.time.DateTimeZone.Provider");
            if (property != null) {
                try {
                    Class<?> cls = Class.forName(property, false, DateTimeZone.class.getClassLoader());
                    if (Provider.class.isAssignableFrom(cls)) {
                        return Wwwwwwwwwwwwwwwwwwwwwwwwwww((Provider) cls.asSubclass(Provider.class).getConstructor(null).newInstance(null));
                    }
                    throw new IllegalArgumentException("System property referred to class that does not implement " + Provider.class);
                } catch (Exception e) {
                    throw new RuntimeException(e);
                }
            }
        } catch (SecurityException unused) {
        }
        try {
            String property2 = System.getProperty("org.joda.time.DateTimeZone.Folder");
            if (property2 != null) {
                try {
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwww(new ZoneInfoProvider(new File(property2)));
                } catch (Exception e2) {
                    throw new RuntimeException(e2);
                }
            }
        } catch (SecurityException unused2) {
        }
        try {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwww(new ZoneInfoProvider(DEFAULT_TZ_DATA_PATH));
        } catch (Exception e3) {
            e3.printStackTrace();
            return new UTCProvider();
        }
    }

    public static NameProvider Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        NameProvider nameProvider = null;
        try {
            String property = System.getProperty("org.joda.time.DateTimeZone.NameProvider");
            if (property != null) {
                try {
                    Class<?> cls = Class.forName(property, false, DateTimeZone.class.getClassLoader());
                    if (NameProvider.class.isAssignableFrom(cls)) {
                        nameProvider = (NameProvider) cls.asSubclass(NameProvider.class).getConstructor(null).newInstance(null);
                    } else {
                        throw new IllegalArgumentException("System property referred to class that does not implement " + NameProvider.class);
                    }
                } catch (Exception e) {
                    throw new RuntimeException(e);
                }
            }
        } catch (SecurityException unused) {
        }
        if (nameProvider == null) {
            return new DefaultNameProvider();
        }
        return nameProvider;
    }

    public static String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        return LazyInit.f13609Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(str);
    }

    public static DateTimeZone Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, int i) {
        if (i == 0) {
            return UTC;
        }
        return new FixedDateTimeZone(str, null, i, i);
    }

    public static String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        StringBuilder sb = new StringBuilder(str);
        for (int i = 0; i < sb.length(); i++) {
            int digit = Character.digit(sb.charAt(i), 10);
            if (digit >= 0) {
                sb.setCharAt(i, (char) (digit + 48));
            }
        }
        return sb.toString();
    }

    @FromString
    public static DateTimeZone forID(String str) {
        if (str == null) {
            return getDefault();
        }
        if (str.equals("UTC")) {
            return UTC;
        }
        DateTimeZone Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = getProvider().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }
        if (!str.startsWith("+") && !str.startsWith("-")) {
            throw new IllegalArgumentException("The datetime zone id '" + str + "' is not recognised");
        }
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == 0) {
            return UTC;
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2), Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
    }

    public static DateTimeZone forOffsetHours(int i) throws IllegalArgumentException {
        return forOffsetHoursMinutes(i, 0);
    }

    public static DateTimeZone forOffsetHoursMinutes(int i, int i2) throws IllegalArgumentException {
        int i3;
        if (i == 0 && i2 == 0) {
            return UTC;
        }
        if (i >= -23 && i <= 23) {
            if (i2 >= -59 && i2 <= 59) {
                if (i > 0 && i2 < 0) {
                    throw new IllegalArgumentException("Positive hours must not have negative minutes: " + i2);
                }
                int i4 = i * 60;
                try {
                    if (i4 < 0) {
                        i3 = i4 - Math.abs(i2);
                    } else {
                        i3 = i4 + i2;
                    }
                    return forOffsetMillis(FieldUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwww(i3, 60000));
                } catch (ArithmeticException unused) {
                    throw new IllegalArgumentException("Offset is too large");
                }
            }
            throw new IllegalArgumentException("Minutes out of range: " + i2);
        }
        throw new IllegalArgumentException("Hours out of range: " + i);
    }

    public static DateTimeZone forOffsetMillis(int i) {
        if (i >= -86399999 && i <= 86399999) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwww(i), i);
        }
        throw new IllegalArgumentException("Millis out of range: " + i);
    }

    public static DateTimeZone forTimeZone(TimeZone timeZone) {
        DateTimeZone dateTimeZone;
        char charAt;
        if (timeZone == null) {
            return getDefault();
        }
        String id = timeZone.getID();
        if (id != null) {
            if (id.equals("UTC")) {
                return UTC;
            }
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(id);
            Provider provider = getProvider();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                dateTimeZone = provider.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            } else {
                dateTimeZone = null;
            }
            if (dateTimeZone == null) {
                dateTimeZone = provider.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(id);
            }
            if (dateTimeZone != null) {
                return dateTimeZone;
            }
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null && (id.startsWith("GMT+") || id.startsWith("GMT-"))) {
                String substring = id.substring(3);
                if (substring.length() > 2 && (charAt = substring.charAt(1)) > '9' && Character.isDigit(charAt)) {
                    substring = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(substring);
                }
                int Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(substring);
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == 0) {
                    return UTC;
                }
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2), Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }
            throw new IllegalArgumentException("The datetime zone id '" + id + "' is not recognised");
        }
        throw new IllegalArgumentException("The TimeZone id must not be null");
    }

    public static Set<String> getAvailableIDs() {
        return getProvider().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public static DateTimeZone getDefault() {
        DateTimeZone dateTimeZone = f13605Wwwwwwwwwwwwwwwwwwwwwww.get();
        if (dateTimeZone == null) {
            try {
                String property = System.getProperty("user.timezone");
                if (property != null) {
                    dateTimeZone = forID(property);
                }
            } catch (RuntimeException unused) {
            }
            if (dateTimeZone == null) {
                try {
                    dateTimeZone = forTimeZone(TimeZone.getDefault());
                } catch (IllegalArgumentException unused2) {
                }
            }
            if (dateTimeZone == null) {
                dateTimeZone = UTC;
            }
            AtomicReference<DateTimeZone> atomicReference = f13605Wwwwwwwwwwwwwwwwwwwwwww;
            if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(atomicReference, null, dateTimeZone)) {
                return atomicReference.get();
            }
            return dateTimeZone;
        }
        return dateTimeZone;
    }

    public static NameProvider getNameProvider() {
        AtomicReference<NameProvider> atomicReference = f13606Wwwwwwwwwwwwwwwwwwwwwwww;
        NameProvider nameProvider = atomicReference.get();
        if (nameProvider == null) {
            nameProvider = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(atomicReference, null, nameProvider)) {
                return atomicReference.get();
            }
        }
        return nameProvider;
    }

    public static Provider getProvider() {
        AtomicReference<Provider> atomicReference = f13607Wwwwwwwwwwwwwwwwwwwwwwwww;
        Provider provider = atomicReference.get();
        if (provider == null) {
            provider = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(atomicReference, null, provider)) {
                return atomicReference.get();
            }
        }
        return provider;
    }

    public static void setDefault(DateTimeZone dateTimeZone) throws SecurityException {
        SecurityManager securityManager = System.getSecurityManager();
        if (securityManager != null) {
            securityManager.checkPermission(new JodaTimePermission("DateTimeZone.setDefault"));
        }
        if (dateTimeZone != null) {
            f13605Wwwwwwwwwwwwwwwwwwwwwww.set(dateTimeZone);
            return;
        }
        throw new IllegalArgumentException("The datetime zone must not be null");
    }

    public static void setNameProvider(NameProvider nameProvider) throws SecurityException {
        SecurityManager securityManager = System.getSecurityManager();
        if (securityManager != null) {
            securityManager.checkPermission(new JodaTimePermission("DateTimeZone.setNameProvider"));
        }
        if (nameProvider == null) {
            nameProvider = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        f13606Wwwwwwwwwwwwwwwwwwwwwwww.set(nameProvider);
    }

    public static void setProvider(Provider provider) throws SecurityException {
        SecurityManager securityManager = System.getSecurityManager();
        if (securityManager != null) {
            securityManager.checkPermission(new JodaTimePermission("DateTimeZone.setProvider"));
        }
        if (provider == null) {
            provider = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        } else {
            Wwwwwwwwwwwwwwwwwwwwwwwwwww(provider);
        }
        f13607Wwwwwwwwwwwwwwwwwwwwwwwww.set(provider);
    }

    public long adjustOffset(long j, boolean z) {
        long j2 = j - 10800000;
        long offset = getOffset(j2);
        long offset2 = getOffset(10800000 + j);
        if (offset > offset2) {
            long j3 = offset - offset2;
            long nextTransition = nextTransition(j2);
            long j4 = nextTransition - j3;
            long j5 = nextTransition + j3;
            if (j >= j4 && j < j5) {
                if (j - j4 >= j3) {
                    if (!z) {
                        return j - j3;
                    }
                    return j;
                } else if (z) {
                    return j + j3;
                } else {
                    return j;
                }
            }
            return j;
        }
        return j;
    }

    public long convertLocalToUTC(long j, boolean z, long j2) {
        int offset = getOffset(j2);
        long j3 = j - offset;
        return getOffset(j3) == offset ? j3 : convertLocalToUTC(j, z);
    }

    public long convertUTCToLocal(long j) {
        long offset = getOffset(j);
        long j2 = j + offset;
        if ((j ^ j2) < 0 && (j ^ offset) >= 0) {
            throw new ArithmeticException("Adding time zone offset caused overflow");
        }
        return j2;
    }

    public abstract boolean equals(Object obj);

    @ToString
    public final String getID() {
        return this.iID;
    }

    public long getMillisKeepLocal(DateTimeZone dateTimeZone, long j) {
        if (dateTimeZone == null) {
            dateTimeZone = getDefault();
        }
        DateTimeZone dateTimeZone2 = dateTimeZone;
        if (dateTimeZone2 == this) {
            return j;
        }
        return dateTimeZone2.convertLocalToUTC(convertUTCToLocal(j), false, j);
    }

    public final String getName(long j) {
        return getName(j, null);
    }

    public abstract String getNameKey(long j);

    public abstract int getOffset(long j);

    public final int getOffset(ReadableInstant readableInstant) {
        if (readableInstant == null) {
            return getOffset(DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        }
        return getOffset(readableInstant.getMillis());
    }

    public int getOffsetFromLocal(long j) {
        int offset = getOffset(j);
        long j2 = j - offset;
        int offset2 = getOffset(j2);
        if (offset != offset2) {
            if (offset - offset2 < 0) {
                long nextTransition = nextTransition(j2);
                long j3 = Long.MAX_VALUE;
                if (nextTransition == j2) {
                    nextTransition = Long.MAX_VALUE;
                }
                long j4 = j - offset2;
                long nextTransition2 = nextTransition(j4);
                if (nextTransition2 != j4) {
                    j3 = nextTransition2;
                }
                if (nextTransition != j3) {
                    return offset;
                }
            }
        } else if (offset >= 0) {
            long previousTransition = previousTransition(j2);
            if (previousTransition < j2) {
                int offset3 = getOffset(previousTransition);
                if (j2 - previousTransition <= offset3 - offset) {
                    return offset3;
                }
            }
        }
        return offset2;
    }

    public final String getShortName(long j) {
        return getShortName(j, null);
    }

    public abstract int getStandardOffset(long j);

    public int hashCode() {
        return getID().hashCode() + 57;
    }

    public abstract boolean isFixed();

    public boolean isLocalDateTimeGap(LocalDateTime localDateTime) {
        if (isFixed()) {
            return false;
        }
        try {
            localDateTime.toDateTime(this);
            return false;
        } catch (IllegalInstantException unused) {
            return true;
        }
    }

    public boolean isStandardOffset(long j) {
        if (getOffset(j) == getStandardOffset(j)) {
            return true;
        }
        return false;
    }

    public abstract long nextTransition(long j);

    public abstract long previousTransition(long j);

    public String toString() {
        return getID();
    }

    public TimeZone toTimeZone() {
        return DesugarTimeZone.getTimeZone(this.iID);
    }

    public Object writeReplace() throws ObjectStreamException {
        return new Stub(this.iID);
    }

    public String getName(long j, Locale locale) {
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        if (locale == null) {
            locale = Locale.getDefault();
        }
        String nameKey = getNameKey(j);
        if (nameKey == null) {
            return this.iID;
        }
        NameProvider nameProvider = getNameProvider();
        if (nameProvider instanceof DefaultNameProvider) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ((DefaultNameProvider) nameProvider).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(locale, this.iID, nameKey, isStandardOffset(j));
        } else {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = nameProvider.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(locale, this.iID, nameKey);
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null ? Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 : Wwwwwwwwwwwwwwwwwwwwwwwwwwww(getOffset(j));
    }

    public String getShortName(long j, Locale locale) {
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        if (locale == null) {
            locale = Locale.getDefault();
        }
        String nameKey = getNameKey(j);
        if (nameKey == null) {
            return this.iID;
        }
        NameProvider nameProvider = getNameProvider();
        if (nameProvider instanceof DefaultNameProvider) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ((DefaultNameProvider) nameProvider).Wwwwwwwwwwwwwwwwwwwwwwwwwwww(locale, this.iID, nameKey, isStandardOffset(j));
        } else {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = nameProvider.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(locale, this.iID, nameKey);
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null ? Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 : Wwwwwwwwwwwwwwwwwwwwwwwwwwww(getOffset(j));
    }

    public long convertLocalToUTC(long j, boolean z) {
        long j2;
        int offset = getOffset(j);
        long j3 = j - offset;
        int offset2 = getOffset(j3);
        if (offset != offset2 && (z || offset < 0)) {
            long nextTransition = nextTransition(j3);
            if (nextTransition == j3) {
                nextTransition = Long.MAX_VALUE;
            }
            long j4 = j - offset2;
            long nextTransition2 = nextTransition(j4);
            if (nextTransition != (nextTransition2 != j4 ? nextTransition2 : Long.MAX_VALUE)) {
                if (z) {
                    throw new IllegalInstantException(j, getID());
                }
                long j5 = offset;
                j2 = j - j5;
                if ((j ^ j2) < 0 || (j ^ j5) >= 0) {
                    return j2;
                }
                throw new ArithmeticException("Subtracting time zone offset caused overflow");
            }
        }
        offset = offset2;
        long j52 = offset;
        j2 = j - j52;
        if ((j ^ j2) < 0) {
        }
        return j2;
    }
}
