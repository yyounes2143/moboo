package org.joda.time.format;

import j$.util.concurrent.ConcurrentHashMap;
import java.util.Enumeration;
import java.util.Locale;
import java.util.ResourceBundle;
import java.util.concurrent.ConcurrentMap;
import org.joda.time.ReadWritablePeriod;
import org.joda.time.ReadablePeriod;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class PeriodFormat {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final ConcurrentMap<Locale, PeriodFormatter> f13950Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ConcurrentHashMap();

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static class DynamicWordBased implements PeriodPrinter, PeriodParser {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final PeriodFormatter f13951Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public DynamicWordBased(PeriodFormatter periodFormatter) {
            this.f13951Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = periodFormatter;
        }

        public final PeriodPrinter Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Locale locale) {
            if (locale != null && !locale.equals(this.f13951Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww())) {
                return PeriodFormat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(locale).Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            return this.f13951Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }

        public final PeriodParser Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Locale locale) {
            if (locale != null && !locale.equals(this.f13951Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww())) {
                return PeriodFormat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(locale).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            return this.f13951Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }

        @Override // org.joda.time.format.PeriodPrinter
        public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ReadablePeriod readablePeriod, Locale locale) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(locale).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(readablePeriod, locale);
        }

        @Override // org.joda.time.format.PeriodPrinter
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(StringBuffer stringBuffer, ReadablePeriod readablePeriod, Locale locale) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(locale).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(stringBuffer, readablePeriod, locale);
        }

        @Override // org.joda.time.format.PeriodPrinter
        public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ReadablePeriod readablePeriod, int i, Locale locale) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(locale).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(readablePeriod, i, locale);
        }

        @Override // org.joda.time.format.PeriodParser
        public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ReadWritablePeriod readWritablePeriod, String str, int i, Locale locale) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(locale).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(readWritablePeriod, str, i, locale);
        }
    }

    public static PeriodFormatter Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Locale locale) {
        ConcurrentMap<Locale, PeriodFormatter> concurrentMap = f13950Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        PeriodFormatter periodFormatter = concurrentMap.get(locale);
        if (periodFormatter == null) {
            DynamicWordBased dynamicWordBased = new DynamicWordBased(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(locale));
            PeriodFormatter periodFormatter2 = new PeriodFormatter(dynamicWordBased, dynamicWordBased, locale, null);
            PeriodFormatter putIfAbsent = concurrentMap.putIfAbsent(locale, periodFormatter2);
            if (putIfAbsent != null) {
                return putIfAbsent;
            }
            return periodFormatter2;
        }
        return periodFormatter;
    }

    public static String[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ResourceBundle resourceBundle) {
        return new String[]{resourceBundle.getString("PeriodFormat.space"), resourceBundle.getString("PeriodFormat.comma"), resourceBundle.getString("PeriodFormat.commandand"), resourceBundle.getString("PeriodFormat.commaspaceand")};
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ResourceBundle resourceBundle, String str) {
        Enumeration<String> keys = resourceBundle.getKeys();
        while (keys.hasMoreElements()) {
            if (keys.nextElement().equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static PeriodFormatter Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Locale locale) {
        ResourceBundle bundle = ResourceBundle.getBundle("org.joda.time.format.messages", locale);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle, "PeriodFormat.regex.separator")) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle, locale);
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle, locale);
    }

    public static PeriodFormatter Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ResourceBundle resourceBundle, Locale locale) {
        String[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(resourceBundle);
        String string = resourceBundle.getString("PeriodFormat.regex.separator");
        PeriodFormatterBuilder periodFormatterBuilder = new PeriodFormatterBuilder();
        periodFormatterBuilder.Wwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(resourceBundle, "PeriodFormat.years.regex")) {
            periodFormatterBuilder.Wwwwwwwwwwwwwwww(resourceBundle.getString("PeriodFormat.years.regex").split(string), resourceBundle.getString("PeriodFormat.years.list").split(string));
        } else {
            periodFormatterBuilder.Wwwwwwwwwwwwwwwwww(resourceBundle.getString("PeriodFormat.year"), resourceBundle.getString("PeriodFormat.years"));
        }
        periodFormatterBuilder.Wwwwwwwwwwwwwwwwwwwwww(resourceBundle.getString("PeriodFormat.commaspace"), resourceBundle.getString("PeriodFormat.spaceandspace"), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        periodFormatterBuilder.Wwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(resourceBundle, "PeriodFormat.months.regex")) {
            periodFormatterBuilder.Wwwwwwwwwwwwwwww(resourceBundle.getString("PeriodFormat.months.regex").split(string), resourceBundle.getString("PeriodFormat.months.list").split(string));
        } else {
            periodFormatterBuilder.Wwwwwwwwwwwwwwwwww(resourceBundle.getString("PeriodFormat.month"), resourceBundle.getString("PeriodFormat.months"));
        }
        periodFormatterBuilder.Wwwwwwwwwwwwwwwwwwwwww(resourceBundle.getString("PeriodFormat.commaspace"), resourceBundle.getString("PeriodFormat.spaceandspace"), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        periodFormatterBuilder.Wwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(resourceBundle, "PeriodFormat.weeks.regex")) {
            periodFormatterBuilder.Wwwwwwwwwwwwwwww(resourceBundle.getString("PeriodFormat.weeks.regex").split(string), resourceBundle.getString("PeriodFormat.weeks.list").split(string));
        } else {
            periodFormatterBuilder.Wwwwwwwwwwwwwwwwww(resourceBundle.getString("PeriodFormat.week"), resourceBundle.getString("PeriodFormat.weeks"));
        }
        periodFormatterBuilder.Wwwwwwwwwwwwwwwwwwwwww(resourceBundle.getString("PeriodFormat.commaspace"), resourceBundle.getString("PeriodFormat.spaceandspace"), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        periodFormatterBuilder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(resourceBundle, "PeriodFormat.days.regex")) {
            periodFormatterBuilder.Wwwwwwwwwwwwwwww(resourceBundle.getString("PeriodFormat.days.regex").split(string), resourceBundle.getString("PeriodFormat.days.list").split(string));
        } else {
            periodFormatterBuilder.Wwwwwwwwwwwwwwwwww(resourceBundle.getString("PeriodFormat.day"), resourceBundle.getString("PeriodFormat.days"));
        }
        periodFormatterBuilder.Wwwwwwwwwwwwwwwwwwwwww(resourceBundle.getString("PeriodFormat.commaspace"), resourceBundle.getString("PeriodFormat.spaceandspace"), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        periodFormatterBuilder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(resourceBundle, "PeriodFormat.hours.regex")) {
            periodFormatterBuilder.Wwwwwwwwwwwwwwww(resourceBundle.getString("PeriodFormat.hours.regex").split(string), resourceBundle.getString("PeriodFormat.hours.list").split(string));
        } else {
            periodFormatterBuilder.Wwwwwwwwwwwwwwwwww(resourceBundle.getString("PeriodFormat.hour"), resourceBundle.getString("PeriodFormat.hours"));
        }
        periodFormatterBuilder.Wwwwwwwwwwwwwwwwwwwwww(resourceBundle.getString("PeriodFormat.commaspace"), resourceBundle.getString("PeriodFormat.spaceandspace"), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        periodFormatterBuilder.Wwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(resourceBundle, "PeriodFormat.minutes.regex")) {
            periodFormatterBuilder.Wwwwwwwwwwwwwwww(resourceBundle.getString("PeriodFormat.minutes.regex").split(string), resourceBundle.getString("PeriodFormat.minutes.list").split(string));
        } else {
            periodFormatterBuilder.Wwwwwwwwwwwwwwwwww(resourceBundle.getString("PeriodFormat.minute"), resourceBundle.getString("PeriodFormat.minutes"));
        }
        periodFormatterBuilder.Wwwwwwwwwwwwwwwwwwwwww(resourceBundle.getString("PeriodFormat.commaspace"), resourceBundle.getString("PeriodFormat.spaceandspace"), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        periodFormatterBuilder.Wwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(resourceBundle, "PeriodFormat.seconds.regex")) {
            periodFormatterBuilder.Wwwwwwwwwwwwwwww(resourceBundle.getString("PeriodFormat.seconds.regex").split(string), resourceBundle.getString("PeriodFormat.seconds.list").split(string));
        } else {
            periodFormatterBuilder.Wwwwwwwwwwwwwwwwww(resourceBundle.getString("PeriodFormat.second"), resourceBundle.getString("PeriodFormat.seconds"));
        }
        periodFormatterBuilder.Wwwwwwwwwwwwwwwwwwwwww(resourceBundle.getString("PeriodFormat.commaspace"), resourceBundle.getString("PeriodFormat.spaceandspace"), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        periodFormatterBuilder.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(resourceBundle, "PeriodFormat.milliseconds.regex")) {
            periodFormatterBuilder.Wwwwwwwwwwwwwwww(resourceBundle.getString("PeriodFormat.milliseconds.regex").split(string), resourceBundle.getString("PeriodFormat.milliseconds.list").split(string));
        } else {
            periodFormatterBuilder.Wwwwwwwwwwwwwwwwww(resourceBundle.getString("PeriodFormat.millisecond"), resourceBundle.getString("PeriodFormat.milliseconds"));
        }
        return periodFormatterBuilder.Wwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwww(locale);
    }

    public static PeriodFormatter Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ResourceBundle resourceBundle, Locale locale) {
        String[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(resourceBundle);
        return new PeriodFormatterBuilder().Wwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwww(resourceBundle.getString("PeriodFormat.year"), resourceBundle.getString("PeriodFormat.years")).Wwwwwwwwwwwwwwwwwwwwww(resourceBundle.getString("PeriodFormat.commaspace"), resourceBundle.getString("PeriodFormat.spaceandspace"), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2).Wwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwww(resourceBundle.getString("PeriodFormat.month"), resourceBundle.getString("PeriodFormat.months")).Wwwwwwwwwwwwwwwwwwwwww(resourceBundle.getString("PeriodFormat.commaspace"), resourceBundle.getString("PeriodFormat.spaceandspace"), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2).Wwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwww(resourceBundle.getString("PeriodFormat.week"), resourceBundle.getString("PeriodFormat.weeks")).Wwwwwwwwwwwwwwwwwwwwww(resourceBundle.getString("PeriodFormat.commaspace"), resourceBundle.getString("PeriodFormat.spaceandspace"), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwww(resourceBundle.getString("PeriodFormat.day"), resourceBundle.getString("PeriodFormat.days")).Wwwwwwwwwwwwwwwwwwwwww(resourceBundle.getString("PeriodFormat.commaspace"), resourceBundle.getString("PeriodFormat.spaceandspace"), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2).Wwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwww(resourceBundle.getString("PeriodFormat.hour"), resourceBundle.getString("PeriodFormat.hours")).Wwwwwwwwwwwwwwwwwwwwww(resourceBundle.getString("PeriodFormat.commaspace"), resourceBundle.getString("PeriodFormat.spaceandspace"), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2).Wwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwww(resourceBundle.getString("PeriodFormat.minute"), resourceBundle.getString("PeriodFormat.minutes")).Wwwwwwwwwwwwwwwwwwwwww(resourceBundle.getString("PeriodFormat.commaspace"), resourceBundle.getString("PeriodFormat.spaceandspace"), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2).Wwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwww(resourceBundle.getString("PeriodFormat.second"), resourceBundle.getString("PeriodFormat.seconds")).Wwwwwwwwwwwwwwwwwwwwww(resourceBundle.getString("PeriodFormat.commaspace"), resourceBundle.getString("PeriodFormat.spaceandspace"), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2).Wwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwww(resourceBundle.getString("PeriodFormat.millisecond"), resourceBundle.getString("PeriodFormat.milliseconds")).Wwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwww(locale);
    }
}
