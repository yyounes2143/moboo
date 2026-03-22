package com.applovin.impl;

import android.content.ContentResolver;
import android.content.Context;
import android.provider.Settings;
import androidx.annotation.Nullable;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinSdkUtils;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.util.Collection;
import java.util.HashSet;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class u {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f3761a = true;
    private static final Object b = new Object();
    private static final Collection c = new HashSet();
    private static boolean d = false;
    private static a e = null;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private boolean f3762a;
        private String b = "";
        private EnumC0026a c = EnumC0026a.NOT_SET;

        /* compiled from: Proguard */
        /* renamed from: com.applovin.impl.u$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public enum EnumC0026a {
            NOT_SET("dnt_not_set"),
            ON("dnt_on"),
            OFF("dnt_off");
            

            /* renamed from: a  reason: collision with root package name */
            private final String f3763a;

            EnumC0026a(String str) {
                this.f3763a = str;
            }

            public String b() {
                return this.f3763a;
            }
        }

        public boolean a(Object obj) {
            return obj instanceof a;
        }

        public EnumC0026a b() {
            return this.c;
        }

        public boolean c() {
            return this.f3762a;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (!aVar.a(this) || c() != aVar.c()) {
                return false;
            }
            String a2 = a();
            String a3 = aVar.a();
            if (a2 != null ? !a2.equals(a3) : a3 != null) {
                return false;
            }
            EnumC0026a b = b();
            EnumC0026a b2 = aVar.b();
            if (b != null ? b.equals(b2) : b2 == null) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int i;
            int hashCode;
            if (c()) {
                i = 79;
            } else {
                i = 97;
            }
            String a2 = a();
            int i2 = (i + 59) * 59;
            int i3 = 43;
            if (a2 == null) {
                hashCode = 43;
            } else {
                hashCode = a2.hashCode();
            }
            int i4 = i2 + hashCode;
            EnumC0026a b = b();
            int i5 = i4 * 59;
            if (b != null) {
                i3 = b.hashCode();
            }
            return i5 + i3;
        }

        public String toString() {
            return "AdvertisingInfoCollector.AdvertisingIdInformation(adTrackingLimited=" + c() + ", advertisingId=" + a() + ", dntCode=" + b() + ")";
        }

        public void a(boolean z) {
            this.f3762a = z;
        }

        public void a(String str) {
            this.b = str;
        }

        public void a(EnumC0026a enumC0026a) {
            this.c = enumC0026a;
        }

        public String a() {
            return this.b;
        }
    }

    private static a a(Context context) {
        a aVar;
        HashSet<CountDownLatch> hashSet;
        z6.a();
        Object obj = b;
        synchronized (obj) {
            try {
                if (d) {
                    return e;
                }
                Collection collection = c;
                boolean isEmpty = collection.isEmpty();
                CountDownLatch countDownLatch = new CountDownLatch(1);
                collection.add(countDownLatch);
                if (isEmpty) {
                    a c2 = c(context);
                    synchronized (obj) {
                        d = true;
                        e = c2;
                        hashSet = new HashSet(collection);
                        collection.clear();
                    }
                    for (CountDownLatch countDownLatch2 : hashSet) {
                        countDownLatch2.countDown();
                    }
                }
                try {
                    if (!countDownLatch.await(60L, TimeUnit.SECONDS)) {
                        com.applovin.impl.sdk.o.h("DataCollector", "Could not collect Google Advertising ID - this will negatively impact your eCPMs! Please integrate the Google Play Services SDK into your application. More info can be found online at http://developer.android.com/google/play-services/setup.html. If you're sure you've integrated the SDK and are still seeing this message, you may need to add a ProGuard exception: -keep public class com.google.android.gms.** { public protected *; }: collection timeout");
                    }
                } catch (InterruptedException e2) {
                    com.applovin.impl.sdk.o.c("DataCollector", "Could not collect Google Advertising ID - this will negatively impact your eCPMs! Please integrate the Google Play Services SDK into your application. More info can be found online at http://developer.android.com/google/play-services/setup.html. If you're sure you've integrated the SDK and are still seeing this message, you may need to add a ProGuard exception: -keep public class com.google.android.gms.** { public protected *; }", e2);
                }
                synchronized (b) {
                    aVar = e;
                }
                return aVar;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static a b(Context context) {
        return a(context);
    }

    private static a c(Context context) {
        a collectGoogleAdvertisingInfo = collectGoogleAdvertisingInfo(context);
        if (collectGoogleAdvertisingInfo == null) {
            collectGoogleAdvertisingInfo = collectFireOSAdvertisingInfo(context);
        }
        if (collectGoogleAdvertisingInfo == null) {
            return new a();
        }
        return collectGoogleAdvertisingInfo;
    }

    @Nullable
    private static a collectFireOSAdvertisingInfo(Context context) {
        boolean z;
        a.EnumC0026a enumC0026a;
        if (f3761a) {
            try {
                ContentResolver contentResolver = context.getContentResolver();
                a aVar = new a();
                aVar.a(StringUtils.emptyIfNull(Settings.Secure.getString(contentResolver, "advertising_id")));
                if (Settings.Secure.getInt(contentResolver, "limit_ad_tracking") != 0) {
                    z = true;
                } else {
                    z = false;
                }
                aVar.a(z);
                if (z) {
                    enumC0026a = a.EnumC0026a.ON;
                } else {
                    enumC0026a = a.EnumC0026a.OFF;
                }
                aVar.a(enumC0026a);
                return aVar;
            } catch (Settings.SettingNotFoundException e2) {
                com.applovin.impl.sdk.o.c("DataCollector", "Unable to determine if Fire OS limited ad tracking is turned on", e2);
            } catch (Throwable th) {
                com.applovin.impl.sdk.o.c("DataCollector", "Unable to collect Fire OS IDFA", th);
            }
        }
        f3761a = false;
        return null;
    }

    @Nullable
    private static a collectGoogleAdvertisingInfo(Context context) {
        a.EnumC0026a enumC0026a;
        z6.a();
        if (a()) {
            try {
                a aVar = new a();
                AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(context);
                boolean isLimitAdTrackingEnabled = advertisingIdInfo.isLimitAdTrackingEnabled();
                aVar.a(isLimitAdTrackingEnabled);
                if (isLimitAdTrackingEnabled) {
                    enumC0026a = a.EnumC0026a.ON;
                } else {
                    enumC0026a = a.EnumC0026a.OFF;
                }
                aVar.a(enumC0026a);
                aVar.a(advertisingIdInfo.getId());
                return aVar;
            } catch (Throwable th) {
                if (!AppLovinSdkUtils.isFireOS(context)) {
                    com.applovin.impl.sdk.o.c("DataCollector", "Could not collect Google Advertising ID - this will negatively impact your eCPMs! Please integrate the Google Play Services SDK into your application. More info can be found online at http://developer.android.com/google/play-services/setup.html. If you're sure you've integrated the SDK and are still seeing this message, you may need to add a ProGuard exception: -keep public class com.google.android.gms.** { public protected *; }", th);
                    return null;
                }
                return null;
            }
        } else if (!AppLovinSdkUtils.isFireOS(context)) {
            com.applovin.impl.sdk.o.h("DataCollector", "Could not collect Google Advertising ID - this will negatively impact your eCPMs! Please integrate the Google Play Services SDK into your application. More info can be found online at http://developer.android.com/google/play-services/setup.html. If you're sure you've integrated the SDK and are still seeing this message, you may need to add a ProGuard exception: -keep public class com.google.android.gms.** { public protected *; }");
            return null;
        } else {
            return null;
        }
    }

    public static boolean a() {
        return z6.a("com.google.android.gms.ads.identifier.AdvertisingIdClient");
    }
}
