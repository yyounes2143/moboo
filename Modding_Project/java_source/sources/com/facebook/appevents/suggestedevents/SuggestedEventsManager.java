package com.facebook.appevents.suggestedevents;

import android.app.Activity;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import com.facebook.FacebookSdk;
import com.facebook.appevents.internal.ActivityLifecycleTracker;
import com.facebook.appevents.ml.ModelManager;
import com.facebook.appevents.suggestedevents.SuggestedEventsManager;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import java.io.File;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010#\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0003J\u0017\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nH\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u000f\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nH\u0001¢\u0006\u0004\b\u000f\u0010\u000eJ\u0019\u0010\u0011\u001a\u00020\u00042\b\u0010\u0010\u001a\u0004\u0018\u00010\nH\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0013\u0010\u0003R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u001a\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\n0\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0019R\u001a\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\n0\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u0019¨\u0006\u001d"}, d2 = {"Lcom/facebook/appevents/suggestedevents/SuggestedEventsManager;", "", "<init>", "()V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/app/Activity;", "activity", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/app/Activity;)V", "", "event", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "rawSuggestedEventSetting", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/concurrent/atomic/AtomicBoolean;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/concurrent/atomic/AtomicBoolean;", "enabled", "", "Ljava/util/Set;", "productionEvents", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "eligibleEvents", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public final class SuggestedEventsManager {
    @NotNull
    public static final SuggestedEventsManager INSTANCE = new SuggestedEventsManager();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final AtomicBoolean f6512Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new AtomicBoolean(false);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Set<String> f6511Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new LinkedHashSet();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Set<String> f6510Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new LinkedHashSet();

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Activity activity) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(SuggestedEventsManager.class)) {
            try {
                if (!f6512Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get() || !FeatureExtractor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() || (f6511Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.isEmpty() && f6510Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.isEmpty())) {
                    ViewObserver.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(activity);
                    return;
                }
                ViewObserver.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(activity);
            } catch (Exception unused) {
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, SuggestedEventsManager.class);
            }
        }
    }

    @JvmStatic
    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(SuggestedEventsManager.class)) {
            return false;
        }
        try {
            return f6511Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.contains(str);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, SuggestedEventsManager.class);
            return false;
        }
    }

    @JvmStatic
    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(SuggestedEventsManager.class)) {
            return false;
        }
        try {
            return f6510Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.contains(str);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, SuggestedEventsManager.class);
            return false;
        }
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(SuggestedEventsManager.class)) {
            try {
                AtomicBoolean atomicBoolean = f6512Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (atomicBoolean.get()) {
                    return;
                }
                atomicBoolean.set(true);
                INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, SuggestedEventsManager.class);
            }
        }
    }

    @JvmStatic
    public static final synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        synchronized (SuggestedEventsManager.class) {
            if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(SuggestedEventsManager.class)) {
                return;
            }
            FacebookSdk.Wwwwwwwwwwwwww().execute(new Runnable() { // from class: Wwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    SuggestedEventsManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                }
            });
        }
    }

    @VisibleForTesting(otherwise = 2)
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str) {
        JSONArray jSONArray;
        int length;
        JSONArray jSONArray2;
        int length2;
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                int i = 0;
                if (jSONObject.has("production_events") && (length2 = (jSONArray2 = jSONObject.getJSONArray("production_events")).length()) > 0) {
                    int i2 = 0;
                    while (true) {
                        int i3 = i2 + 1;
                        f6511Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(jSONArray2.getString(i2));
                        if (i3 >= length2) {
                            break;
                        }
                        i2 = i3;
                    }
                }
                if (!jSONObject.has("eligible_for_prediction_events") || (length = (jSONArray = jSONObject.getJSONArray("eligible_for_prediction_events")).length()) <= 0) {
                    return;
                }
                while (true) {
                    int i4 = i + 1;
                    f6510Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(jSONArray.getString(i));
                    if (i4 < length) {
                        i = i4;
                    } else {
                        return;
                    }
                }
            } catch (Exception unused) {
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        String Wwwwwwwwwwwwwwww2;
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                FetchedAppSettingsManager fetchedAppSettingsManager = FetchedAppSettingsManager.INSTANCE;
                FetchedAppSettings Wwwwwwwwwwwwwwwwww2 = FetchedAppSettingsManager.Wwwwwwwwwwwwwwwwww(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwww(), false);
                if (Wwwwwwwwwwwwwwwwww2 != null && (Wwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwww()) != null) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwww2);
                    if (f6511Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.isEmpty() && f6510Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.isEmpty()) {
                        return;
                    }
                    ModelManager modelManager = ModelManager.INSTANCE;
                    File Wwwwwwwwwwwwwwwwwwwwwww2 = ModelManager.Wwwwwwwwwwwwwwwwwwwwwww(ModelManager.Task.MTML_APP_EVENT_PREDICTION);
                    if (Wwwwwwwwwwwwwwwwwwwwwww2 != null) {
                        FeatureExtractor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwww2);
                        Activity Wwwwwwwwwwwwwwwwwwwwwww3 = ActivityLifecycleTracker.Wwwwwwwwwwwwwwwwwwwwwww();
                        if (Wwwwwwwwwwwwwwwwwwwwwww3 != null) {
                            Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwww3);
                        }
                    }
                }
            } catch (Exception unused) {
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }
}
