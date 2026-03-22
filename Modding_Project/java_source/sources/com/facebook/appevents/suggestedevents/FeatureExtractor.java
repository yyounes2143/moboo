package com.facebook.appevents.suggestedevents;

import android.util.Patterns;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.File;
import java.io.FileInputStream;
import java.util.Map;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmStatic;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u0011\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010$\n\u0002\b\t\bÁ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0007¢\u0006\u0004\b\n\u0010\u000bJ'\u0010\u0010\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\fH\u0007¢\u0006\u0004\b\u0010\u0010\u0011J!\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\fH\u0007¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J7\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\f2\u0006\u0010\u001d\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\fH\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ/\u0010$\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\f2\u0006\u0010!\u001a\u00020\f2\u0006\u0010\"\u001a\u00020\f2\u0006\u0010#\u001a\u00020\fH\u0002¢\u0006\u0004\b$\u0010%J\u001f\u0010'\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\f2\u0006\u0010#\u001a\u00020\fH\u0002¢\u0006\u0004\b'\u0010(J+\u0010,\u001a\u00020\u00042\f\u0010*\u001a\b\u0012\u0004\u0012\u00020\f0)2\f\u0010+\u001a\b\u0012\u0004\u0012\u00020\f0)H\u0002¢\u0006\u0004\b,\u0010-J\u001f\u0010.\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u001aH\u0002¢\u0006\u0004\b.\u0010/J\u001f\u00102\u001a\u00020\t2\u0006\u00100\u001a\u00020\u00142\u0006\u00101\u001a\u00020\u0014H\u0002¢\u0006\u0004\b2\u00103J\u0017\u00104\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0012H\u0002¢\u0006\u0004\b4\u00105J/\u0010;\u001a\u00020\t2\u0006\u00106\u001a\u00020\u00122\n\u00109\u001a\u000607j\u0002`82\n\u0010:\u001a\u000607j\u0002`8H\u0002¢\u0006\u0004\b;\u0010<J\u0019\u0010=\u001a\u0004\u0018\u00010\u00122\u0006\u00106\u001a\u00020\u0012H\u0002¢\u0006\u0004\b=\u0010>R\"\u0010A\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f0?8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0015\u0010@R\"\u0010B\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f0?8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b=\u0010@R\"\u0010C\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f0?8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0010\u0010@R\u0016\u0010E\u001a\u00020\u00128\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\n\u0010DR\u0016\u0010G\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u0010F¨\u0006H"}, d2 = {"Lcom/facebook/appevents/suggestedevents/FeatureExtractor;", "", "<init>", "()V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "Ljava/io/File;", "file", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/io/File;)V", "", "buttonText", "activityName", "appName", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "Lorg/json/JSONObject;", "viewHierarchy", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lorg/json/JSONObject;Ljava/lang/String;)[F", "node", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Lorg/json/JSONObject;)[F", "Lorg/json/JSONArray;", "siblings", "screenName", "formFieldsJSON", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lorg/json/JSONObject;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[F", "language", "event", "textType", "matchText", "Wwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z", "pattern", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;)Z", "", "indicators", "values", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "([Ljava/lang/String;[Ljava/lang/String;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Lorg/json/JSONObject;Lorg/json/JSONArray;)Z", "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Wwwwwwwwwwwwwwwwwwwwww", "([F[F)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lorg/json/JSONObject;)Z", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "textSB", "hintSB", "Wwwwwwwwwwwwwwwwwwwww", "(Lorg/json/JSONObject;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lorg/json/JSONObject;)Lorg/json/JSONObject;", "", "Ljava/util/Map;", "languageInfo", "eventInfo", "textTypeInfo", "Lorg/json/JSONObject;", "rules", "Z", "initialized", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class FeatureExtractor {
    @NotNull
    public static final FeatureExtractor INSTANCE = new FeatureExtractor();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static boolean f6501Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static JSONObject f6502Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static Map<String, String> f6503Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static Map<String, String> f6504Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static Map<String, String> f6505Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    @JvmStatic
    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FeatureExtractor.class)) {
            return false;
        }
        try {
            return f6501Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, FeatureExtractor.class);
            return false;
        }
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable File file) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FeatureExtractor.class)) {
            try {
                try {
                    f6502Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new JSONObject();
                    FileInputStream fileInputStream = new FileInputStream(file);
                    byte[] bArr = new byte[fileInputStream.available()];
                    fileInputStream.read(bArr);
                    fileInputStream.close();
                    f6502Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new JSONObject(new String(bArr, Charsets.UTF_8));
                    f6505Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = MapsKt.mapOf(TuplesKt.to("ENGLISH", "1"), TuplesKt.to("GERMAN", "2"), TuplesKt.to("SPANISH", "3"), TuplesKt.to("JAPANESE", "4"));
                    f6504Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = MapsKt.mapOf(TuplesKt.to("VIEW_CONTENT", "0"), TuplesKt.to("SEARCH", "1"), TuplesKt.to("ADD_TO_CART", "2"), TuplesKt.to("ADD_TO_WISHLIST", "3"), TuplesKt.to("INITIATE_CHECKOUT", "4"), TuplesKt.to("ADD_PAYMENT_INFO", CampaignEx.CLICKMODE_ON), TuplesKt.to("PURCHASE", "6"), TuplesKt.to("LEAD", "7"), TuplesKt.to("COMPLETE_REGISTRATION", "8"));
                    f6503Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = MapsKt.mapOf(TuplesKt.to("BUTTON_TEXT", "1"), TuplesKt.to("PAGE_TITLE", "2"), TuplesKt.to("RESOLVED_DOCUMENT_LINK", "3"), TuplesKt.to("BUTTON_ID", "4"));
                    f6501Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
                } catch (Exception unused) {
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, FeatureExtractor.class);
            }
        }
    }

    @JvmStatic
    @NotNull
    public static final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull String str2, @NotNull String str3) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FeatureExtractor.class)) {
            return null;
        }
        try {
            String str4 = str3 + " | " + str2 + ", " + str;
            if (str4 != null) {
                return str4.toLowerCase();
            }
            throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, FeatureExtractor.class);
            return null;
        }
    }

    @JvmStatic
    @Nullable
    public static final float[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull JSONObject jSONObject, @NotNull String str) {
        String lowerCase;
        JSONObject jSONObject2;
        String optString;
        JSONArray jSONArray;
        FeatureExtractor featureExtractor;
        JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FeatureExtractor.class)) {
            return null;
        }
        try {
            if (!f6501Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                return null;
            }
            float[] fArr = new float[30];
            for (int i = 0; i < 30; i++) {
                fArr[i] = 0.0f;
            }
            try {
                lowerCase = str.toLowerCase();
                jSONObject2 = new JSONObject(jSONObject.optJSONObject(MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW).toString());
                optString = jSONObject.optString("screenname");
                jSONArray = new JSONArray();
                featureExtractor = INSTANCE;
                featureExtractor.Wwwwwwwwwwwwwwwwwwwwwwwww(jSONObject2, jSONArray);
                featureExtractor.Wwwwwwwwwwwwwwwwwwwwww(fArr, featureExtractor.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject2));
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = featureExtractor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject2);
            } catch (JSONException unused) {
            }
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                return null;
            }
            featureExtractor.Wwwwwwwwwwwwwwwwwwwwww(fArr, featureExtractor.Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, jSONArray, optString, jSONObject2.toString(), lowerCase));
            return fArr;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, FeatureExtractor.class);
            return null;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwww(JSONObject jSONObject, StringBuilder sb, StringBuilder sb2) {
        int length;
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                String lowerCase = jSONObject.optString("text", "").toLowerCase();
                String lowerCase2 = jSONObject.optString("hint", "").toLowerCase();
                if (lowerCase.length() > 0) {
                    sb.append(lowerCase);
                    sb.append(" ");
                }
                if (lowerCase2.length() > 0) {
                    sb2.append(lowerCase2);
                    sb2.append(" ");
                }
                JSONArray optJSONArray = jSONObject.optJSONArray("childviews");
                if (optJSONArray != null && (length = optJSONArray.length()) > 0) {
                    int i = 0;
                    while (true) {
                        int i2 = i + 1;
                        try {
                            Wwwwwwwwwwwwwwwwwwwww(optJSONArray.getJSONObject(i), sb, sb2);
                        } catch (JSONException unused) {
                        }
                        if (i2 < length) {
                            i = i2;
                        } else {
                            return;
                        }
                    }
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwww(float[] fArr, float[] fArr2) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                int length = fArr.length - 1;
                if (length >= 0) {
                    int i = 0;
                    while (true) {
                        int i2 = i + 1;
                        fArr[i] = fArr[i] + fArr2[i];
                        if (i2 <= length) {
                            i = i2;
                        } else {
                            return;
                        }
                    }
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0050 A[Catch: all -> 0x0062, TryCatch #0 {all -> 0x0062, blocks: (B:5:0x0008, B:7:0x000d, B:31:0x005d, B:23:0x0043, B:26:0x004c, B:28:0x0050, B:35:0x0064, B:15:0x0029, B:18:0x0032, B:20:0x0036, B:36:0x0065, B:10:0x0017, B:12:0x001b, B:37:0x0066, B:38:0x0067), top: B:41:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x005c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x005d A[Catch: all -> 0x0062, TryCatch #0 {all -> 0x0062, blocks: (B:5:0x0008, B:7:0x000d, B:31:0x005d, B:23:0x0043, B:26:0x004c, B:28:0x0050, B:35:0x0064, B:15:0x0029, B:18:0x0032, B:20:0x0036, B:36:0x0065, B:10:0x0017, B:12:0x001b, B:37:0x0066, B:38:0x0067), top: B:41:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0064 A[Catch: all -> 0x0062, TryCatch #0 {all -> 0x0062, blocks: (B:5:0x0008, B:7:0x000d, B:31:0x005d, B:23:0x0043, B:26:0x004c, B:28:0x0050, B:35:0x0064, B:15:0x0029, B:18:0x0032, B:20:0x0036, B:36:0x0065, B:10:0x0017, B:12:0x001b, B:37:0x0066, B:38:0x0067), top: B:41:0x0008 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean Wwwwwwwwwwwwwwwwwwwwwww(java.lang.String r5, java.lang.String r6, java.lang.String r7, java.lang.String r8) {
        /*
            r4 = this;
            boolean r0 = com.facebook.internal.instrument.crashshield.CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r4)
            r1 = 0
            if (r0 == 0) goto L8
            return r1
        L8:
            org.json.JSONObject r0 = com.facebook.appevents.suggestedevents.FeatureExtractor.f6502Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L62
            r2 = 0
            if (r0 == 0) goto L67
            java.lang.String r3 = "rulesForLanguage"
            org.json.JSONObject r0 = r0.optJSONObject(r3)     // Catch: java.lang.Throwable -> L62
            if (r0 != 0) goto L17
            r5 = r2
            goto L25
        L17:
            java.util.Map<java.lang.String, java.lang.String> r3 = com.facebook.appevents.suggestedevents.FeatureExtractor.f6505Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L62
            if (r3 == 0) goto L66
            java.lang.Object r5 = r3.get(r5)     // Catch: java.lang.Throwable -> L62
            java.lang.String r5 = (java.lang.String) r5     // Catch: java.lang.Throwable -> L62
            org.json.JSONObject r5 = r0.optJSONObject(r5)     // Catch: java.lang.Throwable -> L62
        L25:
            if (r5 != 0) goto L29
        L27:
            r5 = r2
            goto L40
        L29:
            java.lang.String r0 = "rulesForEvent"
            org.json.JSONObject r5 = r5.optJSONObject(r0)     // Catch: java.lang.Throwable -> L62
            if (r5 != 0) goto L32
            goto L27
        L32:
            java.util.Map<java.lang.String, java.lang.String> r0 = com.facebook.appevents.suggestedevents.FeatureExtractor.f6504Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L62
            if (r0 == 0) goto L65
            java.lang.Object r6 = r0.get(r6)     // Catch: java.lang.Throwable -> L62
            java.lang.String r6 = (java.lang.String) r6     // Catch: java.lang.Throwable -> L62
            org.json.JSONObject r5 = r5.optJSONObject(r6)     // Catch: java.lang.Throwable -> L62
        L40:
            if (r5 != 0) goto L43
            goto L5a
        L43:
            java.lang.String r6 = "positiveRules"
            org.json.JSONObject r5 = r5.optJSONObject(r6)     // Catch: java.lang.Throwable -> L62
            if (r5 != 0) goto L4c
            goto L5a
        L4c:
            java.util.Map<java.lang.String, java.lang.String> r6 = com.facebook.appevents.suggestedevents.FeatureExtractor.f6503Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L62
            if (r6 == 0) goto L64
            java.lang.Object r6 = r6.get(r7)     // Catch: java.lang.Throwable -> L62
            java.lang.String r6 = (java.lang.String) r6     // Catch: java.lang.Throwable -> L62
            java.lang.String r2 = r5.optString(r6)     // Catch: java.lang.Throwable -> L62
        L5a:
            if (r2 != 0) goto L5d
            return r1
        L5d:
            boolean r5 = r4.Wwwwwwwwwwwwwwwwwwwwwwww(r2, r8)     // Catch: java.lang.Throwable -> L62
            return r5
        L62:
            r5 = move-exception
            goto L68
        L64:
            throw r2     // Catch: java.lang.Throwable -> L62
        L65:
            throw r2     // Catch: java.lang.Throwable -> L62
        L66:
            throw r2     // Catch: java.lang.Throwable -> L62
        L67:
            throw r2     // Catch: java.lang.Throwable -> L62
        L68:
            com.facebook.internal.instrument.crashshield.CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r5, r4)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.suggestedevents.FeatureExtractor.Wwwwwwwwwwwwwwwwwwwwwww(java.lang.String, java.lang.String, java.lang.String, java.lang.String):boolean");
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwww(String str, String str2) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return false;
        }
        try {
            return Pattern.compile(str).matcher(str2).find();
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return false;
        }
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwww(JSONObject jSONObject, JSONArray jSONArray) {
        boolean z;
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return false;
        }
        try {
            if (jSONObject.optBoolean("is_interacted")) {
                return true;
            }
            JSONArray optJSONArray = jSONObject.optJSONArray("childviews");
            int length = optJSONArray.length();
            if (length > 0) {
                int i = 0;
                while (true) {
                    int i2 = i + 1;
                    if (optJSONArray.getJSONObject(i).optBoolean("is_interacted")) {
                        z = true;
                        break;
                    } else if (i2 >= length) {
                        break;
                    } else {
                        i = i2;
                    }
                }
            }
            z = false;
            boolean z2 = z;
            JSONArray jSONArray2 = new JSONArray();
            if (z) {
                int length2 = optJSONArray.length();
                if (length2 > 0) {
                    int i3 = 0;
                    while (true) {
                        int i4 = i3 + 1;
                        jSONArray.put(optJSONArray.getJSONObject(i3));
                        if (i4 >= length2) {
                            break;
                        }
                        i3 = i4;
                    }
                }
                return z2;
            }
            int length3 = optJSONArray.length();
            if (length3 > 0) {
                int i5 = 0;
                while (true) {
                    int i6 = i5 + 1;
                    JSONObject jSONObject2 = optJSONArray.getJSONObject(i5);
                    if (Wwwwwwwwwwwwwwwwwwwwwwwww(jSONObject2, jSONArray)) {
                        jSONArray2.put(jSONObject2);
                        z2 = true;
                    }
                    if (i6 >= length3) {
                        break;
                    }
                    i5 = i6;
                }
            }
            jSONObject.put("childviews", jSONArray2);
            return z2;
        } catch (JSONException unused) {
            return false;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return false;
        }
    }

    public final float[] Wwwwwwwwwwwwwwwwwwwwwwwwww(JSONObject jSONObject) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return null;
        }
        try {
            float[] fArr = new float[30];
            int i = 0;
            for (int i2 = 0; i2 < 30; i2++) {
                fArr[i2] = 0.0f;
            }
            String lowerCase = jSONObject.optString("text").toLowerCase();
            String lowerCase2 = jSONObject.optString("hint").toLowerCase();
            String lowerCase3 = jSONObject.optString("classname").toLowerCase();
            int optInt = jSONObject.optInt("inputtype", -1);
            String[] strArr = {lowerCase, lowerCase2};
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww(new String[]{"$", "amount", "price", "total"}, strArr)) {
                fArr[0] = fArr[0] + 1.0f;
            }
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww(new String[]{"password", "pwd"}, strArr)) {
                fArr[1] = fArr[1] + 1.0f;
            }
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww(new String[]{"tel", "phone"}, strArr)) {
                fArr[2] = fArr[2] + 1.0f;
            }
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww(new String[]{"search"}, strArr)) {
                fArr[4] = fArr[4] + 1.0f;
            }
            if (optInt >= 0) {
                fArr[5] = fArr[5] + 1.0f;
            }
            if (optInt == 3 || optInt == 2) {
                fArr[6] = fArr[6] + 1.0f;
            }
            if (optInt == 32 || Patterns.EMAIL_ADDRESS.matcher(lowerCase).matches()) {
                fArr[7] = fArr[7] + 1.0f;
            }
            if (StringsKt.contains$default((CharSequence) lowerCase3, (CharSequence) "checkbox", false, 2, (Object) null)) {
                fArr[8] = fArr[8] + 1.0f;
            }
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww(new String[]{CampaignEx.JSON_NATIVE_VIDEO_COMPLETE, "confirm", "done", "submit"}, new String[]{lowerCase})) {
                fArr[10] = fArr[10] + 1.0f;
            }
            if (StringsKt.contains$default((CharSequence) lowerCase3, (CharSequence) "radio", false, 2, (Object) null) && StringsKt.contains$default((CharSequence) lowerCase3, (CharSequence) "button", false, 2, (Object) null)) {
                fArr[12] = fArr[12] + 1.0f;
            }
            try {
                JSONArray optJSONArray = jSONObject.optJSONArray("childviews");
                int length = optJSONArray.length();
                if (length > 0) {
                    while (true) {
                        int i3 = i + 1;
                        Wwwwwwwwwwwwwwwwwwwwww(fArr, Wwwwwwwwwwwwwwwwwwwwwwwwww(optJSONArray.getJSONObject(i)));
                        if (i3 >= length) {
                            break;
                        }
                        i = i3;
                    }
                }
            } catch (JSONException unused) {
            }
            return fArr;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return null;
        }
    }

    public final float[] Wwwwwwwwwwwwwwwwwwwwwwwwwww(JSONObject jSONObject, JSONArray jSONArray, String str, String str2, String str3) {
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        float f7;
        float f8;
        float f9;
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return null;
        }
        try {
            float[] fArr = new float[30];
            for (int i = 0; i < 30; i++) {
                fArr[i] = 0.0f;
            }
            int length = jSONArray.length();
            if (length > 1) {
                f = length - 1.0f;
            } else {
                f = 0.0f;
            }
            fArr[3] = f;
            try {
                int length2 = jSONArray.length();
                if (length2 > 0) {
                    int i2 = 0;
                    while (true) {
                        int i3 = i2 + 1;
                        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONArray.getJSONObject(i2))) {
                            fArr[9] = fArr[9] + 1.0f;
                        }
                        if (i3 >= length2) {
                            break;
                        }
                        i2 = i3;
                    }
                }
            } catch (JSONException unused) {
            }
            fArr[13] = -1.0f;
            fArr[14] = -1.0f;
            String str4 = str + '|' + str3;
            StringBuilder sb = new StringBuilder();
            StringBuilder sb2 = new StringBuilder();
            Wwwwwwwwwwwwwwwwwwwww(jSONObject, sb2, sb);
            String sb3 = sb.toString();
            String sb4 = sb2.toString();
            if (Wwwwwwwwwwwwwwwwwwwwwww("ENGLISH", "COMPLETE_REGISTRATION", "BUTTON_TEXT", sb4)) {
                f2 = 1.0f;
            } else {
                f2 = 0.0f;
            }
            fArr[15] = f2;
            if (Wwwwwwwwwwwwwwwwwwwwwww("ENGLISH", "COMPLETE_REGISTRATION", "PAGE_TITLE", str4)) {
                f3 = 1.0f;
            } else {
                f3 = 0.0f;
            }
            fArr[16] = f3;
            if (Wwwwwwwwwwwwwwwwwwwwwww("ENGLISH", "COMPLETE_REGISTRATION", "BUTTON_ID", sb3)) {
                f4 = 1.0f;
            } else {
                f4 = 0.0f;
            }
            fArr[17] = f4;
            if (StringsKt.contains$default((CharSequence) str2, (CharSequence) "password", false, 2, (Object) null)) {
                f5 = 1.0f;
            } else {
                f5 = 0.0f;
            }
            fArr[18] = f5;
            if (Wwwwwwwwwwwwwwwwwwwwwwww("(?i)(confirm.*password)|(password.*(confirmation|confirm)|confirmation)", str2)) {
                f6 = 1.0f;
            } else {
                f6 = 0.0f;
            }
            fArr[19] = f6;
            if (Wwwwwwwwwwwwwwwwwwwwwwww("(?i)(sign in)|login|signIn", str2)) {
                f7 = 1.0f;
            } else {
                f7 = 0.0f;
            }
            fArr[20] = f7;
            if (Wwwwwwwwwwwwwwwwwwwwwwww("(?i)(sign.*(up|now)|registration|register|(create|apply).*(profile|account)|open.*account|account.*(open|creation|application)|enroll|join.*now)", str2)) {
                f8 = 1.0f;
            } else {
                f8 = 0.0f;
            }
            fArr[21] = f8;
            if (Wwwwwwwwwwwwwwwwwwwwwww("ENGLISH", "PURCHASE", "BUTTON_TEXT", sb4)) {
                f9 = 1.0f;
            } else {
                f9 = 0.0f;
            }
            fArr[22] = f9;
            if (Wwwwwwwwwwwwwwwwwwwwwww("ENGLISH", "PURCHASE", "PAGE_TITLE", str4)) {
                f10 = 1.0f;
            } else {
                f10 = 0.0f;
            }
            fArr[24] = f10;
            if (Wwwwwwwwwwwwwwwwwwwwwwww("(?i)add to(\\s|\\Z)|update(\\s|\\Z)|cart", sb4)) {
                f11 = 1.0f;
            } else {
                f11 = 0.0f;
            }
            fArr[25] = f11;
            if (Wwwwwwwwwwwwwwwwwwwwwwww("(?i)add to(\\s|\\Z)|update(\\s|\\Z)|cart|shop|buy", str4)) {
                f12 = 1.0f;
            } else {
                f12 = 0.0f;
            }
            fArr[27] = f12;
            if (Wwwwwwwwwwwwwwwwwwwwwww("ENGLISH", "LEAD", "BUTTON_TEXT", sb4)) {
                f13 = 1.0f;
            } else {
                f13 = 0.0f;
            }
            fArr[28] = f13;
            if (Wwwwwwwwwwwwwwwwwwwwwww("ENGLISH", "LEAD", "PAGE_TITLE", str4)) {
                f14 = 1.0f;
            } else {
                f14 = 0.0f;
            }
            fArr[29] = f14;
            return fArr;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return null;
        }
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww(String[] strArr, String[] strArr2) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return false;
        }
        try {
            int length = strArr.length;
            int i = 0;
            while (i < length) {
                String str = strArr[i];
                i++;
                int length2 = strArr2.length;
                int i2 = 0;
                while (i2 < length2) {
                    String str2 = strArr2[i2];
                    i2++;
                    if (StringsKt.contains$default((CharSequence) str2, (CharSequence) str, false, 2, (Object) null)) {
                        return true;
                    }
                }
            }
            return false;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return false;
        }
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JSONObject jSONObject) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return false;
        }
        try {
            if (((jSONObject.optInt("classtypebitmask") & 1) << 5) <= 0) {
                return false;
            }
            return true;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return false;
        }
    }

    public final JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JSONObject jSONObject) {
        int length;
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return null;
        }
        try {
        } catch (JSONException unused) {
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
        }
        if (jSONObject.optBoolean("is_interacted")) {
            return jSONObject;
        }
        JSONArray optJSONArray = jSONObject.optJSONArray("childviews");
        if (optJSONArray != null && (length = optJSONArray.length()) > 0) {
            int i = 0;
            while (true) {
                int i2 = i + 1;
                JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(optJSONArray.getJSONObject(i));
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                }
                if (i2 >= length) {
                    break;
                }
                i = i2;
            }
        }
        return null;
    }
}
