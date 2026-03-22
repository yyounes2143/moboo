package com.facebook.appevents.suggestedevents;

import android.content.SharedPreferences;
import android.view.View;
import com.facebook.FacebookSdk;
import com.facebook.appevents.codeless.internal.ViewHierarchy;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.mbridge.msdk.MBridgeConstans;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010%\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÁ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\b\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\b\u0010\tJ!\u0010\r\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u0019\u0010\u000f\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0011\u0010\u0003R \u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0013R\u0016\u0010\u0017\u001a\u00020\u00158\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\r\u0010\u0016R\u0014\u0010\u001a\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0019¨\u0006\u001b"}, d2 = {"Lcom/facebook/appevents/suggestedevents/PredictionHistoryManager;", "", "<init>", "()V", "", "pathID", "predictedEvent", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "text", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "Ljava/util/Map;", "clickedViewPaths", "Landroid/content/SharedPreferences;", "Landroid/content/SharedPreferences;", "shardPreferences", "Ljava/util/concurrent/atomic/AtomicBoolean;", "Ljava/util/concurrent/atomic/AtomicBoolean;", "initialized", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class PredictionHistoryManager {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static SharedPreferences f6507Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final PredictionHistoryManager INSTANCE = new PredictionHistoryManager();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Map<String, String> f6508Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new LinkedHashMap();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final AtomicBoolean f6506Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new AtomicBoolean(false);

    @JvmStatic
    @Nullable
    public static final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(PredictionHistoryManager.class)) {
            return null;
        }
        try {
            Map<String, String> map = f6508Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (!map.containsKey(str)) {
                return null;
            }
            return map.get(str);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, PredictionHistoryManager.class);
            return null;
        }
    }

    @JvmStatic
    @Nullable
    public static final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull View view, @NotNull String str) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(PredictionHistoryManager.class)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("text", str);
                JSONArray jSONArray = new JSONArray();
                while (view != null) {
                    jSONArray.put(view.getClass().getSimpleName());
                    view = ViewHierarchy.Wwwwwwwwwwwwwwwwwwwwwwwww(view);
                }
                jSONObject.put("classname", jSONArray);
            } catch (JSONException unused) {
            }
            Utility utility = Utility.INSTANCE;
            return Utility.IIllllllll(jSONObject.toString());
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, PredictionHistoryManager.class);
            return null;
        }
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull String str2) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(PredictionHistoryManager.class)) {
            return;
        }
        try {
            if (!f6506Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get()) {
                INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            Map<String, String> map = f6508Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            map.put(str, str2);
            SharedPreferences sharedPreferences = f6507Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (sharedPreferences != null) {
                SharedPreferences.Editor edit = sharedPreferences.edit();
                Utility utility = Utility.INSTANCE;
                edit.putString("SUGGESTED_EVENTS_HISTORY", Utility.Illllllllllllllllllll(MapsKt.toMap(map))).apply();
                return;
            }
            throw null;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, PredictionHistoryManager.class);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        String str = "";
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                AtomicBoolean atomicBoolean = f6506Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (atomicBoolean.get()) {
                    return;
                }
                f6507Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww().getSharedPreferences("com.facebook.internal.SUGGESTED_EVENTS_HISTORY", 0);
                Map<String, String> map = f6508Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                Utility utility = Utility.INSTANCE;
                SharedPreferences sharedPreferences = f6507Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (sharedPreferences != null) {
                    String string = sharedPreferences.getString("SUGGESTED_EVENTS_HISTORY", "");
                    if (string != null) {
                        str = string;
                    }
                    map.putAll(Utility.Illllllllllllllllllllllll(str));
                    atomicBoolean.set(true);
                    return;
                }
                throw null;
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }
}
