package com.applovin.impl;

import android.net.Uri;
import android.webkit.URLUtil;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinAdLoadListener;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class m7 {

    /* renamed from: a  reason: collision with root package name */
    private static final DateFormat f3197a = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ", Locale.US);
    private static final Random b = new Random(System.currentTimeMillis());

    public static void a(e7 e7Var, AppLovinAdLoadListener appLovinAdLoadListener, f7 f7Var, int i, com.applovin.impl.sdk.k kVar) {
        if (kVar != null) {
            if (appLovinAdLoadListener != null) {
                appLovinAdLoadListener.failedToReceiveAd(i);
            }
            Set a2 = a(e7Var, kVar);
            if (CollectionUtils.isEmpty(a2)) {
                return;
            }
            a(a2, f7Var, kVar);
            return;
        }
        throw new IllegalArgumentException("Unable to handle failure. No sdk specified.");
    }

    public static boolean b(a7 a7Var) {
        n7 x1;
        List g;
        return (a7Var == null || (x1 = a7Var.x1()) == null || (g = x1.g()) == null || g.isEmpty()) ? false : true;
    }

    public static f7 c(a7 a7Var) {
        if (b(a7Var) || a(a7Var)) {
            return null;
        }
        return f7.GENERAL_WRAPPER_ERROR;
    }

    private static String b() {
        DateFormat dateFormat = f3197a;
        dateFormat.setTimeZone(TimeZone.getDefault());
        return dateFormat.format(new Date());
    }

    public static boolean a(a7 a7Var) {
        d7 o1;
        i7 e;
        if (a7Var == null || (o1 = a7Var.o1()) == null || (e = o1.e()) == null) {
            return false;
        }
        return e.c() != null || StringUtils.isValidString(e.b());
    }

    public static boolean b(b8 b8Var) {
        if (b8Var != null) {
            return b8Var.b("Wrapper") != null;
        }
        throw new IllegalArgumentException("Unable to check if a given XmlNode contains a wrapper response");
    }

    public static Uri a(String str, long j, Uri uri, f7 f7Var, com.applovin.impl.sdk.k kVar) {
        if (URLUtil.isValidUrl(str)) {
            try {
                String num = Integer.toString(f7Var.b());
                String replace = str.replace("[ERRORCODE]", num).replace("[REASON]", num);
                if (j >= 0) {
                    replace = replace.replace("[CONTENTPLAYHEAD]", a(j));
                }
                if (uri != null) {
                    replace = replace.replace("[ASSETURI]", uri.toString());
                }
                return Uri.parse(replace.replace("[CACHEBUSTING]", a()).replace("[TIMESTAMP]", b()));
            } catch (Throwable th) {
                kVar.O();
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o O = kVar.O();
                    O.a("VastUtils", "Unable to replace macros in URL string " + str, th);
                }
                kVar.E().a("VastUtils", th);
                return null;
            }
        }
        kVar.O();
        if (com.applovin.impl.sdk.o.a()) {
            kVar.O().b("VastUtils", "Unable to replace macros in invalid URL string.");
        }
        return null;
    }

    private static String a(long j) {
        if (j > 0) {
            TimeUnit timeUnit = TimeUnit.SECONDS;
            long hours = timeUnit.toHours(j);
            long minutes = timeUnit.toMinutes(j);
            TimeUnit timeUnit2 = TimeUnit.MINUTES;
            return String.format(Locale.US, "%02d:%02d:%02d.000", Long.valueOf(hours), Long.valueOf(minutes % timeUnit2.toSeconds(1L)), Long.valueOf(j % timeUnit2.toSeconds(1L)));
        }
        return "00:00:00.000";
    }

    private static String a() {
        return Integer.toString(b.nextInt(89999999) + 10000000);
    }

    public static void a(Set set, com.applovin.impl.sdk.k kVar) {
        a(set, -1L, (Uri) null, f7.UNSPECIFIED, kVar);
    }

    public static void a(Set set, f7 f7Var, com.applovin.impl.sdk.k kVar) {
        a(set, -1L, (Uri) null, f7Var, kVar);
    }

    public static void a(Set set, long j, Uri uri, f7 f7Var, com.applovin.impl.sdk.k kVar) {
        if (kVar != null) {
            if (set == null || set.isEmpty()) {
                return;
            }
            Iterator it = set.iterator();
            while (it.hasNext()) {
                k7 k7Var = (k7) it.next();
                long j2 = j;
                Uri uri2 = uri;
                f7 f7Var2 = f7Var;
                com.applovin.impl.sdk.k kVar2 = kVar;
                Uri a2 = a(k7Var.c(), j2, uri2, f7Var2, kVar2);
                if (a2 != null) {
                    kVar2.e0().a(com.applovin.impl.sdk.network.d.b().d(a2.toString()).a(false).b(k7Var.d()).a(), false);
                }
                j = j2;
                uri = uri2;
                f7Var = f7Var2;
                kVar = kVar2;
            }
            return;
        }
        throw new IllegalArgumentException("Unable to fire trackers. No sdk specified.");
    }

    public static void a(b8 b8Var, Map map, e7 e7Var, com.applovin.impl.sdk.k kVar) {
        List<b8> a2;
        if (kVar == null) {
            throw new IllegalArgumentException("Unable to render event trackers. No sdk specified.");
        }
        if (b8Var == null) {
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                kVar.O().b("VastUtils", "Unable to render event trackers; null node provided");
            }
        } else if (map == null) {
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                kVar.O().b("VastUtils", "Unable to render event trackers; null event trackers provided");
            }
        } else {
            b8 c = b8Var.c("TrackingEvents");
            if (c == null || (a2 = c.a("Tracking")) == null) {
                return;
            }
            for (b8 b8Var2 : a2) {
                String str = (String) b8Var2.a().get("event");
                if (StringUtils.isValidString(str)) {
                    k7 a3 = k7.a(b8Var2, e7Var, kVar);
                    if (a3 != null) {
                        Set set = (Set) map.get(str);
                        if (set != null) {
                            set.add(a3);
                        } else {
                            HashSet hashSet = new HashSet();
                            hashSet.add(a3);
                            map.put(str, hashSet);
                        }
                    }
                } else {
                    kVar.O();
                    if (com.applovin.impl.sdk.o.a()) {
                        com.applovin.impl.sdk.o O = kVar.O();
                        O.b("VastUtils", "Could not find event for tracking node = " + b8Var2);
                    }
                }
            }
        }
    }

    public static void a(List list, Set set, e7 e7Var, com.applovin.impl.sdk.k kVar) {
        if (kVar == null) {
            throw new IllegalArgumentException("Unable to render trackers. No sdk specified.");
        }
        if (list == null) {
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                kVar.O().b("VastUtils", "Unable to render trackers; null nodes provided");
            }
        } else if (set == null) {
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                kVar.O().b("VastUtils", "Unable to render trackers; null trackers provided");
            }
        } else {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                k7 a2 = k7.a((b8) it.next(), e7Var, kVar);
                if (a2 != null) {
                    set.add(a2);
                }
            }
        }
    }

    public static boolean a(b8 b8Var) {
        if (b8Var != null) {
            return b8Var.b("InLine") != null;
        }
        throw new IllegalArgumentException("Unable to check if a given XmlNode contains an inline response");
    }

    public static String a(e7 e7Var) {
        b8 b2;
        if (e7Var != null) {
            List a2 = e7Var.a();
            int size = e7Var.a().size();
            if (size <= 0 || (b2 = ((b8) a2.get(size - 1)).b("VASTAdTagURI")) == null) {
                return null;
            }
            return b2.d();
        }
        throw new IllegalArgumentException("Unable to get resolution uri string for fetching the next wrapper or inline response in the chain");
    }

    public static String a(b8 b8Var, String str, String str2) {
        b8 c = b8Var.c(str);
        if (c != null) {
            String d = c.d();
            if (StringUtils.isValidString(d)) {
                return d;
            }
        }
        return str2;
    }

    private static Set a(e7 e7Var, com.applovin.impl.sdk.k kVar) {
        List a2;
        if (e7Var == null) {
            return null;
        }
        List<b8> a3 = e7Var.a();
        HashSet hashSet = new HashSet(a3.size());
        for (b8 b8Var : a3) {
            b8 b2 = b8Var.b("Wrapper");
            if (b2 == null) {
                b2 = b8Var.b("InLine");
            }
            if (b2 != null) {
                a2 = b2.a("Error");
            } else {
                a2 = b8Var.a("Error");
            }
            hashSet = a(hashSet, a2, e7Var, kVar);
        }
        kVar.O();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o O = kVar.O();
            O.a("VastUtils", "Retrieved " + hashSet.size() + " top level error trackers: " + hashSet);
        }
        return hashSet;
    }

    private static HashSet a(HashSet hashSet, List list, e7 e7Var, com.applovin.impl.sdk.k kVar) {
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                k7 a2 = k7.a((b8) it.next(), e7Var, kVar);
                if (a2 != null) {
                    hashSet.add(a2);
                }
            }
        }
        return hashSet;
    }
}
