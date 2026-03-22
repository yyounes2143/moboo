package com.facebook.appevents;

import android.content.Context;
import com.facebook.FacebookSdk;
import com.facebook.internal.AttributionIdentifiers;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u001d\u0010\r\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ\u0013\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\t0\u000f¢\u0006\u0004\b\u0010\u0010\u0011J\u001a\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0006\u0010\n\u001a\u00020\tH\u0086\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0019\u0010\u0016\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0015\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0016\u0010\u0014R \u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00120\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u0018R\u0011\u0010\u001d\u001a\u00020\u001a8F¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001c¨\u0006\u001e"}, d2 = {"Lcom/facebook/appevents/AppEventCollection;", "", "<init>", "()V", "Lcom/facebook/appevents/PersistedEvents;", "persistedEvents", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/appevents/PersistedEvents;)V", "Lcom/facebook/appevents/AccessTokenAppIdPair;", "accessTokenAppIdPair", "Lcom/facebook/appevents/AppEvent;", "appEvent", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/AppEvent;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/Set;", "Lcom/facebook/appevents/SessionEventsState;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/appevents/AccessTokenAppIdPair;)Lcom/facebook/appevents/SessionEventsState;", "accessTokenAppId", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/HashMap;", "Ljava/util/HashMap;", "stateMap", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()I", "eventCount", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class AppEventCollection {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final HashMap<AccessTokenAppIdPair, SessionEventsState> f6177Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashMap<>();

    @NotNull
    public final synchronized Set<AccessTokenAppIdPair> Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6177Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.keySet();
    }

    public final synchronized SessionEventsState Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AccessTokenAppIdPair accessTokenAppIdPair) {
        Context Wwwwwwwwwwwwwwwwwwwwwww2;
        AttributionIdentifiers Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        SessionEventsState sessionEventsState = this.f6177Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(accessTokenAppIdPair);
        if (sessionEventsState == null && (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = AttributionIdentifiers.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww((Wwwwwwwwwwwwwwwwwwwwwww2 = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww()))) != null) {
            sessionEventsState = new SessionEventsState(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, AppEventsLogger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwww2));
        }
        if (sessionEventsState == null) {
            return null;
        }
        this.f6177Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(accessTokenAppIdPair, sessionEventsState);
        return sessionEventsState;
    }

    public final synchronized int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        int i;
        i = 0;
        for (SessionEventsState sessionEventsState : this.f6177Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.values()) {
            i += sessionEventsState.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        return i;
    }

    @Nullable
    public final synchronized SessionEventsState Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull AccessTokenAppIdPair accessTokenAppIdPair) {
        return this.f6177Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(accessTokenAppIdPair);
    }

    public final synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable PersistedEvents persistedEvents) {
        if (persistedEvents == null) {
            return;
        }
        for (Map.Entry<AccessTokenAppIdPair, List<AppEvent>> entry : persistedEvents.entrySet()) {
            SessionEventsState Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(entry.getKey());
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                for (AppEvent appEvent : entry.getValue()) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(appEvent);
                }
            }
        }
    }

    public final synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull AccessTokenAppIdPair accessTokenAppIdPair, @NotNull AppEvent appEvent) {
        SessionEventsState Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(accessTokenAppIdPair);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(appEvent);
        }
    }
}
