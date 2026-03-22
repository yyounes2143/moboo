package com.tencent.thumbplayer.tcmedia.utils;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes6.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private static CopyOnWriteArrayList<a> f10689a = new CopyOnWriteArrayList<>();

    /* loaded from: classes6.dex */
    public interface a {
        void a(int i, int i2, int i3, Object obj);
    }

    public static synchronized void a(int i, int i2, int i3, Object obj) {
        synchronized (f.class) {
            Iterator<a> it = f10689a.iterator();
            while (it.hasNext()) {
                it.next().a(i, i2, i3, obj);
            }
        }
    }

    public static synchronized void b(a aVar) {
        synchronized (f.class) {
            CopyOnWriteArrayList<a> copyOnWriteArrayList = f10689a;
            if (copyOnWriteArrayList != null) {
                copyOnWriteArrayList.remove(aVar);
                TPLogUtil.d("TPGlobalEventNofication", "remove netStatusChangeListener, listener: " + aVar + ", mListeners: " + f10689a.size());
            }
        }
    }

    public static synchronized void a(a aVar) {
        synchronized (f.class) {
            CopyOnWriteArrayList<a> copyOnWriteArrayList = f10689a;
            if (copyOnWriteArrayList != null && !copyOnWriteArrayList.contains(aVar)) {
                f10689a.add(aVar);
                TPLogUtil.d("TPGlobalEventNofication", "add onNetStatus change listener: " + aVar + ", mListeners: " + f10689a.size());
            }
        }
    }
}
