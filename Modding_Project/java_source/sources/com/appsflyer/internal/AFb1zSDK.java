package com.appsflyer.internal;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.appsflyer.AFLogger;
import com.appsflyer.internal.AFa1bSDK;
import com.facebook.FacebookSdk;
import com.facebook.applinks.AppLinkData;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.LinkedHashMap;
import java.util.Map;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class AFb1zSDK implements AFa1cSDK {
    private boolean AFAdRevenueData;
    @NotNull
    private final AFc1hSDK getMonetizationNetwork;
    @Nullable
    Map<String, Object> getRevenue;

    public AFb1zSDK(@NotNull AFc1hSDK aFc1hSDK) {
        this.getMonetizationNetwork = aFc1hSDK;
    }

    @Override // com.appsflyer.internal.AFa1cSDK
    public final boolean AFAdRevenueData() {
        if (getCurrencyIso4217Code()) {
            Map<String, Object> map = this.getRevenue;
            if (map == null || map.isEmpty()) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // com.appsflyer.internal.AFa1cSDK
    public final void getCurrencyIso4217Code(boolean z) {
        this.AFAdRevenueData = z;
    }

    @Override // com.appsflyer.internal.AFa1cSDK
    @Nullable
    public final Map<String, Object> getMediationNetwork() {
        return this.getRevenue;
    }

    @Override // com.appsflyer.internal.AFa1cSDK
    public final void getMonetizationNetwork() {
        Context context;
        if (!getCurrencyIso4217Code() || (context = this.getMonetizationNetwork.getMonetizationNetwork) == null) {
            return;
        }
        this.getRevenue = new LinkedHashMap();
        final AFa1zSDK aFa1zSDK = new AFa1zSDK(System.currentTimeMillis());
        try {
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            FacebookSdk.class.getMethod("sdkInitialize", Context.class).invoke(null, context);
            String str = AppLinkData.f6522Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
            Method method = AppLinkData.class.getMethod("fetchDeferredAppLinkData", Context.class, String.class, AppLinkData.CompletionHandler.class);
            Object newProxyInstance = Proxy.newProxyInstance(AppLinkData.CompletionHandler.class.getClassLoader(), new Class[]{AppLinkData.CompletionHandler.class}, new InvocationHandler() { // from class: com.appsflyer.internal.AFa1bSDK.5
                @Override // java.lang.reflect.InvocationHandler
                public final Object invoke(Object obj, Method method2, Object[] objArr) throws Throwable {
                    String str2;
                    String str3;
                    String str4;
                    Bundle bundle;
                    if (method2.getName().equals("onDeferredAppLinkDataFetched")) {
                        Object obj2 = objArr[0];
                        if (obj2 != null) {
                            Bundle bundle2 = (Bundle) Bundle.class.cast(r1.getMethod("getArgumentBundle", null).invoke(r1.cast(obj2), null));
                            if (bundle2 != null) {
                                str3 = bundle2.getString("com.facebook.platform.APPLINK_NATIVE_URL");
                                str4 = bundle2.getString("target_url");
                                Bundle bundle3 = bundle2.getBundle("extras");
                                if (bundle3 != null && (bundle = bundle3.getBundle("deeplink_context")) != null) {
                                    str2 = bundle.getString("promo_code");
                                } else {
                                    str2 = null;
                                }
                            } else {
                                str2 = null;
                                str3 = null;
                                str4 = null;
                            }
                            AFa1uSDK aFa1uSDK = aFa1zSDK;
                            if (aFa1uSDK != null) {
                                aFa1uSDK.getRevenue(str3, str4, str2);
                            }
                        } else {
                            AFa1uSDK aFa1uSDK2 = aFa1zSDK;
                            if (aFa1uSDK2 != null) {
                                aFa1uSDK2.getRevenue(null, null, null);
                            }
                        }
                        return null;
                    }
                    AFa1uSDK aFa1uSDK3 = aFa1zSDK;
                    if (aFa1uSDK3 != null) {
                        aFa1uSDK3.getRevenue("onDeferredAppLinkDataFetched invocation failed");
                    }
                    return null;
                }
            });
            String string = context.getString(context.getResources().getIdentifier("facebook_app_id", TypedValues.Custom.S_STRING, context.getPackageName()));
            if (TextUtils.isEmpty(string)) {
                aFa1zSDK.getRevenue("Facebook app id not defined in resources");
            } else {
                method.invoke(null, context, string, newProxyInstance);
            }
        } catch (ClassNotFoundException e) {
            AFLogger.afErrorLogForExcManagerOnly("FB class missing error", e);
            aFa1zSDK.getRevenue(e.toString());
        } catch (IllegalAccessException e2) {
            AFLogger.afErrorLogForExcManagerOnly("FB illegal access", e2);
            aFa1zSDK.getRevenue(e2.toString());
        } catch (NoSuchMethodException e3) {
            AFLogger.afErrorLogForExcManagerOnly("FB method missing error", e3);
            aFa1zSDK.getRevenue(e3.toString());
        } catch (InvocationTargetException e4) {
            AFLogger.afErrorLogForExcManagerOnly("FB invocation error", e4);
            aFa1zSDK.getRevenue(e4.toString());
        }
    }

    private boolean getCurrencyIso4217Code() {
        return this.AFAdRevenueData;
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class AFa1zSDK implements AFa1bSDK.AFa1uSDK {
        private /* synthetic */ long getMonetizationNetwork;

        public AFa1zSDK(long j) {
            this.getMonetizationNetwork = j;
        }

        @Override // com.appsflyer.internal.AFa1bSDK.AFa1uSDK
        public final void getRevenue(@Nullable String str, @Nullable String str2, @Nullable String str3) {
            Map<String, Object> map;
            if (str != null) {
                AFLogger.afInfoLog("Facebook Deferred AppLink data received: " + str);
                Map<String, Object> map2 = AFb1zSDK.this.getRevenue;
                if (map2 != null) {
                    map2.put("link", str);
                }
                if (str2 != null && (map = AFb1zSDK.this.getRevenue) != null) {
                    map.put("target_url", str2);
                }
                if (str3 != null) {
                    AFb1zSDK aFb1zSDK = AFb1zSDK.this;
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                    linkedHashMap2.put("promo_code", str3);
                    linkedHashMap.put("deeplink_context", linkedHashMap2);
                    Map<String, Object> map3 = aFb1zSDK.getRevenue;
                    if (map3 != null) {
                        map3.put("extras", linkedHashMap);
                    }
                }
            } else {
                Map<String, Object> map4 = AFb1zSDK.this.getRevenue;
                if (map4 != null) {
                    map4.put("link", "");
                }
            }
            String valueOf = String.valueOf(System.currentTimeMillis() - this.getMonetizationNetwork);
            Map<String, Object> map5 = AFb1zSDK.this.getRevenue;
            if (map5 != null) {
                map5.put("ttr", valueOf);
            }
        }

        @Override // com.appsflyer.internal.AFa1bSDK.AFa1uSDK
        public final void getRevenue(@Nullable String str) {
            Map<String, Object> map = AFb1zSDK.this.getRevenue;
            if (map != null) {
                map.put("error", str);
            }
        }
    }
}
