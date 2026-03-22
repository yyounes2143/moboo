package com.facebook.appevents.eventdeactivation;

import androidx.annotation.RestrictTo;
import com.facebook.FacebookSdk;
import com.facebook.appevents.AppEvent;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\b\u0004\bÇ\u0002\u0018\u00002\u00020\u0001:\u0001\u001bB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0003J\u001d\u0010\t\u001a\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0007¢\u0006\u0004\b\t\u0010\nJ-\u0010\u000f\u001a\u00020\u00042\u0014\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\f\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000b2\u0006\u0010\u000e\u001a\u00020\fH\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0011\u0010\u0003R\u0016\u0010\u0014\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010\u0013R\u001a\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00150\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0016R\u001a\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\f0\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0019¨\u0006\u001c"}, d2 = {"Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;", "", "<init>", "()V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "Lcom/facebook/appevents/AppEvent;", DbParams.TABLE_EVENTS, "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/List;)V", "", "", "parameters", "eventName", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/Map;Ljava/lang/String;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "Z", "enabled", "Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager$DeprecatedParamFilter;", "Ljava/util/List;", "deprecatedParamFilters", "", "Ljava/util/Set;", "deprecatedEvents", "DeprecatedParamFilter", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class EventDeactivationManager {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static boolean f6342Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final EventDeactivationManager INSTANCE = new EventDeactivationManager();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final List<DeprecatedParamFilter> f6341Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Set<String> f6340Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashSet();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u000e\b\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR(\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000e\u001a\u0004\b\b\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager$DeprecatedParamFilter;", "", "", "eventName", "", "deprecateParams", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "setEventName", "(Ljava/lang/String;)V", "Ljava/util/List;", "()Ljava/util/List;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/List;)V", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class DeprecatedParamFilter {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public List<String> f6343Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f6344Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public DeprecatedParamFilter(@NotNull String str, @NotNull List<String> list) {
            this.f6344Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
            this.f6343Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = list;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull List<String> list) {
            this.f6343Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = list;
        }

        @NotNull
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6344Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6343Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull List<AppEvent> list) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(EventDeactivationManager.class)) {
            try {
                if (f6342Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    Iterator<AppEvent> it = list.iterator();
                    while (it.hasNext()) {
                        if (f6340Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.contains(it.next().getName())) {
                            it.remove();
                        }
                    }
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, EventDeactivationManager.class);
            }
        }
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Map<String, String> map, @NotNull String str) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(EventDeactivationManager.class)) {
            try {
                if (f6342Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    ArrayList arrayList = new ArrayList(map.keySet());
                    ArrayList arrayList2 = new ArrayList(f6341Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                    int size = arrayList2.size();
                    int i = 0;
                    while (i < size) {
                        Object obj = arrayList2.get(i);
                        i++;
                        DeprecatedParamFilter deprecatedParamFilter = (DeprecatedParamFilter) obj;
                        if (Intrinsics.areEqual(deprecatedParamFilter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), str)) {
                            int size2 = arrayList.size();
                            int i2 = 0;
                            while (i2 < size2) {
                                Object obj2 = arrayList.get(i2);
                                i2++;
                                String str2 = (String) obj2;
                                if (deprecatedParamFilter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().contains(str2)) {
                                    map.remove(str2);
                                }
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, EventDeactivationManager.class);
            }
        }
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(EventDeactivationManager.class)) {
            return;
        }
        try {
            f6342Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
            INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, EventDeactivationManager.class);
        }
    }

    public final synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        FetchedAppSettings Wwwwwwwwwwwwwwwwww2;
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return;
        }
        try {
            FetchedAppSettingsManager fetchedAppSettingsManager = FetchedAppSettingsManager.INSTANCE;
            Wwwwwwwwwwwwwwwwww2 = FetchedAppSettingsManager.Wwwwwwwwwwwwwwwwww(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwww(), false);
        } catch (Exception unused) {
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return;
        }
        if (Wwwwwwwwwwwwwwwwww2 == null) {
            return;
        }
        String Wwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwww2 != null && Wwwwwwwwwwwwwwwwwwwww2.length() > 0) {
            JSONObject jSONObject = new JSONObject(Wwwwwwwwwwwwwwwwwwwww2);
            f6341Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                JSONObject jSONObject2 = jSONObject.getJSONObject(next);
                if (jSONObject2 != null) {
                    if (jSONObject2.optBoolean("is_deprecated_event")) {
                        f6340Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(next);
                    } else {
                        JSONArray optJSONArray = jSONObject2.optJSONArray("deprecated_param");
                        DeprecatedParamFilter deprecatedParamFilter = new DeprecatedParamFilter(next, new ArrayList());
                        if (optJSONArray != null) {
                            deprecatedParamFilter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Utility.Wwwwwwwwwwwwwwwwwwwww(optJSONArray));
                        }
                        f6341Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(deprecatedParamFilter);
                    }
                }
            }
        }
    }
}
