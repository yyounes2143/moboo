package com.facebook.appevents;

import android.content.Context;
import android.os.Bundle;
import com.facebook.GraphRequest;
import com.facebook.appevents.eventdeactivation.EventDeactivationManager;
import com.facebook.appevents.internal.AppEventsLoggerUtility;
import com.facebook.internal.AttributionIdentifiers;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vungle.ads.internal.ui.AdActivity;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\b\t\n\u0002\u0010 \n\u0002\b\u0004\b\u0001\u0018\u0000 .2\u00020\u0001:\u0001.B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\fJ\u0015\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010J-\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\r¢\u0006\u0004\b\u0018\u0010\u0019J7\u0010\u001d\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0016\u001a\u00020\rH\u0002¢\u0006\u0004\b\u001d\u0010\u001eR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\u001fR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010 R\u001c\u0010$\u001a\b\u0012\u0004\u0012\u00020\b0!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u001a\u0010&\u001a\b\u0012\u0004\u0012\u00020\b0!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010#R\u0016\u0010(\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010'R\u0011\u0010*\u001a\u00020\u00178F¢\u0006\u0006\u001a\u0004\b\"\u0010)R\u0017\u0010-\u001a\b\u0012\u0004\u0012\u00020\b0+8F¢\u0006\u0006\u001a\u0004\b%\u0010,¨\u0006/"}, d2 = {"Lcom/facebook/appevents/SessionEventsState;", "", "Lcom/facebook/internal/AttributionIdentifiers;", "attributionIdentifiers", "", "anonymousAppDeviceGUID", "<init>", "(Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;)V", "Lcom/facebook/appevents/AppEvent;", "event", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/appevents/AppEvent;)V", "", "moveToAccumulated", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Z)V", "Lcom/facebook/GraphRequest;", AdActivity.REQUEST_KEY_EXTRA, "Landroid/content/Context;", "applicationContext", "includeImplicitEvents", "limitEventUsage", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/GraphRequest;Landroid/content/Context;ZZ)I", "numSkipped", "Lorg/json/JSONArray;", DbParams.TABLE_EVENTS, "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/GraphRequest;Landroid/content/Context;ILorg/json/JSONArray;Z)V", "Lcom/facebook/internal/AttributionIdentifiers;", "Ljava/lang/String;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/List;", "accumulatedEvents", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "inFlightEvents", "I", "numSkippedEventsDueToFullBuffer", "()I", "accumulatedEventCount", "", "()Ljava/util/List;", "eventsToPersist", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class SessionEventsState {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f6205Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f6208Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final AttributionIdentifiers f6209Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f6204Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = SessionEventsState.class.getSimpleName();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final int f6203Wwwwwwwwwwwwwwwwwwwwwwwwwwww = 1000;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public List<AppEvent> f6207Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<AppEvent> f6206Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\n \u0007*\u0004\u0018\u00010\u00060\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/facebook/appevents/SessionEventsState$Companion;", "", "()V", "MAX_ACCUMULATED_LOG_EVENTS", "", "TAG", "", "kotlin.jvm.PlatformType", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public SessionEventsState(@NotNull AttributionIdentifiers attributionIdentifiers, @NotNull String str) {
        this.f6209Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = attributionIdentifiers;
        this.f6208Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(GraphRequest graphRequest, Context context, int i, JSONArray jSONArray, boolean z) {
        JSONObject jSONObject;
        try {
            if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
                try {
                    AppEventsLoggerUtility appEventsLoggerUtility = AppEventsLoggerUtility.INSTANCE;
                    jSONObject = AppEventsLoggerUtility.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AppEventsLoggerUtility.GraphAPIActivityType.CUSTOM_APP_EVENTS, this.f6209Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f6208Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, z, context);
                    if (this.f6205Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww > 0) {
                        jSONObject.put("num_skipped_events", i);
                    }
                } catch (JSONException unused) {
                    jSONObject = new JSONObject();
                }
                graphRequest.Kkkkkkkkkkkkkkkkkkkkkkkkkk(jSONObject);
                Bundle Wwwwwwwwwwwwww2 = graphRequest.Wwwwwwwwwwwwww();
                String jSONArray2 = jSONArray.toString();
                Wwwwwwwwwwwwww2.putString("custom_events", jSONArray2);
                graphRequest.Kkkkkkkkkkkkkkkkkkkkkkk(jSONArray2);
                graphRequest.Kkkkkkkkkkkkkkkkkkkkkkkk(Wwwwwwwwwwwwww2);
            }
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
        }
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull GraphRequest graphRequest, @NotNull Context context, boolean z, boolean z2) {
        Throwable th;
        Throwable th2;
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return 0;
        }
        try {
            try {
                synchronized (this) {
                    try {
                        int i = this.f6205Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        EventDeactivationManager eventDeactivationManager = EventDeactivationManager.INSTANCE;
                        EventDeactivationManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f6207Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                        this.f6206Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.addAll(this.f6207Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                        this.f6207Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
                        JSONArray jSONArray = new JSONArray();
                        for (AppEvent appEvent : this.f6206Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                            try {
                                if (appEvent.isChecksumValid()) {
                                    if (!z && appEvent.isImplicit()) {
                                    }
                                    jSONArray.put(appEvent.getJsonObject());
                                } else {
                                    Utility utility = Utility.INSTANCE;
                                    Utility.Illllllllllllllllllllll(f6204Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, Intrinsics.stringPlus("Event with invalid checksum: ", appEvent));
                                }
                            } catch (Throwable th3) {
                                th2 = th3;
                                throw th2;
                            }
                        }
                        if (jSONArray.length() == 0) {
                            try {
                                return 0;
                            } catch (Throwable th4) {
                                th = th4;
                                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
                                return 0;
                            }
                        }
                        Unit unit = Unit.INSTANCE;
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(graphRequest, context, i, jSONArray, z2);
                        return jSONArray.length();
                    } catch (Throwable th5) {
                        th2 = th5;
                    }
                }
            } catch (Throwable th6) {
                th = th6;
                th = th;
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
                return 0;
            }
        } catch (Throwable th7) {
            th = th7;
            th = th;
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return 0;
        }
    }

    @NotNull
    public final synchronized List<AppEvent> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return null;
        }
        List<AppEvent> list = this.f6207Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        this.f6207Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();
        return list;
    }

    public final synchronized int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return 0;
        }
        return this.f6207Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size();
    }

    public final synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return;
        }
        if (z) {
            this.f6207Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.addAll(this.f6206Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
        this.f6206Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
        this.f6205Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 0;
    }

    public final synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull AppEvent appEvent) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return;
        }
        if (this.f6207Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size() + this.f6206Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size() >= f6203Wwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            this.f6205Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww++;
        } else {
            this.f6207Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(appEvent);
        }
    }
}
