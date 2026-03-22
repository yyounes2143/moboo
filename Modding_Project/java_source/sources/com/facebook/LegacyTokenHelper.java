package com.facebook;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.facebook.internal.Logger;
import java.util.ArrayList;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u001d\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\t\u0010\nJ\r\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\f\u0010\rJ\u001f\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u0012R\u0014\u0010\u0015\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0014¨\u0006\u0017"}, d2 = {"Lcom/facebook/LegacyTokenHelper;", "", "Landroid/content/Context;", "context", "", "cacheKey", "<init>", "(Landroid/content/Context;Ljava/lang/String;)V", "Landroid/os/Bundle;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Landroid/os/Bundle;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "key", "bundle", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Landroid/os/Bundle;)V", "Ljava/lang/String;", "Landroid/content/SharedPreferences;", "Landroid/content/SharedPreferences;", "cache", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class LegacyTokenHelper {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f6062Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = LegacyTokenHelper.class.getSimpleName();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final SharedPreferences f6063Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f6064Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\t\n\u0002\b \b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u0019\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u0019\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0010\u0010\u0011J\u0019\u0010\u0012\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0012\u0010\u000eJ\u0019\u0010\u0013\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0013\u0010\u000bJ%\u0010\u0015\u001a\u0004\u0018\u00010\f2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0014\u001a\u0004\u0018\u00010\tH\u0002¢\u0006\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0014\u0010\u0019\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0019\u0010\u0018R\u0014\u0010\u001a\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001a\u0010\u0018R\u0014\u0010\u001b\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001b\u0010\u0018R\u0014\u0010\u001c\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001c\u0010\u0018R\u0014\u0010\u001e\u001a\u00020\u001d8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0014\u0010 \u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b \u0010\u0018R\u0014\u0010!\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b!\u0010\u0018R\u0014\u0010\"\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\"\u0010\u0018R\u0014\u0010#\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b#\u0010\u0018R\u0014\u0010$\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b$\u0010\u0018R\u0014\u0010%\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b%\u0010\u0018R\u001c\u0010'\u001a\n &*\u0004\u0018\u00010\t0\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010\u0018R\u0014\u0010(\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b(\u0010\u0018R\u0014\u0010)\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b)\u0010\u0018R\u0014\u0010*\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b*\u0010\u0018R\u0014\u0010+\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b+\u0010\u0018R\u0014\u0010,\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b,\u0010\u0018R\u0014\u0010-\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b-\u0010\u0018R\u0014\u0010.\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b.\u0010\u0018R\u0014\u0010/\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b/\u0010\u0018R\u0014\u00100\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b0\u0010\u0018R\u0014\u00101\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b1\u0010\u0018R\u0014\u00102\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b2\u0010\u0018R\u0014\u00103\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b3\u0010\u0018R\u0014\u00104\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b4\u0010\u0018R\u0014\u00105\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b5\u0010\u0018R\u0014\u00106\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b6\u0010\u0018R\u0014\u00107\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b7\u0010\u0018R\u0014\u00108\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b8\u0010\u0018R\u0014\u00109\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b9\u0010\u0018R\u0014\u0010:\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b:\u0010\u0018R\u0014\u0010;\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b;\u0010\u0018R\u0014\u0010<\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b<\u0010\u0018¨\u0006="}, d2 = {"Lcom/facebook/LegacyTokenHelper$Companion;", "", "<init>", "()V", "Landroid/os/Bundle;", "bundle", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/os/Bundle;)Z", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/os/Bundle;)Ljava/lang/String;", "Ljava/util/Date;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/os/Bundle;)Ljava/util/Date;", "Lcom/facebook/AccessTokenSource;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/os/Bundle;)Lcom/facebook/AccessTokenSource;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "key", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;", "APPLICATION_ID_KEY", "Ljava/lang/String;", "DECLINED_PERMISSIONS_KEY", "DEFAULT_CACHE_KEY", "EXPIRATION_DATE_KEY", "EXPIRED_PERMISSIONS_KEY", "", "INVALID_BUNDLE_MILLISECONDS", "J", "IS_SSO_KEY", "JSON_VALUE", "JSON_VALUE_ENUM_TYPE", "JSON_VALUE_TYPE", "LAST_REFRESH_DATE_KEY", "PERMISSIONS_KEY", "kotlin.jvm.PlatformType", "TAG", "TOKEN_KEY", "TOKEN_SOURCE_KEY", "TYPE_BOOLEAN", "TYPE_BOOLEAN_ARRAY", "TYPE_BYTE", "TYPE_BYTE_ARRAY", "TYPE_CHAR", "TYPE_CHAR_ARRAY", "TYPE_DOUBLE", "TYPE_DOUBLE_ARRAY", "TYPE_ENUM", "TYPE_FLOAT", "TYPE_FLOAT_ARRAY", "TYPE_INTEGER", "TYPE_INTEGER_ARRAY", "TYPE_LONG", "TYPE_LONG_ARRAY", "TYPE_SHORT", "TYPE_SHORT_ARRAY", "TYPE_STRING", "TYPE_STRING_LIST", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Bundle bundle) {
            String string;
            if (bundle == null || (string = bundle.getString("com.facebook.TokenCachingStrategy.Token")) == null || string.length() == 0 || bundle.getLong("com.facebook.TokenCachingStrategy.ExpirationDate", 0L) == 0) {
                return false;
            }
            return true;
        }

        @JvmStatic
        @Nullable
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Bundle bundle) {
            return bundle.getString("com.facebook.TokenCachingStrategy.Token");
        }

        @JvmStatic
        @Nullable
        public final AccessTokenSource Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Bundle bundle) {
            if (bundle.containsKey("com.facebook.TokenCachingStrategy.AccessTokenSource")) {
                return (AccessTokenSource) bundle.getSerializable("com.facebook.TokenCachingStrategy.AccessTokenSource");
            }
            if (bundle.getBoolean("com.facebook.TokenCachingStrategy.IsSSO")) {
                return AccessTokenSource.FACEBOOK_APPLICATION_WEB;
            }
            return AccessTokenSource.WEB_VIEW;
        }

        @JvmStatic
        @Nullable
        public final Date Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Bundle bundle) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle, "com.facebook.TokenCachingStrategy.LastRefreshDate");
        }

        @JvmStatic
        @Nullable
        public final Date Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Bundle bundle) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle, "com.facebook.TokenCachingStrategy.ExpirationDate");
        }

        public final Date Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Bundle bundle, String str) {
            if (bundle == null) {
                return null;
            }
            long j = bundle.getLong(str, Long.MIN_VALUE);
            if (j == Long.MIN_VALUE) {
                return null;
            }
            return new Date(j);
        }

        @JvmStatic
        @Nullable
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Bundle bundle) {
            return bundle.getString("com.facebook.TokenCachingStrategy.ApplicationId");
        }

        public Companion() {
        }
    }

    @JvmOverloads
    public LegacyTokenHelper(@NotNull Context context, @Nullable String str) {
        str = (str == null || str.length() == 0) ? "com.facebook.SharedPreferencesTokenCachingStrategy.DEFAULT_KEY" : "com.facebook.SharedPreferencesTokenCachingStrategy.DEFAULT_KEY";
        this.f6064Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        Context applicationContext = context.getApplicationContext();
        this.f6063Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (applicationContext != null ? applicationContext : context).getSharedPreferences(str, 0);
    }

    @Nullable
    public final Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Bundle bundle = new Bundle();
        for (String str : this.f6063Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getAll().keySet()) {
            try {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, bundle);
            } catch (JSONException e) {
                Logger.Companion companion = Logger.Companion;
                LoggingBehavior loggingBehavior = LoggingBehavior.CACHE;
                String str2 = f6062Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(loggingBehavior, 5, str2, "Error reading cached value for key: '" + ((Object) str) + "' -- " + e);
                return null;
            }
        }
        return bundle;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, Bundle bundle) throws JSONException {
        String str2;
        String string;
        String string2 = this.f6063Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getString(str, JsonUtils.EMPTY_JSON);
        if (string2 != null) {
            JSONObject jSONObject = new JSONObject(string2);
            String string3 = jSONObject.getString("valueType");
            if (string3 != null) {
                int i = 0;
                switch (string3.hashCode()) {
                    case -1573317553:
                        if (string3.equals("stringList")) {
                            JSONArray jSONArray = jSONObject.getJSONArray("value");
                            int length = jSONArray.length();
                            ArrayList<String> arrayList = new ArrayList<>(length);
                            if (length > 0) {
                                while (true) {
                                    int i2 = i + 1;
                                    Object obj = jSONArray.get(i);
                                    if (obj == JSONObject.NULL) {
                                        str2 = null;
                                    } else if (obj != null) {
                                        str2 = (String) obj;
                                    } else {
                                        throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
                                    }
                                    arrayList.add(i, str2);
                                    if (i2 < length) {
                                        i = i2;
                                    }
                                }
                            }
                            bundle.putStringArrayList(str, arrayList);
                            return;
                        }
                        return;
                    case -1383386164:
                        if (string3.equals("bool[]")) {
                            JSONArray jSONArray2 = jSONObject.getJSONArray("value");
                            int length2 = jSONArray2.length();
                            boolean[] zArr = new boolean[length2];
                            int i3 = length2 - 1;
                            if (i3 >= 0) {
                                while (true) {
                                    int i4 = i + 1;
                                    zArr[i] = jSONArray2.getBoolean(i);
                                    if (i4 <= i3) {
                                        i = i4;
                                    }
                                }
                            }
                            bundle.putBooleanArray(str, zArr);
                            return;
                        }
                        return;
                    case -1374008726:
                        if (string3.equals("byte[]")) {
                            JSONArray jSONArray3 = jSONObject.getJSONArray("value");
                            int length3 = jSONArray3.length();
                            byte[] bArr = new byte[length3];
                            int i5 = length3 - 1;
                            if (i5 >= 0) {
                                while (true) {
                                    int i6 = i + 1;
                                    bArr[i] = (byte) jSONArray3.getInt(i);
                                    if (i6 <= i5) {
                                        i = i6;
                                    }
                                }
                            }
                            bundle.putByteArray(str, bArr);
                            return;
                        }
                        return;
                    case -1361632968:
                        if (string3.equals("char[]")) {
                            JSONArray jSONArray4 = jSONObject.getJSONArray("value");
                            int length4 = jSONArray4.length();
                            char[] cArr = new char[length4];
                            int i7 = length4 - 1;
                            if (i7 >= 0) {
                                int i8 = 0;
                                while (true) {
                                    int i9 = i8 + 1;
                                    String string4 = jSONArray4.getString(i8);
                                    if (string4 != null && string4.length() == 1) {
                                        cArr[i8] = string4.charAt(0);
                                    }
                                    if (i9 <= i7) {
                                        i8 = i9;
                                    }
                                }
                            }
                            bundle.putCharArray(str, cArr);
                            return;
                        }
                        return;
                    case -1325958191:
                        if (string3.equals("double")) {
                            bundle.putDouble(str, jSONObject.getDouble("value"));
                            return;
                        }
                        return;
                    case -1097129250:
                        if (string3.equals("long[]")) {
                            JSONArray jSONArray5 = jSONObject.getJSONArray("value");
                            int length5 = jSONArray5.length();
                            long[] jArr = new long[length5];
                            int i10 = length5 - 1;
                            if (i10 >= 0) {
                                while (true) {
                                    int i11 = i + 1;
                                    jArr[i] = jSONArray5.getLong(i);
                                    if (i11 <= i10) {
                                        i = i11;
                                    }
                                }
                            }
                            bundle.putLongArray(str, jArr);
                            return;
                        }
                        return;
                    case -891985903:
                        if (string3.equals(TypedValues.Custom.S_STRING)) {
                            bundle.putString(str, jSONObject.getString("value"));
                            return;
                        }
                        return;
                    case -766441794:
                        if (string3.equals("float[]")) {
                            JSONArray jSONArray6 = jSONObject.getJSONArray("value");
                            int length6 = jSONArray6.length();
                            float[] fArr = new float[length6];
                            int i12 = length6 - 1;
                            if (i12 >= 0) {
                                while (true) {
                                    int i13 = i + 1;
                                    fArr[i] = (float) jSONArray6.getDouble(i);
                                    if (i13 <= i12) {
                                        i = i13;
                                    }
                                }
                            }
                            bundle.putFloatArray(str, fArr);
                            return;
                        }
                        return;
                    case 104431:
                        if (string3.equals("int")) {
                            bundle.putInt(str, jSONObject.getInt("value"));
                            return;
                        }
                        return;
                    case 3029738:
                        if (string3.equals("bool")) {
                            bundle.putBoolean(str, jSONObject.getBoolean("value"));
                            return;
                        }
                        return;
                    case 3039496:
                        if (string3.equals("byte")) {
                            bundle.putByte(str, (byte) jSONObject.getInt("value"));
                            return;
                        }
                        return;
                    case 3052374:
                        if (string3.equals("char") && (string = jSONObject.getString("value")) != null && string.length() == 1) {
                            bundle.putChar(str, string.charAt(0));
                            return;
                        }
                        return;
                    case 3118337:
                        if (string3.equals("enum")) {
                            try {
                                bundle.putSerializable(str, Enum.valueOf(Class.forName(jSONObject.getString("enumType")), jSONObject.getString("value")));
                                return;
                            } catch (ClassNotFoundException | IllegalArgumentException unused) {
                                return;
                            }
                        }
                        return;
                    case 3327612:
                        if (string3.equals("long")) {
                            bundle.putLong(str, jSONObject.getLong("value"));
                            return;
                        }
                        return;
                    case 97526364:
                        if (string3.equals(TypedValues.Custom.S_FLOAT)) {
                            bundle.putFloat(str, (float) jSONObject.getDouble("value"));
                            return;
                        }
                        return;
                    case 100361105:
                        if (string3.equals("int[]")) {
                            JSONArray jSONArray7 = jSONObject.getJSONArray("value");
                            int length7 = jSONArray7.length();
                            int[] iArr = new int[length7];
                            int i14 = length7 - 1;
                            if (i14 >= 0) {
                                while (true) {
                                    int i15 = i + 1;
                                    iArr[i] = jSONArray7.getInt(i);
                                    if (i15 <= i14) {
                                        i = i15;
                                    }
                                }
                            }
                            bundle.putIntArray(str, iArr);
                            return;
                        }
                        return;
                    case 109413500:
                        if (string3.equals("short")) {
                            bundle.putShort(str, (short) jSONObject.getInt("value"));
                            return;
                        }
                        return;
                    case 1359468275:
                        if (string3.equals("double[]")) {
                            JSONArray jSONArray8 = jSONObject.getJSONArray("value");
                            int length8 = jSONArray8.length();
                            double[] dArr = new double[length8];
                            int i16 = length8 - 1;
                            if (i16 >= 0) {
                                while (true) {
                                    int i17 = i + 1;
                                    dArr[i] = jSONArray8.getDouble(i);
                                    if (i17 <= i16) {
                                        i = i17;
                                    }
                                }
                            }
                            bundle.putDoubleArray(str, dArr);
                            return;
                        }
                        return;
                    case 2067161310:
                        if (string3.equals("short[]")) {
                            JSONArray jSONArray9 = jSONObject.getJSONArray("value");
                            int length9 = jSONArray9.length();
                            short[] sArr = new short[length9];
                            int i18 = length9 - 1;
                            if (i18 >= 0) {
                                while (true) {
                                    int i19 = i + 1;
                                    sArr[i] = (short) jSONArray9.getInt(i);
                                    if (i19 <= i18) {
                                        i = i19;
                                    }
                                }
                            }
                            bundle.putShortArray(str, sArr);
                            return;
                        }
                        return;
                    default:
                        return;
                }
            }
            return;
        }
        throw new IllegalStateException("Required value was null.");
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f6063Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.edit().clear().apply();
    }

    public /* synthetic */ LegacyTokenHelper(Context context, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : str);
    }
}
