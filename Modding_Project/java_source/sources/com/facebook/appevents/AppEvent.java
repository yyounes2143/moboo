package com.facebook.appevents;

import android.os.Bundle;
import androidx.annotation.RestrictTo;
import com.facebook.FacebookException;
import com.facebook.LoggingBehavior;
import com.facebook.appevents.eventdeactivation.EventDeactivationManager;
import com.facebook.appevents.integrity.IntegrityManager;
import com.facebook.appevents.integrity.ProtectedModeManager;
import com.facebook.appevents.integrity.RedactedEventsManager;
import com.facebook.appevents.integrity.SensitiveParamsManager;
import com.facebook.appevents.internal.AppEventUtility;
import com.facebook.appevents.restrictivedatafilter.RestrictiveDataManager;
import com.facebook.internal.Logger;
import com.facebook.internal.Utility;
import com.mbridge.msdk.foundation.tools.SameMD5;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.Regex;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010$\n\u0002\b\u000e\b\u0007\u0018\u0000 -2\u00020\u0001:\u0002-.BG\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\t\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u000e\u0010\u000fB+\b\u0012\u0012\u0006\u0010\u0010\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\t\u0012\u0006\u0010\u0012\u001a\u00020\t\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u000e\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\r\u0010\u0018\u001a\u00020\t¢\u0006\u0004\b\u0018\u0010\u0019J\r\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ=\u0010\u001f\u001a\u00020\u001a2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0002¢\u0006\u0004\b\u001f\u0010 J%\u0010\"\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00020!2\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020\u0002H\u0002¢\u0006\u0004\b$\u0010\u001eR\u0017\u0010%\u001a\u00020\u001a8\u0006¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b'\u0010\u001cR\u0017\u0010\u0011\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b\u0011\u0010(\u001a\u0004\b\u0011\u0010\u0019R\u0014\u0010\u0012\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010(R\u0017\u0010)\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b)\u0010*\u001a\u0004\b+\u0010\u001eR\u0016\u0010\u0013\u001a\u0004\u0018\u00010\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010*R\u0011\u0010,\u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\b,\u0010\u0019¨\u0006/"}, d2 = {"Lcom/facebook/appevents/AppEvent;", "Ljava/io/Serializable;", "", "contextName", "eventName", "", "valueToSum", "Landroid/os/Bundle;", "parameters", "", "isImplicitlyLogged", "isInBackground", "Ljava/util/UUID;", "currentSessionId", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZZLjava/util/UUID;)V", "jsonString", "isImplicit", "inBackground", "checksum", "(Ljava/lang/String;ZZLjava/lang/String;)V", "", "writeReplace", "()Ljava/lang/Object;", "getIsImplicit", "()Z", "Lorg/json/JSONObject;", "getJSONObject", "()Lorg/json/JSONObject;", "toString", "()Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Ljava/util/UUID;)Lorg/json/JSONObject;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/os/Bundle;)Ljava/util/Map;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "jsonObject", "Lorg/json/JSONObject;", "getJsonObject", "Z", "name", "Ljava/lang/String;", "getName", "isChecksumValid", "Companion", "SerializationProxyV2", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class AppEvent implements Serializable {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final HashSet<String> f6176Wwwwwwwwwwwwwwwwwwwwwwwww = new HashSet<>();
    private static final long serialVersionUID = 1;
    @Nullable
    private final String checksum;
    private final boolean inBackground;
    private final boolean isImplicit;
    @NotNull
    private final JSONObject jsonObject;
    @NotNull
    private final String name;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\n\u0010\u000bR\u0014\u0010\r\u001a\u00020\f8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u0010\u001a\u00020\u000f8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R$\u0010\u0014\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0012j\b\u0012\u0004\u0012\u00020\u0004`\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Lcom/facebook/appevents/AppEvent$Companion;", "", "<init>", "()V", "", "identifier", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)V", "toHash", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Ljava/lang/String;", "", "MAX_IDENTIFIER_LENGTH", "I", "", "serialVersionUID", "J", "Ljava/util/HashSet;", "Lkotlin/collections/HashSet;", "validatedIdentifiers", "Ljava/util/HashSet;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
            boolean contains;
            if (str != null && str.length() != 0 && str.length() <= 40) {
                synchronized (AppEvent.f6176Wwwwwwwwwwwwwwwwwwwwwwwww) {
                    contains = AppEvent.f6176Wwwwwwwwwwwwwwwwwwwwwwwww.contains(str);
                    Unit unit = Unit.INSTANCE;
                }
                if (!contains) {
                    if (new Regex("^[0-9a-zA-Z_]+[0-9a-zA-Z _-]*$").matches(str)) {
                        synchronized (AppEvent.f6176Wwwwwwwwwwwwwwwwwwwwwwwww) {
                            AppEvent.f6176Wwwwwwwwwwwwwwwwwwwwwwwww.add(str);
                        }
                        return;
                    }
                    StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                    throw new FacebookException(String.format("Skipping event named '%s' due to illegal name - must be under 40 chars and alphanumeric, _, - or space, and not start with a space or hyphen.", Arrays.copyOf(new Object[]{str}, 1)));
                }
                return;
            }
            if (str == null) {
                str = "<None Provided>";
            }
            StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
            throw new FacebookException(String.format(Locale.ROOT, "Identifier '%s' must be less than %d characters", Arrays.copyOf(new Object[]{str, 40}, 2)));
        }

        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance(SameMD5.TAG);
                Charset forName = Charset.forName("UTF-8");
                if (str != null) {
                    byte[] bytes = str.getBytes(forName);
                    messageDigest.update(bytes, 0, bytes.length);
                    return AppEventUtility.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(messageDigest.digest());
                }
                throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
            } catch (UnsupportedEncodingException e) {
                Utility.Illlllllllllllllllllllll("Failed to generate checksum: ", e);
                return "1";
            } catch (NoSuchAlgorithmException e2) {
                Utility.Illlllllllllllllllllllll("Failed to generate checksum: ", e2);
                return "0";
            }
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0000\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\bJ\b\u0010\t\u001a\u00020\nH\u0002R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/facebook/appevents/AppEvent$SerializationProxyV2;", "Ljava/io/Serializable;", "jsonString", "", "isImplicit", "", "inBackground", "checksum", "(Ljava/lang/String;ZZLjava/lang/String;)V", "readResolve", "", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class SerializationProxyV2 implements Serializable {
        @NotNull
        public static final Companion Companion = new Companion(null);
        private static final long serialVersionUID = 20160803001L;
        @Nullable
        private final String checksum;
        private final boolean inBackground;
        private final boolean isImplicit;
        @NotNull
        private final String jsonString;

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/facebook/appevents/AppEvent$SerializationProxyV2$Companion;", "", "()V", "serialVersionUID", "", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public Companion() {
            }
        }

        public SerializationProxyV2(@NotNull String str, boolean z, boolean z2, @Nullable String str2) {
            this.jsonString = str;
            this.isImplicit = z;
            this.inBackground = z2;
            this.checksum = str2;
        }

        private final Object readResolve() throws JSONException, ObjectStreamException {
            return new AppEvent(this.jsonString, this.isImplicit, this.inBackground, this.checksum, null);
        }
    }

    public /* synthetic */ AppEvent(String str, boolean z, boolean z2, String str2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, z, z2, str2);
    }

    private final Object writeReplace() throws ObjectStreamException {
        return new SerializationProxyV2(this.jsonObject.toString(), this.isImplicit, this.inBackground, this.checksum);
    }

    public final Map<String, String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Bundle bundle) {
        HashMap hashMap = new HashMap();
        for (String str : bundle.keySet()) {
            Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
            Object obj = bundle.get(str);
            if (!(obj instanceof String) && !(obj instanceof Number)) {
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                throw new FacebookException(String.format("Parameter value '%s' for key '%s' should be a string or a numeric type.", Arrays.copyOf(new Object[]{obj, str}, 2)));
            }
            hashMap.put(str, obj.toString());
        }
        if (!ProtectedModeManager.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle)) {
            SensitiveParamsManager sensitiveParamsManager = SensitiveParamsManager.INSTANCE;
            SensitiveParamsManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(hashMap, this.name);
        }
        IntegrityManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(hashMap);
        RestrictiveDataManager restrictiveDataManager = RestrictiveDataManager.INSTANCE;
        RestrictiveDataManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(hashMap, this.name);
        EventDeactivationManager eventDeactivationManager = EventDeactivationManager.INSTANCE;
        EventDeactivationManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(hashMap, this.name);
        return hashMap;
    }

    public final JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, String str2, Double d, Bundle bundle, UUID uuid) {
        Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str2);
        JSONObject jSONObject = new JSONObject();
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = RestrictiveDataManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str2);
        if (Intrinsics.areEqual(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, str2)) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = RedactedEventsManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str2);
        }
        jSONObject.put("_eventName", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        jSONObject.put("_logTime", System.currentTimeMillis() / 1000);
        jSONObject.put("_ui", str);
        if (uuid != null) {
            jSONObject.put("_session_id", uuid);
        }
        if (bundle != null) {
            Map<String, String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle);
            for (String str3 : Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.keySet()) {
                jSONObject.put(str3, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.get(str3));
            }
        }
        if (d != null) {
            jSONObject.put("_valueToSum", d.doubleValue());
        }
        if (this.inBackground) {
            jSONObject.put("_inBackground", "1");
        }
        if (this.isImplicit) {
            jSONObject.put("_implicitlyLogged", "1");
            return jSONObject;
        }
        Logger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoggingBehavior.APP_EVENTS, "AppEvents", "Created app event '%s'", jSONObject.toString());
        return jSONObject;
    }

    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.jsonObject.toString());
    }

    public final boolean getIsImplicit() {
        return this.isImplicit;
    }

    @NotNull
    public final JSONObject getJSONObject() {
        return this.jsonObject;
    }

    @NotNull
    public final JSONObject getJsonObject() {
        return this.jsonObject;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    public final boolean isChecksumValid() {
        if (this.checksum == null) {
            return true;
        }
        return Intrinsics.areEqual(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), this.checksum);
    }

    public final boolean isImplicit() {
        return this.isImplicit;
    }

    @NotNull
    public String toString() {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        return String.format("\"%s\", implicit: %b, json: %s", Arrays.copyOf(new Object[]{this.jsonObject.optString("_eventName"), Boolean.valueOf(this.isImplicit), this.jsonObject.toString()}, 3));
    }

    public AppEvent(@NotNull String str, @NotNull String str2, @Nullable Double d, @Nullable Bundle bundle, boolean z, boolean z2, @Nullable UUID uuid) throws JSONException, FacebookException {
        this.isImplicit = z;
        this.inBackground = z2;
        this.name = str2;
        this.jsonObject = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, str2, d, bundle, uuid);
        this.checksum = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public AppEvent(String str, boolean z, boolean z2, String str2) {
        JSONObject jSONObject = new JSONObject(str);
        this.jsonObject = jSONObject;
        this.isImplicit = z;
        this.name = jSONObject.optString("_eventName");
        this.checksum = str2;
        this.inBackground = z2;
    }
}
