package com.google.android.datatransport;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public interface Transport<T> {
    void schedule(Event<T> event, TransportScheduleCallback transportScheduleCallback);

    void send(Event<T> event);
}
