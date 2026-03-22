package org.joda.time.tz;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class ZoneInfoCompiler {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Map<String, RuleSet> f14036Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashMap();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public List<Zone> f14035Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public List<String> f14034Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public List<String> f14033Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static class DateTimeOfYear {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f14042Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 1;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f14041Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 1;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f14040Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 0;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final boolean f14039Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = false;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f14038Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 0;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final char f14037Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = 'w';

        public String toString() {
            return "MonthOfYear: " + this.f14042Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + "\nDayOfMonth: " + this.f14041Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + "\nDayOfWeek: " + this.f14040Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + "\nAdvanceDayOfWeek: " + this.f14039Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + "\nMillisOfDay: " + this.f14038Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww + "\nZoneChar: " + this.f14037Wwwwwwwwwwwwwwwwwwwwwwwwwwwww + "\n";
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static class Rule {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f14043Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f14044Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final DateTimeOfYear f14045Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f14046Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f14047Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f14048Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f14049Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public String toString() {
            return "[Rule]\nName: " + this.f14049Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + "\nFromYear: " + this.f14048Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + "\nToYear: " + this.f14047Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + "\nType: " + this.f14046Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + "\n" + this.f14045Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww + "SaveMillis: " + this.f14044Wwwwwwwwwwwwwwwwwwwwwwwwwwwww + "\nLetterS: " + this.f14043Wwwwwwwwwwwwwwwwwwwwwwwwwwww + "\n";
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static class RuleSet {
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static class Zone {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Zone f14050Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final DateTimeOfYear f14051Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f14052Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f14053Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f14054Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f14055Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f14056Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public String toString() {
            String str = "[Zone]\nName: " + this.f14056Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + "\nOffsetMillis: " + this.f14055Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + "\nRules: " + this.f14054Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + "\nFormat: " + this.f14053Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + "\nUntilYear: " + this.f14052Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww + "\n" + this.f14051Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (this.f14050Wwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                return str;
            }
            return str + "...\n" + this.f14050Wwwwwwwwwwwwwwwwwwwwwwwwwwww.toString();
        }
    }
}
