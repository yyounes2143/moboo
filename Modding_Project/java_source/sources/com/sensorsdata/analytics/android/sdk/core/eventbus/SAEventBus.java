package com.sensorsdata.analytics.android.sdk.core.eventbus;

import j$.util.concurrent.ConcurrentHashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class SAEventBus {
    private static SAEventBus sSAEventBus;
    private final Map<String, CopyOnWriteArrayList<Subscription>> mSubscriberMap = new ConcurrentHashMap();

    private boolean checkType(Subscription subscription, Object obj) {
        try {
            subscription.getClass().getDeclaredMethod("notify", obj.getClass());
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static SAEventBus getInstance() {
        if (sSAEventBus == null) {
            synchronized (SAEventBus.class) {
                try {
                    if (sSAEventBus == null) {
                        sSAEventBus = new SAEventBus();
                    }
                } finally {
                }
            }
        }
        return sSAEventBus;
    }

    public void clear() {
        this.mSubscriberMap.clear();
    }

    public void post(String str, Object obj) {
        if (this.mSubscriberMap.containsKey(str)) {
            Iterator<Subscription> it = this.mSubscriberMap.get(str).iterator();
            while (it.hasNext()) {
                Subscription next = it.next();
                if (checkType(next, obj)) {
                    next.notify(obj);
                }
            }
        }
    }

    public void register(String str, Subscription subscription) {
        if (subscription == null) {
            return;
        }
        subscription.eventTag = str;
        if (this.mSubscriberMap.containsKey(str)) {
            this.mSubscriberMap.get(str).add(subscription);
            return;
        }
        CopyOnWriteArrayList<Subscription> copyOnWriteArrayList = new CopyOnWriteArrayList<>();
        copyOnWriteArrayList.add(subscription);
        this.mSubscriberMap.put(str, copyOnWriteArrayList);
    }

    public void unRegister(Subscription subscription) {
        if (subscription != null && this.mSubscriberMap.containsKey(subscription.eventTag)) {
            this.mSubscriberMap.get(subscription.eventTag).remove(subscription);
        }
    }
}
