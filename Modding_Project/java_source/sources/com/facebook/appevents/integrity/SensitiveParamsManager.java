package com.facebook.appevents.integrity;

import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0003J-\u0010\n\u001a\u00020\u00042\u0014\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\u0006\u0010\t\u001a\u00020\u0007H\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\f\u0010\u0003J3\u0010\u0012\u001a\u00020\u00112\u0006\u0010\r\u001a\u00020\u00072\u001a\u0010\u0010\u001a\u0016\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u000ej\n\u0012\u0004\u0012\u00020\u0007\u0018\u0001`\u000fH\u0002¢\u0006\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0015\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010\u0014R&\u0010\u0017\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u000ej\b\u0012\u0004\u0012\u00020\u0007`\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\u0016R2\u0010\u0019\u001a\u001e\u0012\u0004\u0012\u00020\u0007\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00070\u000ej\b\u0012\u0004\u0012\u00020\u0007`\u000f0\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010\u0018¨\u0006\u001a"}, d2 = {"Lcom/facebook/appevents/integrity/SensitiveParamsManager;", "", "<init>", "()V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "", "parameters", "eventName", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/Map;Ljava/lang/String;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "parameterKey", "Ljava/util/HashSet;", "Lkotlin/collections/HashSet;", "sensitiveParamsForEvent", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/util/HashSet;)Z", "Z", "enabled", "Ljava/util/HashSet;", "defaultSensitiveParameters", "Ljava/util/Map;", "sensitiveParameters", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class SensitiveParamsManager {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static boolean f6411Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final SensitiveParamsManager INSTANCE = new SensitiveParamsManager();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static HashSet<String> f6410Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashSet<>();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static Map<String, HashSet<String>> f6409Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashMap();

    /* JADX WARN: Can't wrap try/catch for region: R(11:9|(9:11|(1:13)|14|15|16|(3:18|(3:20|21|22)(1:24)|23)|26|27|(2:29|30)(1:32))|34|(2:36|37)|14|15|16|(0)|26|27|(0)(0)) */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0041 A[Catch: all -> 0x0019, Exception -> 0x0058, TryCatch #0 {Exception -> 0x0058, blocks: (B:19:0x0029, B:21:0x0041, B:23:0x0051), top: B:32:0x0029 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x005e A[Catch: all -> 0x0019, TRY_LEAVE, TryCatch #1 {all -> 0x0019, blocks: (B:5:0x0009, B:8:0x000e, B:10:0x0012, B:18:0x0024, B:19:0x0029, B:21:0x0041, B:23:0x0051, B:25:0x0058, B:27:0x005e, B:15:0x001b), top: B:34:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:? A[RETURN, SYNTHETIC] */
    @kotlin.jvm.JvmStatic
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@org.jetbrains.annotations.NotNull java.util.Map<java.lang.String, java.lang.String> r7, @org.jetbrains.annotations.NotNull java.lang.String r8) {
        /*
            java.lang.Class<com.facebook.appevents.integrity.SensitiveParamsManager> r0 = com.facebook.appevents.integrity.SensitiveParamsManager.class
            boolean r1 = com.facebook.internal.instrument.crashshield.CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r0)
            if (r1 == 0) goto L9
            goto L67
        L9:
            boolean r1 = com.facebook.appevents.integrity.SensitiveParamsManager.f6411Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L19
            if (r1 != 0) goto Le
            goto L67
        Le:
            java.util.HashSet<java.lang.String> r1 = com.facebook.appevents.integrity.SensitiveParamsManager.f6410Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L19
            if (r1 == 0) goto L1b
            boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> L19
            if (r1 == 0) goto L24
            goto L1b
        L19:
            r7 = move-exception
            goto L68
        L1b:
            java.util.Map<java.lang.String, java.util.HashSet<java.lang.String>> r1 = com.facebook.appevents.integrity.SensitiveParamsManager.f6409Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L19
            boolean r1 = r1.containsKey(r8)     // Catch: java.lang.Throwable -> L19
            if (r1 != 0) goto L24
            goto L67
        L24:
            org.json.JSONArray r1 = new org.json.JSONArray     // Catch: java.lang.Throwable -> L19
            r1.<init>()     // Catch: java.lang.Throwable -> L19
            java.util.Map<java.lang.String, java.util.HashSet<java.lang.String>> r2 = com.facebook.appevents.integrity.SensitiveParamsManager.f6409Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L19 java.lang.Exception -> L58
            java.lang.Object r8 = r2.get(r8)     // Catch: java.lang.Throwable -> L19 java.lang.Exception -> L58
            java.util.HashSet r8 = (java.util.HashSet) r8     // Catch: java.lang.Throwable -> L19 java.lang.Exception -> L58
            java.util.ArrayList r2 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L19 java.lang.Exception -> L58
            java.util.Set r3 = r7.keySet()     // Catch: java.lang.Throwable -> L19 java.lang.Exception -> L58
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L19 java.lang.Exception -> L58
            int r3 = r2.size()     // Catch: java.lang.Throwable -> L19 java.lang.Exception -> L58
            r4 = 0
        L3f:
            if (r4 >= r3) goto L58
            java.lang.Object r5 = r2.get(r4)     // Catch: java.lang.Throwable -> L19 java.lang.Exception -> L58
            int r4 = r4 + 1
            java.lang.String r5 = (java.lang.String) r5     // Catch: java.lang.Throwable -> L19 java.lang.Exception -> L58
            com.facebook.appevents.integrity.SensitiveParamsManager r6 = com.facebook.appevents.integrity.SensitiveParamsManager.INSTANCE     // Catch: java.lang.Throwable -> L19 java.lang.Exception -> L58
            boolean r6 = r6.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r5, r8)     // Catch: java.lang.Throwable -> L19 java.lang.Exception -> L58
            if (r6 == 0) goto L3f
            r7.remove(r5)     // Catch: java.lang.Throwable -> L19 java.lang.Exception -> L58
            r1.put(r5)     // Catch: java.lang.Throwable -> L19 java.lang.Exception -> L58
            goto L3f
        L58:
            int r8 = r1.length()     // Catch: java.lang.Throwable -> L19
            if (r8 <= 0) goto L67
            java.lang.String r8 = "_filteredKey"
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L19
            r7.put(r8, r1)     // Catch: java.lang.Throwable -> L19
        L67:
            return
        L68:
            com.facebook.internal.instrument.crashshield.CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r7, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.integrity.SensitiveParamsManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(java.util.Map, java.lang.String):void");
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(SensitiveParamsManager.class)) {
            return;
        }
        try {
            INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            HashSet<String> hashSet = f6410Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (hashSet != null) {
                if (hashSet.isEmpty()) {
                }
                f6411Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
                return;
            }
            Map<String, HashSet<String>> map = f6409Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (map != null) {
                if (map.isEmpty()) {
                }
                f6411Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
                return;
            }
            f6411Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = false;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, SensitiveParamsManager.class);
        }
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, HashSet<String> hashSet) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return false;
        }
        try {
            if (!f6410Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.contains(str)) {
                if (hashSet != null && !hashSet.isEmpty()) {
                    if (hashSet.contains(str)) {
                        return true;
                    }
                }
                return false;
            }
            return true;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:?, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        /*
            r8 = this;
            java.lang.String r0 = "value"
            java.lang.String r1 = "key"
            boolean r2 = com.facebook.internal.instrument.crashshield.CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r8)
            if (r2 == 0) goto Lc
            goto L78
        Lc:
            com.facebook.internal.FetchedAppSettingsManager r2 = com.facebook.internal.FetchedAppSettingsManager.INSTANCE     // Catch: java.lang.Throwable -> L6c
            java.lang.String r2 = com.facebook.FacebookSdk.Wwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L6c
            r3 = 0
            com.facebook.internal.FetchedAppSettings r2 = com.facebook.internal.FetchedAppSettingsManager.Wwwwwwwwwwwwwwwwww(r2, r3)     // Catch: java.lang.Throwable -> L6c
            if (r2 != 0) goto L1a
            goto L78
        L1a:
            java.util.HashSet r4 = new java.util.HashSet     // Catch: java.lang.Throwable -> L6c java.lang.Exception -> L78
            r4.<init>()     // Catch: java.lang.Throwable -> L6c java.lang.Exception -> L78
            com.facebook.appevents.integrity.SensitiveParamsManager.f6410Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = r4     // Catch: java.lang.Throwable -> L6c java.lang.Exception -> L78
            java.util.HashMap r4 = new java.util.HashMap     // Catch: java.lang.Throwable -> L6c java.lang.Exception -> L78
            r4.<init>()     // Catch: java.lang.Throwable -> L6c java.lang.Exception -> L78
            com.facebook.appevents.integrity.SensitiveParamsManager.f6409Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = r4     // Catch: java.lang.Throwable -> L6c java.lang.Exception -> L78
            org.json.JSONArray r2 = r2.Wwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L6c java.lang.Exception -> L78
            if (r2 == 0) goto L78
            int r4 = r2.length()     // Catch: java.lang.Throwable -> L6c java.lang.Exception -> L78
            if (r4 == 0) goto L78
            int r4 = r2.length()     // Catch: java.lang.Throwable -> L6c java.lang.Exception -> L78
            if (r4 <= 0) goto L78
        L3a:
            int r5 = r3 + 1
            org.json.JSONObject r3 = r2.getJSONObject(r3)     // Catch: java.lang.Throwable -> L6c java.lang.Exception -> L78
            boolean r6 = r3.has(r1)     // Catch: java.lang.Throwable -> L6c java.lang.Exception -> L78
            boolean r7 = r3.has(r0)     // Catch: java.lang.Throwable -> L6c java.lang.Exception -> L78
            if (r6 == 0) goto L73
            if (r7 == 0) goto L73
            java.lang.String r6 = r3.getString(r1)     // Catch: java.lang.Throwable -> L6c java.lang.Exception -> L78
            org.json.JSONArray r3 = r3.getJSONArray(r0)     // Catch: java.lang.Throwable -> L6c java.lang.Exception -> L78
            if (r6 != 0) goto L57
            goto L73
        L57:
            if (r3 != 0) goto L5a
            goto L73
        L5a:
            java.util.HashSet r3 = com.facebook.internal.Utility.Wwwwwwwwwwwwwwwwwwwwww(r3)     // Catch: java.lang.Throwable -> L6c java.lang.Exception -> L78
            if (r3 != 0) goto L61
            goto L73
        L61:
            java.lang.String r7 = "_MTSDK_Default_"
            boolean r7 = r6.equals(r7)     // Catch: java.lang.Throwable -> L6c java.lang.Exception -> L78
            if (r7 == 0) goto L6e
            com.facebook.appevents.integrity.SensitiveParamsManager.f6410Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = r3     // Catch: java.lang.Throwable -> L6c java.lang.Exception -> L78
            goto L73
        L6c:
            r0 = move-exception
            goto L79
        L6e:
            java.util.Map<java.lang.String, java.util.HashSet<java.lang.String>> r7 = com.facebook.appevents.integrity.SensitiveParamsManager.f6409Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L6c java.lang.Exception -> L78
            r7.put(r6, r3)     // Catch: java.lang.Throwable -> L6c java.lang.Exception -> L78
        L73:
            if (r5 < r4) goto L76
            goto L78
        L76:
            r3 = r5
            goto L3a
        L78:
            return
        L79:
            com.facebook.internal.instrument.crashshield.CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r0, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.integrity.SensitiveParamsManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww():void");
    }
}
