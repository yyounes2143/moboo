package com.didi.drouter.router;

import androidx.annotation.NonNull;
import androidx.collection.ArrayMap;
import androidx.collection.ArraySet;
import com.didi.drouter.store.RouterMeta;
import com.didi.drouter.store.RouterStore;
import com.didi.drouter.utils.ReflectUtil;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Map;
import java.util.PriorityQueue;
import java.util.Queue;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class InterceptorLoader {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Map<Class<? extends IRouterInterceptor>, IRouterInterceptor> f5721Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayMap();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Map<Class<? extends IRouterInterceptor>, WeakReference<IRouterInterceptor>> f5720Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayMap();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Set<Class<? extends IRouterInterceptor>> f5719Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArraySet();

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class InterceptorComparator implements Comparator<IRouterInterceptor> {
        public InterceptorComparator() {
        }

        @Override // java.util.Comparator
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public int compare(IRouterInterceptor iRouterInterceptor, IRouterInterceptor iRouterInterceptor2) {
            return RouterStore.Wwwwwwwwwwwwwwwwwwwwwwwwwww().get(iRouterInterceptor2.getClass()).Wwwwwwwwwwwwwwwwwwwww() - RouterStore.Wwwwwwwwwwwwwwwwwwwwwwwwwww().get(iRouterInterceptor.getClass()).Wwwwwwwwwwwwwwwwwwwww();
        }
    }

    static {
        for (Map.Entry<Object, RouterMeta> entry : RouterStore.Wwwwwwwwwwwwwwwwwwwwwwwwwww().entrySet()) {
            if (entry.getValue().Wwwwwwwwww()) {
                if (entry.getKey() instanceof String) {
                    f5719Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((String) entry.getKey()));
                } else {
                    f5719Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add((Class) entry.getKey());
                }
            }
        }
    }

    @NonNull
    public static Queue<IRouterInterceptor> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull RouterMeta routerMeta) {
        ArraySet<Class> arraySet = new ArraySet();
        Class<? extends IRouterInterceptor>[] Wwwwwwwwwwwwwwwwwwwwww2 = routerMeta.Wwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwww2 != null) {
            arraySet.addAll(Arrays.asList(Wwwwwwwwwwwwwwwwwwwwww2));
        }
        String[] Wwwwwwwwwwwwwwwwwwwwwww2 = routerMeta.Wwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwww2 != null) {
            for (String str : Wwwwwwwwwwwwwwwwwwwwwww2) {
                arraySet.add(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str));
            }
        }
        PriorityQueue priorityQueue = new PriorityQueue(5, new InterceptorComparator());
        for (Class cls : arraySet) {
            priorityQueue.add(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls));
        }
        return priorityQueue;
    }

    @NonNull
    public static Queue<IRouterInterceptor> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        ArraySet<Class> arraySet = new ArraySet(f5719Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        PriorityQueue priorityQueue = new PriorityQueue(5, new InterceptorComparator());
        for (Class cls : arraySet) {
            priorityQueue.add(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls));
        }
        return priorityQueue;
    }

    public static Class<? extends IRouterInterceptor> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        RouterMeta routerMeta = RouterStore.Wwwwwwwwwwwwwwwwwwwwwwwwwww().get(str);
        if (routerMeta != null) {
            return routerMeta.Wwwwwwwwwwwwwwwwwwww();
        }
        return null;
    }

    public static IRouterInterceptor Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Class<? extends IRouterInterceptor> cls) {
        IRouterInterceptor iRouterInterceptor;
        Class<? extends IRouterInterceptor> cls2;
        IRouterInterceptor iRouterInterceptor2;
        Map<Class<? extends IRouterInterceptor>, IRouterInterceptor> map = f5721Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        IRouterInterceptor iRouterInterceptor3 = map.get(cls);
        if (iRouterInterceptor3 == null) {
            Map<Class<? extends IRouterInterceptor>, WeakReference<IRouterInterceptor>> map2 = f5720Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (map2.containsKey(cls)) {
                iRouterInterceptor3 = map2.get(cls).get();
            }
        }
        if (iRouterInterceptor3 == null) {
            synchronized (InterceptorLoader.class) {
                try {
                    iRouterInterceptor = map.get(cls);
                    if (iRouterInterceptor == null) {
                        Map<Class<? extends IRouterInterceptor>, WeakReference<IRouterInterceptor>> map3 = f5720Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        if (map3.containsKey(cls)) {
                            iRouterInterceptor = map3.get(cls).get();
                        }
                    }
                    if (iRouterInterceptor == null) {
                        RouterMeta routerMeta = RouterStore.Wwwwwwwwwwwwwwwwwwwwwwwwwww().get(cls);
                        if (routerMeta == null) {
                            cls2 = cls;
                            routerMeta = RouterMeta.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(RouterMeta.f5790Wwwwwwwwwwww).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls2, null, 0, false, 0);
                            RouterStore.Wwwwwwwwwwwwwwwwwwwwwwwwwww().put(cls2, routerMeta);
                        } else {
                            cls2 = cls;
                        }
                        IRouterInterceptor iRouterInterceptor4 = null;
                        if (routerMeta.Wwwwwwwwwwwwwwwwwww() != null) {
                            iRouterInterceptor4 = (IRouterInterceptor) routerMeta.Wwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null);
                        }
                        if (iRouterInterceptor4 == null) {
                            iRouterInterceptor2 = (IRouterInterceptor) ReflectUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls2, new Object[0]);
                        } else {
                            iRouterInterceptor2 = iRouterInterceptor4;
                        }
                        if (routerMeta.Wwwwwwwwwwwwwwwwwwwwwwwwwwww() == 2) {
                            map.put(cls2, iRouterInterceptor2);
                        } else if (routerMeta.Wwwwwwwwwwwwwwwwwwwwwwwwwwww() == 1) {
                            f5720Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(cls2, new WeakReference<>(iRouterInterceptor2));
                        }
                        iRouterInterceptor = iRouterInterceptor2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return iRouterInterceptor;
        }
        return iRouterInterceptor3;
    }
}
