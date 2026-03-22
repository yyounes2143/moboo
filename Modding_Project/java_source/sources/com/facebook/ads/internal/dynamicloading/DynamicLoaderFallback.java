package com.facebook.ads.internal.dynamicloading;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Keep;
import androidx.annotation.Nullable;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdListener;
import com.facebook.ads.AdSize;
import com.facebook.ads.AdView;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.NativeAdBase;
import com.facebook.ads.RewardedVideoAd;
import com.facebook.ads.internal.api.AdViewApi;
import com.facebook.ads.internal.api.AdViewParentApi;
import com.facebook.ads.internal.api.InterstitialAdApi;
import com.facebook.ads.internal.api.NativeAdBaseApi;
import com.facebook.ads.internal.api.RewardedVideoAdApi;
import com.facebook.infer.annotation.Nullsafe;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
@Keep
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes3.dex */
public class DynamicLoaderFallback {
    private static final WeakHashMap<Object, AdListener> sApiProxyToAdListenersMap = new WeakHashMap<>();

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class SimpleMethodCaptor {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final InvocationHandler f6168Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Method f6169Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public SimpleMethodCaptor() {
            this.f6168Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new InvocationHandler() { // from class: com.facebook.ads.internal.dynamicloading.DynamicLoaderFallback.SimpleMethodCaptor.1
                @Override // java.lang.reflect.InvocationHandler
                @Nullable
                public Object invoke(Object obj, Method method, Object[] objArr) {
                    if (!"toString".equals(method.getName())) {
                        SimpleMethodCaptor.this.f6169Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = method;
                        return null;
                    }
                    return null;
                }
            };
        }

        public <T> T Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Class<T> cls) {
            return cls.cast(Proxy.newProxyInstance(DynamicLoaderFallback.class.getClassLoader(), new Class[]{cls}, this.f6168Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww));
        }

