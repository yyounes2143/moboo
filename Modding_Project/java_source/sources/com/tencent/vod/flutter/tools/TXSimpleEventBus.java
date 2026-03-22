package com.tencent.vod.flutter.tools;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class TXSimpleEventBus {
    private static TXSimpleEventBus instance;
    private final Map<String, List<EventSubscriber>> subscribers = new HashMap();

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface EventSubscriber {
        void onEvent(String str, Object obj);
    }

    private TXSimpleEventBus() {
    }

    public static TXSimpleEventBus getInstance() {
        if (instance == null) {
            instance = new TXSimpleEventBus();
        }
        return instance;
    }

    public void post(String str, Object obj) {
        List<EventSubscriber> list = this.subscribers.get(str);
        if (list != null) {
            for (EventSubscriber eventSubscriber : list) {
                eventSubscriber.onEvent(str, obj);
            }
        }
    }

    public void register(String str, EventSubscriber eventSubscriber) {
        List<EventSubscriber> list = this.subscribers.get(str);
        if (list == null) {
            list = new ArrayList<>();
            this.subscribers.put(str, list);
        }
        list.add(eventSubscriber);
    }

    public void unregister(String str, EventSubscriber eventSubscriber) {
        List<EventSubscriber> list = this.subscribers.get(str);
        if (list != null) {
            list.remove(eventSubscriber);
        }
    }

    public void unregisterAllType(EventSubscriber eventSubscriber) {
        for (String str : this.subscribers.keySet()) {
            List<EventSubscriber> list = this.subscribers.get(str);
            if (list != null) {
                list.remove(eventSubscriber);
            }
        }
    }
}
