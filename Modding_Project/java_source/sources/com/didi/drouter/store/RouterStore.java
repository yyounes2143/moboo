package com.didi.drouter.store;

import android.net.Uri;
import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.collection.ArraySet;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import com.didi.drouter.loader.host.InterceptorLoader;
import com.didi.drouter.loader.host.RouterLoader;
import com.didi.drouter.loader.host.ServiceLoader;
import com.didi.drouter.router.IRouterHandler;
import com.didi.drouter.utils.ReflectUtil;
import com.didi.drouter.utils.RouterExecutor;
import com.didi.drouter.utils.RouterLogger;
import com.didi.drouter.utils.TextUtils;
import com.google.firebase.analytics.FirebaseAnalytics;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.CountDownLatch;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class RouterStore {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static volatile boolean f5817Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Map<String, Object> f5822Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ConcurrentHashMap();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Map<Object, RouterMeta> f5821Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ConcurrentHashMap();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Map<Class<?>, Set<RouterMeta>> f5820Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ConcurrentHashMap();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Set<String> f5819Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new CopyOnWriteArraySet();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final CountDownLatch f5818Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new CountDownLatch(1);

    public static synchronized void Wwwwwwwwwwwwwwwwww(ServiceKey<?> serviceKey, Object obj) {
        synchronized (RouterStore.class) {
            if (serviceKey != null && obj != null) {
                Set<RouterMeta> set = f5820Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(serviceKey.f5829Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                if (set != null && set.remove(serviceKey.f5824Wwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                    RouterLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("unregister \"%s\" with service \"%s\" success", serviceKey.f5829Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getName(), obj);
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0085, code lost:
        if (r0.remove(com.didi.drouter.utils.TextUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r13.f5786Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) != null) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static synchronized void Wwwwwwwwwwwwwwwwwww(com.didi.drouter.store.RouterKey r13, com.didi.drouter.router.IRouterHandler r14) {
        /*
            java.lang.Class<com.didi.drouter.store.RouterStore> r1 = com.didi.drouter.store.RouterStore.class
            monitor-enter(r1)
            if (r13 == 0) goto Laa
            if (r14 == 0) goto Laa
            int r0 = com.didi.drouter.store.RouterMeta.f5791Wwwwwwwwwwwww     // Catch: java.lang.Throwable -> L62
            com.didi.drouter.store.RouterMeta r2 = com.didi.drouter.store.RouterMeta.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r0)     // Catch: java.lang.Throwable -> L62
            android.net.Uri r0 = r13.f5786Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L62
            java.lang.String r3 = r0.getScheme()     // Catch: java.lang.Throwable -> L62
            android.net.Uri r0 = r13.f5786Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L62
            java.lang.String r4 = r0.getHost()     // Catch: java.lang.Throwable -> L62
            android.net.Uri r0 = r13.f5786Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L62
            java.lang.String r5 = r0.getPath()     // Catch: java.lang.Throwable -> L62
            java.lang.Class<? extends com.didi.drouter.router.IRouterInterceptor>[] r8 = r13.f5785Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L62
            java.lang.String[] r9 = r13.f5784Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L62
            int r10 = r13.f5783Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L62
            int r11 = r13.f5781Wwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L62
            boolean r12 = r13.f5782Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L62
            r6 = 0
            r7 = 0
            com.didi.drouter.store.RouterMeta r0 = r2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r3, r4, r5, r6, r7, r8, r9, r10, r11, r12)     // Catch: java.lang.Throwable -> L62
            boolean r0 = r0.Wwwwwww()     // Catch: java.lang.Throwable -> L62
            if (r0 == 0) goto L65
            java.util.Map<java.lang.String, java.lang.Object> r0 = com.didi.drouter.store.RouterStore.f5822Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L62
            java.lang.String r2 = "RegexRouter"
            java.lang.Object r0 = r0.get(r2)     // Catch: java.lang.Throwable -> L62
            java.util.Map r0 = (java.util.Map) r0     // Catch: java.lang.Throwable -> L62
            if (r0 == 0) goto Laa
            android.net.Uri r2 = r13.f5786Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L62
            java.lang.String r2 = com.didi.drouter.utils.TextUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r2)     // Catch: java.lang.Throwable -> L62
            java.lang.Object r2 = r0.get(r2)     // Catch: java.lang.Throwable -> L62
            com.didi.drouter.store.RouterMeta r2 = (com.didi.drouter.store.RouterMeta) r2     // Catch: java.lang.Throwable -> L62
            if (r2 == 0) goto Laa
            com.didi.drouter.router.IRouterHandler r2 = r2.Wwwwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L62
            if (r2 != r14) goto Laa
            android.net.Uri r2 = r13.f5786Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L62
            java.lang.String r2 = com.didi.drouter.utils.TextUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r2)     // Catch: java.lang.Throwable -> L62
            java.lang.Object r0 = r0.remove(r2)     // Catch: java.lang.Throwable -> L62
            if (r0 == 0) goto Laa
            goto L87
        L62:
            r0 = move-exception
            r13 = r0
            goto La8
        L65:
            java.util.Map<java.lang.String, java.lang.Object> r0 = com.didi.drouter.store.RouterStore.f5822Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L62
            android.net.Uri r2 = r13.f5786Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L62
            java.lang.String r2 = com.didi.drouter.utils.TextUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r2)     // Catch: java.lang.Throwable -> L62
            java.lang.Object r2 = r0.get(r2)     // Catch: java.lang.Throwable -> L62
            com.didi.drouter.store.RouterMeta r2 = (com.didi.drouter.store.RouterMeta) r2     // Catch: java.lang.Throwable -> L62
            if (r2 == 0) goto Laa
            com.didi.drouter.router.IRouterHandler r2 = r2.Wwwwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L62
            if (r2 != r14) goto Laa
            android.net.Uri r2 = r13.f5786Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L62
            java.lang.String r2 = com.didi.drouter.utils.TextUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r2)     // Catch: java.lang.Throwable -> L62
            java.lang.Object r0 = r0.remove(r2)     // Catch: java.lang.Throwable -> L62
            if (r0 == 0) goto Laa
        L87:
            com.didi.drouter.utils.RouterLogger r0 = com.didi.drouter.utils.RouterLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L62
            java.lang.String r2 = "unregister \"%s\" with handler \"%s\" success"
            android.net.Uri r13 = r13.f5786Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L62
            java.lang.String r13 = com.didi.drouter.utils.TextUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r13)     // Catch: java.lang.Throwable -> L62
            java.lang.Class r14 = r14.getClass()     // Catch: java.lang.Throwable -> L62
            java.lang.String r14 = r14.getName()     // Catch: java.lang.Throwable -> L62
            r3 = 2
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch: java.lang.Throwable -> L62
            r4 = 0
            r3[r4] = r13     // Catch: java.lang.Throwable -> L62
            r13 = 1
            r3[r13] = r14     // Catch: java.lang.Throwable -> L62
            r0.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r2, r3)     // Catch: java.lang.Throwable -> L62
            goto Laa
        La8:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L62
            throw r13
        Laa:
            monitor-exit(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.didi.drouter.store.RouterStore.Wwwwwwwwwwwwwwwwwww(com.didi.drouter.store.RouterKey, com.didi.drouter.router.IRouterHandler):void");
    }

    @NonNull
    public static synchronized <T> IRegister Wwwwwwwwwwwwwwwwwwww(final ServiceKey<T> serviceKey, T t) {
        RouterRegister routerRegister;
        synchronized (RouterStore.class) {
            if (serviceKey != null) {
                try {
                    if (serviceKey.f5829Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null && t != null) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        RouterMeta Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = RouterMeta.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(RouterMeta.f5789Wwwwwwwwwww).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null, null, serviceKey.f5828Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, serviceKey.f5827Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, serviceKey.f5826Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, 0);
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwww(t);
                        serviceKey.f5824Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                        Map<Class<?>, Set<RouterMeta>> map = f5820Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        Set<RouterMeta> set = map.get(serviceKey.f5829Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                        if (set == null) {
                            set = Collections.newSetFromMap(new ConcurrentHashMap());
                            map.put(serviceKey.f5829Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, set);
                        }
                        set.add(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                        if (serviceKey.f5825Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
                            final WeakReference weakReference = new WeakReference(new Pair(serviceKey, t));
                            RouterExecutor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new Runnable() { // from class: com.didi.drouter.store.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                                @Override // java.lang.Runnable
                                public final void run() {
                                    ServiceKey.this.f5825Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.addObserver(new LifecycleEventObserver() { // from class: com.didi.drouter.store.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                                        @Override // androidx.lifecycle.LifecycleEventObserver
                                        public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                                            RouterStore.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r1, lifecycleOwner, event);
                                        }
                                    });
                                }
                            });
                        }
                        RouterLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("register \"%s\" with service \"%s\" success, size:%s", serviceKey.f5829Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getName(), t, Integer.valueOf(set.size()));
                        routerRegister = new RouterRegister((ServiceKey<?>) serviceKey, (Object) t);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            throw new IllegalArgumentException("argument null illegal error");
        }
        return routerRegister;
    }

    @NonNull
    public static synchronized IRegister Wwwwwwwwwwwwwwwwwwwww(final RouterKey routerKey, IRouterHandler iRouterHandler) {
        boolean z;
        String str;
        RouterRegister routerRegister;
        synchronized (RouterStore.class) {
            try {
                if (routerKey != null && iRouterHandler != null) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    RouterMeta Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = RouterMeta.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(RouterMeta.f5791Wwwwwwwwwwwww).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(routerKey.f5786Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getScheme(), routerKey.f5786Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getHost(), routerKey.f5786Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPath(), null, null, routerKey.f5785Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, routerKey.f5784Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, routerKey.f5783Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, routerKey.f5781Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, routerKey.f5782Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwww(iRouterHandler);
                    String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = TextUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(routerKey.f5786Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwww()) {
                        Map<String, Object> map = f5822Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        Map map2 = (Map) map.get("RegexRouter");
                        if (map2 == null) {
                            map2 = new ConcurrentHashMap();
                            map.put("RegexRouter", map2);
                        }
                        RouterMeta routerMeta = (RouterMeta) map2.get(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                        if (routerMeta == null || routerMeta.Wwwwwwwwwww()) {
                            map2.put(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                            z = true;
                        }
                        z = false;
                    } else {
                        Map<String, Object> map3 = f5822Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        RouterMeta routerMeta2 = (RouterMeta) map3.get(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                        if (routerMeta2 != null) {
                            if (routerMeta2.Wwwwwwwwwww()) {
                            }
                            z = false;
                        }
                        map3.put(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                        z = true;
                    }
                    if (z && routerKey.f5780Wwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
                        final WeakReference weakReference = new WeakReference(new Pair(routerKey, iRouterHandler));
                        RouterExecutor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new Runnable() { // from class: com.didi.drouter.store.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                            @Override // java.lang.Runnable
                            public final void run() {
                                RouterKey.this.f5780Wwwwwwwwwwwwwwwwwwwwwwwwwwww.addObserver(new LifecycleEventObserver() { // from class: com.didi.drouter.store.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                                    @Override // androidx.lifecycle.LifecycleEventObserver
                                    public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                                        RouterStore.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r1, lifecycleOwner, event);
                                    }
                                });
                            }
                        });
                    }
                    RouterLogger Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = RouterLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    boolean z2 = !z;
                    String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = TextUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(routerKey.f5786Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                    String name = iRouterHandler.getClass().getName();
                    if (z) {
                        str = FirebaseAnalytics.Param.SUCCESS;
                    } else {
                        str = "fail";
                    }
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("register \"%s\" with handler \"%s\" %s", z2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, name, str);
                    routerRegister = new RouterRegister(routerKey, iRouterHandler);
                } else {
                    throw new IllegalArgumentException("argument null illegal error");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return routerRegister;
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwww(String str, Pair... pairArr) {
        try {
            for (Pair pair : pairArr) {
                ((MetaLoader) ReflectUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Class.forName(String.format("com.didi.drouter.loader.%s.%sLoader", str, pair.first)), new Object[0])).load((Map) pair.second);
            }
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwwww() {
        try {
            new RouterLoader().load(f5822Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            new InterceptorLoader().load(f5821Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            new ServiceLoader().load(f5820Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            return true;
        } catch (NoClassDefFoundError unused) {
            return false;
        }
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwww(String str) {
        boolean Wwwwwwwwwwwwwwwwwwwwww2;
        long currentTimeMillis = System.currentTimeMillis();
        if ("host".equals(str)) {
            Wwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwww();
            f5817Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
            f5818Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.countDown();
        } else {
            Wwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwww(str, Pair.create("Router", f5822Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww), Pair.create("Interceptor", f5821Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww), Pair.create("Service", f5820Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww));
        }
        if (!Wwwwwwwwwwwwwwwwwwwwww2) {
            RouterLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("DRouterTable in app \"%s\" not found, please apply drouter plugin first.", str);
        }
        RouterLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("[===DRouter load complete=== waste time: %sms]", Long.valueOf(System.currentTimeMillis() - currentTimeMillis));
    }

    @NonNull
    public static Set<RouterMeta> Wwwwwwwwwwwwwwwwwwwwwwwww(Class<?> cls) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Set<RouterMeta> set = f5820Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(cls);
        if (set == null) {
            return Collections.EMPTY_SET;
        }
        return set;
    }

    @NonNull
    public static Set<RouterMeta> Wwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Uri uri) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        ArraySet arraySet = new ArraySet();
        Map<String, Object> map = f5822Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        Object obj = map.get(TextUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(uri));
        if (obj instanceof RouterMeta) {
            arraySet.add((RouterMeta) obj);
        }
        Map map2 = (Map) map.get("RegexRouter");
        if (map2 != null) {
            for (RouterMeta routerMeta : map2.values()) {
                if (routerMeta.Wwwwwwww(uri)) {
                    arraySet.add(routerMeta);
                }
            }
        }
        return arraySet;
    }

    @NonNull
    public static Map<Object, RouterMeta> Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        return f5821Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(final String str, boolean z) {
        Set<String> set = f5819Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (!set.contains(str)) {
            synchronized (RouterStore.class) {
                try {
                    if (!set.contains(str)) {
                        set.add(str);
                        if (!z) {
                            Wwwwwwwwwwwwwwwwwwwwwwww(str);
                        } else {
                            new Thread("drouter-table-thread") { // from class: com.didi.drouter.store.RouterStore.1
                                @Override // java.lang.Thread, java.lang.Runnable
                                public void run() {
                                    RouterStore.Wwwwwwwwwwwwwwwwwwwwwwww(str);
                                }
                            }.start();
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (!f5817Wwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwww("host", false);
            try {
                f5818Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.await();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(WeakReference weakReference, LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        Pair pair;
        if (event == Lifecycle.Event.ON_DESTROY && (pair = (Pair) weakReference.get()) != null) {
            Wwwwwwwwwwwwwwwwwww((RouterKey) pair.first, (IRouterHandler) pair.second);
        }
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(WeakReference weakReference, LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        Pair pair;
        if (event == Lifecycle.Event.ON_DESTROY && (pair = (Pair) weakReference.get()) != null) {
            Wwwwwwwwwwwwwwwwww((ServiceKey) pair.first, pair.second);
        }
    }
}