        @Nullable
        public Method Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6169Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    private static boolean equalsMethodParams(Method method, Method method2) {
        return Arrays.equals(method.getParameterTypes(), method2.getParameterTypes());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean equalsMethods(Method method, Method method2) {
        if (method != null && method2 != null && method.getDeclaringClass().equals(method2.getDeclaringClass()) && method.getName().equals(method2.getName()) && equalsMethodParams(method, method2)) {
            return true;
        }
        return false;
    }

    @SuppressLint({"Parameter Not Nullable", "CatchGeneralException"})
    public static DynamicLoader makeFallbackLoader() {
        final ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        final ArrayList arrayList3 = new ArrayList();
        final ArrayList arrayList4 = new ArrayList();
        final ArrayList arrayList5 = new ArrayList();
        final HashMap hashMap = new HashMap();
        final HashMap hashMap2 = new HashMap();
        SimpleMethodCaptor simpleMethodCaptor = new SimpleMethodCaptor();
        DynamicLoader dynamicLoader = (DynamicLoader) simpleMethodCaptor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DynamicLoader.class);
        dynamicLoader.createInterstitialAd(null, null, null);
        arrayList5.add(simpleMethodCaptor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        dynamicLoader.createRewardedVideoAd(null, null, null);
        arrayList5.add(simpleMethodCaptor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        dynamicLoader.createAdViewApi((Context) null, (String) null, (AdSize) null, (AdViewParentApi) null, (AdView) null);
        arrayList5.add(simpleMethodCaptor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        try {
            dynamicLoader.createAdViewApi((Context) null, (String) null, (String) null, (AdViewParentApi) null, (AdView) null);
        } catch (Exception unused) {
        }
        arrayList5.add(simpleMethodCaptor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        dynamicLoader.createNativeAdApi(null, null);
        final Method Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = simpleMethodCaptor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        dynamicLoader.createNativeBannerAdApi(null, null);
        final Method Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = simpleMethodCaptor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        NativeAdBaseApi nativeAdBaseApi = (NativeAdBaseApi) simpleMethodCaptor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(NativeAdBaseApi.class);
        nativeAdBaseApi.loadAd();
        arrayList.add(simpleMethodCaptor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        nativeAdBaseApi.loadAd(null);
        arrayList2.add(simpleMethodCaptor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        nativeAdBaseApi.buildLoadAdConfig(null);
        arrayList4.add(simpleMethodCaptor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        InterstitialAdApi interstitialAdApi = (InterstitialAdApi) simpleMethodCaptor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InterstitialAdApi.class);
        interstitialAdApi.loadAd();
        arrayList.add(simpleMethodCaptor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        interstitialAdApi.loadAd(null);
        arrayList2.add(simpleMethodCaptor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        interstitialAdApi.buildLoadAdConfig();
        arrayList4.add(simpleMethodCaptor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        RewardedVideoAdApi rewardedVideoAdApi = (RewardedVideoAdApi) simpleMethodCaptor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(RewardedVideoAdApi.class);
        rewardedVideoAdApi.loadAd();
        arrayList.add(simpleMethodCaptor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        rewardedVideoAdApi.loadAd(null);
        arrayList2.add(simpleMethodCaptor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        rewardedVideoAdApi.buildLoadAdConfig();
        arrayList4.add(simpleMethodCaptor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        AdViewApi adViewApi = (AdViewApi) simpleMethodCaptor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AdViewApi.class);
        adViewApi.loadAd();
        arrayList.add(simpleMethodCaptor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        adViewApi.loadAd(null);
        arrayList2.add(simpleMethodCaptor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        adViewApi.buildLoadAdConfig();
        arrayList4.add(simpleMethodCaptor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        ((AdView.AdViewLoadConfigBuilder) simpleMethodCaptor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AdView.AdViewLoadConfigBuilder.class)).withAdListener(null);
        arrayList3.add(simpleMethodCaptor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        ((NativeAdBase.NativeAdLoadConfigBuilder) simpleMethodCaptor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(NativeAdBase.NativeAdLoadConfigBuilder.class)).withAdListener(null);
        arrayList3.add(simpleMethodCaptor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        ((InterstitialAd.InterstitialAdLoadConfigBuilder) simpleMethodCaptor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InterstitialAd.InterstitialAdLoadConfigBuilder.class)).withAdListener(null);
        arrayList3.add(simpleMethodCaptor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        ((RewardedVideoAd.RewardedVideoAdLoadConfigBuilder) simpleMethodCaptor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(RewardedVideoAd.RewardedVideoAdLoadConfigBuilder.class)).withAdListener(null);
        arrayList3.add(simpleMethodCaptor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        return (DynamicLoader) Proxy.newProxyInstance(DynamicLoaderFallback.class.getClassLoader(), new Class[]{DynamicLoader.class}, new InvocationHandler() { // from class: com.facebook.ads.internal.dynamicloading.DynamicLoaderFallback.1
            @Override // java.lang.reflect.InvocationHandler
            @Nullable
            public Object invoke(Object obj, Method method, Object[] objArr) {
                Object newProxyInstance;
                if (method.getReturnType().isPrimitive()) {
                    if (method.getReturnType().equals(Void.TYPE)) {
                        Iterator it = arrayList.iterator();
                        while (it.hasNext() && (!DynamicLoaderFallback.equalsMethods(method, (Method) it.next()) || !DynamicLoaderFallback.reportError(obj, hashMap))) {
                        }
                        for (Method method2 : arrayList2) {
                            if (DynamicLoaderFallback.equalsMethods(method, method2) && DynamicLoaderFallback.reportError(obj, hashMap)) {
                                return null;
                            }
                        }
                        return null;
                    }
                    return Array.get(Array.newInstance(method.getReturnType(), 1), 0);
                } else if (method.getReturnType().equals(String.class)) {
                    return "";
                } else {
                    if (method.getReturnType().equals(obj.getClass().getInterfaces()[0])) {
                        newProxyInstance = obj;
                    } else {
                        newProxyInstance = Proxy.newProxyInstance(DynamicLoaderFallback.class.getClassLoader(), new Class[]{method.getReturnType()}, this);
                    }
                    Iterator it2 = arrayList3.iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            if (DynamicLoaderFallback.equalsMethods(method, (Method) it2.next())) {
                                DynamicLoaderFallback.sApiProxyToAdListenersMap.put(hashMap2.get(obj), (AdListener) objArr[0]);
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                    for (Method method3 : arrayList4) {
                        if (DynamicLoaderFallback.equalsMethods(method, method3)) {
                            hashMap2.put(newProxyInstance, obj);
                        }
                    }
                    for (Method method4 : arrayList5) {
                        if (DynamicLoaderFallback.equalsMethods(method, method4)) {
                            for (Object obj2 : objArr) {
                                if (obj2 instanceof Ad) {
                                    hashMap.put(newProxyInstance, (Ad) obj2);
                                }
                            }
                        }
                    }
                    if (DynamicLoaderFallback.equalsMethods(method, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
                        hashMap.put(objArr[1], (Ad) objArr[0]);
                    }
                    if (DynamicLoaderFallback.equalsMethods(method, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3)) {
                        hashMap.put(objArr[1], (Ad) objArr[0]);
                    }
                    return newProxyInstance;
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean reportError(@Nullable Object obj, Map<Object, Ad> map) {
        if (obj == null) {
            return false;
        }
        final AdListener adListener = sApiProxyToAdListenersMap.get(obj);
        final Ad ad = map.get(obj);
        if (adListener == null) {
            return false;
        }
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.facebook.ads.internal.dynamicloading.DynamicLoaderFallback.2
            @Override // java.lang.Runnable
            public void run() {
                AdListener.this.onError(ad, new AdError(-1, "Can't load Audience Network Dex. Please, check that audience_network.dex is inside of assets folder."));
            }
        }, 500L);
        return true;
    }
}
