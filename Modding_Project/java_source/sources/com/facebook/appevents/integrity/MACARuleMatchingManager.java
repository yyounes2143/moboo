package com.facebook.appevents.integrity;

import android.os.Bundle;
import com.facebook.FacebookSdk;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.google.firebase.crashlytics.internal.metadata.UserMetadata;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u0011\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0003J\u0019\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\t\u0010\nJ)\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u00062\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0007¢\u0006\u0004\b\u0010\u0010\u0011J-\u0010\u0016\u001a\u0016\u0012\u0004\u0012\u00020\b\u0018\u00010\u0014j\n\u0012\u0004\u0012\u00020\b\u0018\u0001`\u00152\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0007¢\u0006\u0004\b\u0016\u0010\u0017J#\u0010\u0019\u001a\u00020\u000f2\b\u0010\u0018\u001a\u0004\u0018\u00010\b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0007¢\u0006\u0004\b\u0019\u0010\u001aJ\u0019\u0010\u001c\u001a\u00020\b2\b\u0010\u001b\u001a\u0004\u0018\u00010\rH\u0007¢\u0006\u0004\b\u001c\u0010\u001dJ!\u0010\u001f\u001a\u00020\u00042\b\u0010\u001b\u001a\u0004\u0018\u00010\r2\u0006\u0010\u001e\u001a\u00020\bH\u0007¢\u0006\u0004\b\u001f\u0010 J\u001f\u0010!\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\r2\u0006\u0010\u001e\u001a\u00020\bH\u0007¢\u0006\u0004\b!\u0010 J\u0017\u0010\"\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\rH\u0007¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020\u0004H\u0002¢\u0006\u0004\b$\u0010\u0003R\u0016\u0010&\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010%R\u0018\u0010(\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010'R\u001c\u0010+\u001a\b\u0012\u0004\u0012\u00020\b0)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010*¨\u0006,"}, d2 = {"Lcom/facebook/appevents/integrity/MACARuleMatchingManager;", "", "<init>", "()V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lorg/json/JSONObject;", "logic", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lorg/json/JSONObject;)Ljava/lang/String;", "variable", "values", "Landroid/os/Bundle;", "data", "", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Lorg/json/JSONObject;Landroid/os/Bundle;)Z", "Lorg/json/JSONArray;", "jsonArray", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lorg/json/JSONArray;)Ljava/util/ArrayList;", "ruleString", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Landroid/os/Bundle;)Z", "params", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/os/Bundle;)Ljava/lang/String;", "event", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/os/Bundle;Ljava/lang/String;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/os/Bundle;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Z", "enabled", "Lorg/json/JSONArray;", "MACARules", "", "[Ljava/lang/String;", UserMetadata.KEYDATA_FILENAME, "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class MACARuleMatchingManager {
    @NotNull
    public static final MACARuleMatchingManager INSTANCE = new MACARuleMatchingManager();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static String[] f6401Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = {"event", "_locale", "_appVersion", "_deviceOS", "_platform", "_deviceModel", "_nativeAppID", "_nativeAppShortVersion", "_timezone", "_carrier", "_deviceOSTypeName", "_deviceOSVersion", "_remainingDiskGB"};
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static JSONArray f6402Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static boolean f6403Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* JADX WARN: Removed duplicated region for block: B:117:0x019d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:118:0x019e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:127:0x01c3 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:128:0x01c4 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:134:0x01d9 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:135:0x01da A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:141:0x01f5 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:142:0x01f6 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0224 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:154:0x0225 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0232 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:160:0x0233 A[Catch: all -> 0x0042, TryCatch #0 {all -> 0x0042, blocks: (B:5:0x000a, B:8:0x0011, B:13:0x0035, B:12:0x002d, B:23:0x0059, B:26:0x0061, B:30:0x006e, B:33:0x0078, B:35:0x007e, B:37:0x0086, B:39:0x008f, B:40:0x0094, B:41:0x0095, B:42:0x009a, B:43:0x009b, B:46:0x00a5, B:50:0x00b1, B:160:0x0233, B:163:0x023a, B:165:0x0241, B:167:0x024b, B:169:0x0257, B:172:0x0262, B:173:0x0267, B:174:0x0268, B:175:0x026d, B:53:0x00bb, B:56:0x00c5, B:58:0x00cb, B:60:0x00d3, B:62:0x00dc, B:63:0x00e1, B:64:0x00e2, B:65:0x00e7, B:66:0x00e8, B:182:0x027c, B:185:0x0283, B:187:0x028a, B:189:0x0294, B:191:0x02a0, B:194:0x02ab, B:195:0x02b0, B:196:0x02b1, B:197:0x02b6, B:69:0x00f2, B:72:0x00fc, B:74:0x0102, B:76:0x010a, B:78:0x0113, B:79:0x0118, B:80:0x0119, B:81:0x011e, B:82:0x011f, B:132:0x01cf, B:85:0x0129, B:125:0x01b3, B:88:0x0133, B:115:0x018d, B:91:0x013d, B:94:0x0147, B:151:0x0214, B:97:0x0151, B:100:0x015b, B:244:0x034e, B:103:0x0165, B:139:0x01e5, B:106:0x016f, B:109:0x0179, B:146:0x0201, B:112:0x0183, B:119:0x019f, B:122:0x01a9, B:129:0x01c5, B:136:0x01db, B:143:0x01f7, B:148:0x020a, B:155:0x0226, B:177:0x026f, B:199:0x02b8, B:202:0x02c2, B:204:0x02c8, B:206:0x02d0, B:210:0x02dc, B:211:0x02e1, B:212:0x02e2, B:213:0x02e7, B:214:0x02e8, B:217:0x02f2, B:219:0x02fb, B:237:0x0339, B:222:0x0304, B:225:0x030d, B:227:0x031b, B:230:0x0324, B:232:0x032d, B:239:0x0342, B:246:0x0357, B:249:0x0360, B:251:0x0366, B:253:0x036e, B:257:0x037a, B:258:0x037f, B:259:0x0380, B:260:0x0385, B:19:0x0049), top: B:263:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:187:0x028a A[Catch: all -> 0x0042, TryCatch #0 {all -> 0x0042, blocks: (B:5:0x000a, B:8:0x0011, B:13:0x0035, B:12:0x002d, B:23:0x0059, B:26:0x0061, B:30:0x006e, B:33:0x0078, B:35:0x007e, B:37:0x0086, B:39:0x008f, B:40:0x0094, B:41:0x0095, B:42:0x009a, B:43:0x009b, B:46:0x00a5, B:50:0x00b1, B:160:0x0233, B:163:0x023a, B:165:0x0241, B:167:0x024b, B:169:0x0257, B:172:0x0262, B:173:0x0267, B:174:0x0268, B:175:0x026d, B:53:0x00bb, B:56:0x00c5, B:58:0x00cb, B:60:0x00d3, B:62:0x00dc, B:63:0x00e1, B:64:0x00e2, B:65:0x00e7, B:66:0x00e8, B:182:0x027c, B:185:0x0283, B:187:0x028a, B:189:0x0294, B:191:0x02a0, B:194:0x02ab, B:195:0x02b0, B:196:0x02b1, B:197:0x02b6, B:69:0x00f2, B:72:0x00fc, B:74:0x0102, B:76:0x010a, B:78:0x0113, B:79:0x0118, B:80:0x0119, B:81:0x011e, B:82:0x011f, B:132:0x01cf, B:85:0x0129, B:125:0x01b3, B:88:0x0133, B:115:0x018d, B:91:0x013d, B:94:0x0147, B:151:0x0214, B:97:0x0151, B:100:0x015b, B:244:0x034e, B:103:0x0165, B:139:0x01e5, B:106:0x016f, B:109:0x0179, B:146:0x0201, B:112:0x0183, B:119:0x019f, B:122:0x01a9, B:129:0x01c5, B:136:0x01db, B:143:0x01f7, B:148:0x020a, B:155:0x0226, B:177:0x026f, B:199:0x02b8, B:202:0x02c2, B:204:0x02c8, B:206:0x02d0, B:210:0x02dc, B:211:0x02e1, B:212:0x02e2, B:213:0x02e7, B:214:0x02e8, B:217:0x02f2, B:219:0x02fb, B:237:0x0339, B:222:0x0304, B:225:0x030d, B:227:0x031b, B:230:0x0324, B:232:0x032d, B:239:0x0342, B:246:0x0357, B:249:0x0360, B:251:0x0366, B:253:0x036e, B:257:0x037a, B:258:0x037f, B:259:0x0380, B:260:0x0385, B:19:0x0049), top: B:263:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:236:0x0338 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:237:0x0339 A[Catch: all -> 0x0042, TryCatch #0 {all -> 0x0042, blocks: (B:5:0x000a, B:8:0x0011, B:13:0x0035, B:12:0x002d, B:23:0x0059, B:26:0x0061, B:30:0x006e, B:33:0x0078, B:35:0x007e, B:37:0x0086, B:39:0x008f, B:40:0x0094, B:41:0x0095, B:42:0x009a, B:43:0x009b, B:46:0x00a5, B:50:0x00b1, B:160:0x0233, B:163:0x023a, B:165:0x0241, B:167:0x024b, B:169:0x0257, B:172:0x0262, B:173:0x0267, B:174:0x0268, B:175:0x026d, B:53:0x00bb, B:56:0x00c5, B:58:0x00cb, B:60:0x00d3, B:62:0x00dc, B:63:0x00e1, B:64:0x00e2, B:65:0x00e7, B:66:0x00e8, B:182:0x027c, B:185:0x0283, B:187:0x028a, B:189:0x0294, B:191:0x02a0, B:194:0x02ab, B:195:0x02b0, B:196:0x02b1, B:197:0x02b6, B:69:0x00f2, B:72:0x00fc, B:74:0x0102, B:76:0x010a, B:78:0x0113, B:79:0x0118, B:80:0x0119, B:81:0x011e, B:82:0x011f, B:132:0x01cf, B:85:0x0129, B:125:0x01b3, B:88:0x0133, B:115:0x018d, B:91:0x013d, B:94:0x0147, B:151:0x0214, B:97:0x0151, B:100:0x015b, B:244:0x034e, B:103:0x0165, B:139:0x01e5, B:106:0x016f, B:109:0x0179, B:146:0x0201, B:112:0x0183, B:119:0x019f, B:122:0x01a9, B:129:0x01c5, B:136:0x01db, B:143:0x01f7, B:148:0x020a, B:155:0x0226, B:177:0x026f, B:199:0x02b8, B:202:0x02c2, B:204:0x02c8, B:206:0x02d0, B:210:0x02dc, B:211:0x02e1, B:212:0x02e2, B:213:0x02e7, B:214:0x02e8, B:217:0x02f2, B:219:0x02fb, B:237:0x0339, B:222:0x0304, B:225:0x030d, B:227:0x031b, B:230:0x0324, B:232:0x032d, B:239:0x0342, B:246:0x0357, B:249:0x0360, B:251:0x0366, B:253:0x036e, B:257:0x037a, B:258:0x037f, B:259:0x0380, B:260:0x0385, B:19:0x0049), top: B:263:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:243:0x034d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:244:0x034e A[Catch: all -> 0x0042, TryCatch #0 {all -> 0x0042, blocks: (B:5:0x000a, B:8:0x0011, B:13:0x0035, B:12:0x002d, B:23:0x0059, B:26:0x0061, B:30:0x006e, B:33:0x0078, B:35:0x007e, B:37:0x0086, B:39:0x008f, B:40:0x0094, B:41:0x0095, B:42:0x009a, B:43:0x009b, B:46:0x00a5, B:50:0x00b1, B:160:0x0233, B:163:0x023a, B:165:0x0241, B:167:0x024b, B:169:0x0257, B:172:0x0262, B:173:0x0267, B:174:0x0268, B:175:0x026d, B:53:0x00bb, B:56:0x00c5, B:58:0x00cb, B:60:0x00d3, B:62:0x00dc, B:63:0x00e1, B:64:0x00e2, B:65:0x00e7, B:66:0x00e8, B:182:0x027c, B:185:0x0283, B:187:0x028a, B:189:0x0294, B:191:0x02a0, B:194:0x02ab, B:195:0x02b0, B:196:0x02b1, B:197:0x02b6, B:69:0x00f2, B:72:0x00fc, B:74:0x0102, B:76:0x010a, B:78:0x0113, B:79:0x0118, B:80:0x0119, B:81:0x011e, B:82:0x011f, B:132:0x01cf, B:85:0x0129, B:125:0x01b3, B:88:0x0133, B:115:0x018d, B:91:0x013d, B:94:0x0147, B:151:0x0214, B:97:0x0151, B:100:0x015b, B:244:0x034e, B:103:0x0165, B:139:0x01e5, B:106:0x016f, B:109:0x0179, B:146:0x0201, B:112:0x0183, B:119:0x019f, B:122:0x01a9, B:129:0x01c5, B:136:0x01db, B:143:0x01f7, B:148:0x020a, B:155:0x0226, B:177:0x026f, B:199:0x02b8, B:202:0x02c2, B:204:0x02c8, B:206:0x02d0, B:210:0x02dc, B:211:0x02e1, B:212:0x02e2, B:213:0x02e7, B:214:0x02e8, B:217:0x02f2, B:219:0x02fb, B:237:0x0339, B:222:0x0304, B:225:0x030d, B:227:0x031b, B:230:0x0324, B:232:0x032d, B:239:0x0342, B:246:0x0357, B:249:0x0360, B:251:0x0366, B:253:0x036e, B:257:0x037a, B:258:0x037f, B:259:0x0380, B:260:0x0385, B:19:0x0049), top: B:263:0x000a }] */
    @kotlin.jvm.JvmStatic
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwww(@org.jetbrains.annotations.NotNull java.lang.String r8, @org.jetbrains.annotations.NotNull org.json.JSONObject r9, @org.jetbrains.annotations.Nullable android.os.Bundle r10) {
        /*
            Method dump skipped, instructions count: 1040
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.integrity.MACARuleMatchingManager.Wwwwwwwwwwwwwwwwwwwwwwwww(java.lang.String, org.json.JSONObject, android.os.Bundle):boolean");
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Bundle bundle) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MACARuleMatchingManager.class)) {
            try {
                String[] strArr = f6401Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                int length = strArr.length;
                int i = 0;
                while (i < length) {
                    String str = strArr[i];
                    i++;
                    bundle.remove(str);
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, MACARuleMatchingManager.class);
            }
        }
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Bundle bundle, @NotNull String str) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MACARuleMatchingManager.class)) {
            try {
                if (f6403Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && bundle != null) {
                    try {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle, str);
                        bundle.putString("_audiencePropertyIds", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle));
                        bundle.putString("cs_maca", "1");
                        Wwwwwwwwwwwwwwwwwwwwwwwwww(bundle);
                    } catch (Exception unused) {
                    }
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, MACARuleMatchingManager.class);
            }
        }
    }

    @JvmStatic
    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str, @Nullable Bundle bundle) {
        int length;
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MACARuleMatchingManager.class) && str != null && bundle != null) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject);
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                    return false;
                }
                Object obj = jSONObject.get(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                int hashCode = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.hashCode();
                if (hashCode != 3555) {
                    if (hashCode != 96727) {
                        if (hashCode == 109267 && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.equals("not")) {
                            return !Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(obj.toString(), bundle);
                        }
                    } else if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.equals("and")) {
                        JSONArray jSONArray = (JSONArray) obj;
                        if (jSONArray == null) {
                            return false;
                        }
                        int length2 = jSONArray.length();
                        if (length2 > 0) {
                            int i = 0;
                            while (true) {
                                int i2 = i + 1;
                                if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONArray.get(i).toString(), bundle)) {
                                    return false;
                                }
                                if (i2 >= length2) {
                                    break;
                                }
                                i = i2;
                            }
                        }
                        return true;
                    }
                } else if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.equals("or")) {
                    JSONArray jSONArray2 = (JSONArray) obj;
                    if (jSONArray2 != null && (length = jSONArray2.length()) > 0) {
                        int i3 = 0;
                        while (true) {
                            int i4 = i3 + 1;
                            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONArray2.get(i3).toString(), bundle)) {
                                return true;
                            }
                            if (i4 >= length) {
                                break;
                            }
                            i3 = i4;
                        }
                    }
                    return false;
                }
                JSONObject jSONObject2 = (JSONObject) obj;
                if (jSONObject2 == null) {
                    return false;
                }
                return Wwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, jSONObject2, bundle);
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, MACARuleMatchingManager.class);
            }
        }
        return false;
    }

    @JvmStatic
    @Nullable
    public static final ArrayList<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable JSONArray jSONArray) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MACARuleMatchingManager.class) || jSONArray == null) {
            return null;
        }
        try {
            ArrayList<String> arrayList = new ArrayList<>();
            int length = jSONArray.length();
            if (length > 0) {
                int i = 0;
                while (true) {
                    int i2 = i + 1;
                    arrayList.add(jSONArray.get(i).toString());
                    if (i2 >= length) {
                        break;
                    }
                    i = i2;
                }
            }
            return arrayList;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, MACARuleMatchingManager.class);
            return null;
        }
    }

    @JvmStatic
    @NotNull
    public static final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Bundle bundle) {
        Integer valueOf;
        String optString;
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MACARuleMatchingManager.class)) {
            return null;
        }
        try {
            JSONArray jSONArray = f6402Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (jSONArray != null) {
                if (jSONArray == null) {
                    valueOf = null;
                } else {
                    valueOf = Integer.valueOf(jSONArray.length());
                }
                if (valueOf != null && valueOf.intValue() == 0) {
                    return "[]";
                }
                JSONArray jSONArray2 = f6402Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (jSONArray2 != null) {
                    ArrayList arrayList = new ArrayList();
                    int length = jSONArray2.length();
                    if (length > 0) {
                        int i = 0;
                        while (true) {
                            int i2 = i + 1;
                            String optString2 = jSONArray2.optString(i);
                            if (optString2 != null) {
                                JSONObject jSONObject = new JSONObject(optString2);
                                long optLong = jSONObject.optLong("id");
                                if (optLong != 0 && (optString = jSONObject.optString("rule")) != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(optString, bundle)) {
                                    arrayList.add(Long.valueOf(optLong));
                                }
                            }
                            if (i2 >= length) {
                                break;
                            }
                            i = i2;
                        }
                    }
                    return new JSONArray((Collection) arrayList).toString();
                }
                throw new NullPointerException("null cannot be cast to non-null type org.json.JSONArray");
            }
            return "[]";
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, MACARuleMatchingManager.class);
            return null;
        }
    }

    @JvmStatic
    @Nullable
    public static final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull JSONObject jSONObject) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MACARuleMatchingManager.class)) {
            return null;
        }
        try {
            Iterator<String> keys = jSONObject.keys();
            if (!keys.hasNext()) {
                return null;
            }
            return keys.next();
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, MACARuleMatchingManager.class);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x003a A[Catch: all -> 0x00ab, TryCatch #0 {all -> 0x00ab, blocks: (B:5:0x000b, B:12:0x002a, B:18:0x0041, B:21:0x0054, B:24:0x006a, B:28:0x0080, B:15:0x003a, B:9:0x0023), top: B:33:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x007f  */
    @kotlin.jvm.JvmStatic
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@org.jetbrains.annotations.NotNull android.os.Bundle r6, @org.jetbrains.annotations.NotNull java.lang.String r7) {
        /*
            java.lang.String r0 = "ANDROID"
            java.lang.Class<com.facebook.appevents.integrity.MACARuleMatchingManager> r1 = com.facebook.appevents.integrity.MACARuleMatchingManager.class
            boolean r2 = com.facebook.internal.instrument.crashshield.CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r1)
            if (r2 == 0) goto Lb
            return
        Lb:
            java.lang.String r2 = "event"
            r6.putString(r2, r7)     // Catch: java.lang.Throwable -> Lab
            java.lang.String r7 = "_locale"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lab
            r2.<init>()     // Catch: java.lang.Throwable -> Lab
            com.facebook.internal.Utility r3 = com.facebook.internal.Utility.INSTANCE     // Catch: java.lang.Throwable -> Lab
            java.util.Locale r4 = r3.Kkkkkkkkkkkkkkkkkkkkkkk()     // Catch: java.lang.Throwable -> Lab
            java.lang.String r5 = ""
            if (r4 != 0) goto L23
        L21:
            r4 = r5
            goto L2a
        L23:
            java.lang.String r4 = r4.getLanguage()     // Catch: java.lang.Throwable -> Lab
            if (r4 != 0) goto L2a
            goto L21
        L2a:
            r2.append(r4)     // Catch: java.lang.Throwable -> Lab
            r4 = 95
            r2.append(r4)     // Catch: java.lang.Throwable -> Lab
            java.util.Locale r4 = r3.Kkkkkkkkkkkkkkkkkkkkkkk()     // Catch: java.lang.Throwable -> Lab
            if (r4 != 0) goto L3a
        L38:
            r4 = r5
            goto L41
        L3a:
            java.lang.String r4 = r4.getCountry()     // Catch: java.lang.Throwable -> Lab
            if (r4 != 0) goto L41
            goto L38
        L41:
            r2.append(r4)     // Catch: java.lang.Throwable -> Lab
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> Lab
            r6.putString(r7, r2)     // Catch: java.lang.Throwable -> Lab
            java.lang.String r7 = "_appVersion"
            java.lang.String r2 = r3.Kkkkkkkkkkkkkkk()     // Catch: java.lang.Throwable -> Lab
            if (r2 != 0) goto L54
            r2 = r5
        L54:
            r6.putString(r7, r2)     // Catch: java.lang.Throwable -> Lab
            java.lang.String r7 = "_deviceOS"
            r6.putString(r7, r0)     // Catch: java.lang.Throwable -> Lab
            java.lang.String r7 = "_platform"
            java.lang.String r2 = "mobile"
            r6.putString(r7, r2)     // Catch: java.lang.Throwable -> Lab
            java.lang.String r7 = "_deviceModel"
            java.lang.String r2 = android.os.Build.MODEL     // Catch: java.lang.Throwable -> Lab
            if (r2 != 0) goto L6a
            r2 = r5
        L6a:
            r6.putString(r7, r2)     // Catch: java.lang.Throwable -> Lab
            java.lang.String r7 = "_nativeAppID"
            java.lang.String r2 = com.facebook.FacebookSdk.Wwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> Lab
            r6.putString(r7, r2)     // Catch: java.lang.Throwable -> Lab
            java.lang.String r7 = "_nativeAppShortVersion"
            java.lang.String r2 = r3.Kkkkkkkkkkkkkkk()     // Catch: java.lang.Throwable -> Lab
            if (r2 != 0) goto L7f
            goto L80
        L7f:
            r5 = r2
        L80:
            r6.putString(r7, r5)     // Catch: java.lang.Throwable -> Lab
            java.lang.String r7 = "_timezone"
            java.lang.String r2 = r3.Wwww()     // Catch: java.lang.Throwable -> Lab
            r6.putString(r7, r2)     // Catch: java.lang.Throwable -> Lab
            java.lang.String r7 = "_carrier"
            java.lang.String r2 = r3.Wwwwwwwww()     // Catch: java.lang.Throwable -> Lab
            r6.putString(r7, r2)     // Catch: java.lang.Throwable -> Lab
            java.lang.String r7 = "_deviceOSTypeName"
            r6.putString(r7, r0)     // Catch: java.lang.Throwable -> Lab
            java.lang.String r7 = "_deviceOSVersion"
            java.lang.String r0 = android.os.Build.VERSION.RELEASE     // Catch: java.lang.Throwable -> Lab
            r6.putString(r7, r0)     // Catch: java.lang.Throwable -> Lab
            java.lang.String r7 = "_remainingDiskGB"
            long r2 = r3.Wwwwwwwwwww()     // Catch: java.lang.Throwable -> Lab
            r6.putLong(r7, r2)     // Catch: java.lang.Throwable -> Lab
            return
        Lab:
            r6 = move-exception
            com.facebook.internal.instrument.crashshield.CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r6, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.integrity.MACARuleMatchingManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(android.os.Bundle, java.lang.String):void");
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MACARuleMatchingManager.class)) {
            try {
                INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (f6402Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
                    f6403Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, MACARuleMatchingManager.class);
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                FetchedAppSettingsManager fetchedAppSettingsManager = FetchedAppSettingsManager.INSTANCE;
                FetchedAppSettings Wwwwwwwwwwwwwwwwww2 = FetchedAppSettingsManager.Wwwwwwwwwwwwwwwwww(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwww(), false);
                if (Wwwwwwwwwwwwwwwwww2 == null) {
                    return;
                }
                f6402Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }
}
