package com.facebook.appevents.integrity;

import com.facebook.FacebookSdk;
import com.facebook.appevents.ml.ModelManager;
import com.facebook.internal.FetchedAppGateKeepersManager;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\t\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0003J#\u0010\t\u001a\u00020\u00042\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u0006H\u0007¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0013\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010\u0012R\u0016\u0010\u0014\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0012¨\u0006\u0015"}, d2 = {"Lcom/facebook/appevents/integrity/IntegrityManager;", "", "<init>", "()V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "", "parameters", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/Map;)V", "input", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Z", "textFeature", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Ljava/lang/String;", "Z", "enabled", "isSampleEnabled", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class IntegrityManager {
    @NotNull
    public static final IntegrityManager INSTANCE = new IntegrityManager();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static boolean f6399Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static boolean f6400Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Map<String, String> map) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(IntegrityManager.class)) {
            try {
                if (f6400Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && !map.isEmpty()) {
                    try {
                        List<String> list = CollectionsKt.toList(map.keySet());
                        JSONObject jSONObject = new JSONObject();
                        for (String str : list) {
                            String str2 = map.get(str);
                            if (str2 != null) {
                                String str3 = str2;
                                IntegrityManager integrityManager = INSTANCE;
                                if (!integrityManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str) && !integrityManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str3)) {
                                }
                                map.remove(str);
                                if (!f6399Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                                    str3 = "";
                                }
                                jSONObject.put(str, str3);
                            } else {
                                throw new IllegalStateException("Required value was null.");
                            }
                        }
                        if (jSONObject.length() != 0) {
                            map.put("_onDeviceParams", jSONObject.toString());
                        }
                    } catch (Exception unused) {
                    }
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, IntegrityManager.class);
            }
        }
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(IntegrityManager.class)) {
            return;
        }
        try {
            f6400Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
            FetchedAppGateKeepersManager fetchedAppGateKeepersManager = FetchedAppGateKeepersManager.INSTANCE;
            f6399Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = FetchedAppGateKeepersManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("FBSDKFeatureIntegritySample", FacebookSdk.Wwwwwwwwwwwwwwwwwwwwww(), false);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, IntegrityManager.class);
        }
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return false;
        }
        try {
            return !Intrinsics.areEqual("none", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str));
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return false;
        }
    }

    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return null;
        }
        try {
            float[] fArr = new float[30];
            for (int i = 0; i < 30; i++) {
                fArr[i] = 0.0f;
            }
            ModelManager modelManager = ModelManager.INSTANCE;
            String[] Wwwwwwwwwwwwwwwwww2 = ModelManager.Wwwwwwwwwwwwwwwwww(ModelManager.Task.MTML_INTEGRITY_DETECT, new float[][]{fArr}, new String[]{str});
            if (Wwwwwwwwwwwwwwwwww2 == null) {
                return "none";
            }
            String str2 = Wwwwwwwwwwwwwwwwww2[0];
            if (str2 == null) {
                return "none";
            }
            return str2;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return null;
        }
    }
}
