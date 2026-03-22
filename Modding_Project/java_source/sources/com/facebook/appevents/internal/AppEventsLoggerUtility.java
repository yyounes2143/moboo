package com.facebook.appevents.internal;

import android.content.Context;
import com.facebook.LoggingBehavior;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.internal.AttributionIdentifiers;
import com.facebook.internal.Logger;
import com.facebook.internal.Utility;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0014B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J;\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0007¢\u0006\u0004\b\u000f\u0010\u0010R \u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\b0\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0012¨\u0006\u0015"}, d2 = {"Lcom/facebook/appevents/internal/AppEventsLoggerUtility;", "", "<init>", "()V", "Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;", "activityType", "Lcom/facebook/internal/AttributionIdentifiers;", "attributionIdentifiers", "", "anonymousAppDeviceGUID", "", "limitEventUsage", "Landroid/content/Context;", "context", "Lorg/json/JSONObject;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;ZLandroid/content/Context;)Lorg/json/JSONObject;", "", "Ljava/util/Map;", "API_ACTIVITY_TYPE_TO_STRING", "GraphAPIActivityType", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class AppEventsLoggerUtility {
    @NotNull
    public static final AppEventsLoggerUtility INSTANCE = new AppEventsLoggerUtility();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Map<GraphAPIActivityType, String> f6423Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = MapsKt.hashMapOf(TuplesKt.to(GraphAPIActivityType.MOBILE_INSTALL_EVENT, "MOBILE_APP_INSTALL"), TuplesKt.to(GraphAPIActivityType.CUSTOM_APP_EVENTS, "CUSTOM_APP_EVENTS"));

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;", "", "(Ljava/lang/String;I)V", "MOBILE_INSTALL_EVENT", "CUSTOM_APP_EVENTS", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public enum GraphAPIActivityType {
        MOBILE_INSTALL_EVENT,
        CUSTOM_APP_EVENTS;

        /* renamed from: values  reason: to resolve conflict with enum method */
        public static GraphAPIActivityType[] valuesCustom() {
            GraphAPIActivityType[] valuesCustom = values();
            return (GraphAPIActivityType[]) Arrays.copyOf(valuesCustom, valuesCustom.length);
        }
    }

    @JvmStatic
    @NotNull
    public static final JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull GraphAPIActivityType graphAPIActivityType, @Nullable AttributionIdentifiers attributionIdentifiers, @Nullable String str, boolean z, @NotNull Context context) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("event", f6423Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(graphAPIActivityType));
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = AppEventsLogger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            jSONObject.put("app_user_id", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        }
        Utility.Ill(jSONObject, attributionIdentifiers, str, z, context);
        try {
            Utility.Il(jSONObject, context);
        } catch (Exception e) {
            Logger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoggingBehavior.APP_EVENTS, "AppEvents", "Fetching extended device info parameters failed: '%s'", e.toString());
        }
        JSONObject Wwwww2 = Utility.Wwwww();
        if (Wwwww2 != null) {
            Iterator<String> keys = Wwwww2.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                jSONObject.put(next, Wwwww2.get(next));
            }
        }
        jSONObject.put("application_package_name", context.getPackageName());
        return jSONObject;
    }
}
