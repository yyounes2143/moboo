package com.facebook.appevents;

import android.content.Context;
import android.os.Bundle;
import android.webkit.JavascriptInterface;
import com.facebook.LoggingBehavior;
import com.facebook.appevents.InternalAppEventsLogger;
import com.facebook.internal.Logger;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\b\u0001\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012J-\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002H\u0007¢\u0006\u0004\b\u0007\u0010\bR\u0016\u0010\f\u001a\u0004\u0018\u00010\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u001a\u0010\u0011\u001a\u00020\u00028GX\u0086D¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/facebook/appevents/FacebookSDKJSInterface;", "", "", "pixelId", "eventName", "jsonString", "", "sendEvent", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "Landroid/content/Context;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/content/Context;", "context", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "getProtocol", "()Ljava/lang/String;", "protocol", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class FacebookSDKJSInterface {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f6197Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = FacebookSDKJSInterface.class.getSimpleName();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f6198Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Context f6199Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u000b\u001a\u00020\u00062\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0002¢\u0006\u0004\b\u000b\u0010\fR\u0014\u0010\r\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/facebook/appevents/FacebookSDKJSInterface$Companion;", "", "<init>", "()V", "Lorg/json/JSONObject;", "jsonObject", "Landroid/os/Bundle;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lorg/json/JSONObject;)Landroid/os/Bundle;", "", "jsonString", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Landroid/os/Bundle;", "PARAMETER_FBSDK_PIXEL_REFERRAL", "Ljava/lang/String;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JSONObject jSONObject) throws JSONException {
            Bundle bundle = new Bundle();
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                if (next != null) {
                    String str = next;
                    bundle.putString(str, jSONObject.getString(str));
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
                }
            }
            return bundle;
        }

        public final Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
            try {
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new JSONObject(str));
            } catch (JSONException unused) {
                return new Bundle();
            }
        }

        public Companion() {
        }
    }

    @JavascriptInterface
    @NotNull
    public final String getProtocol() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return null;
        }
        try {
            return this.f6198Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return null;
        }
    }

    @JavascriptInterface
    public final void sendEvent(@Nullable String str, @Nullable String str2, @Nullable String str3) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return;
        }
        try {
            if (str == null) {
                Logger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoggingBehavior.DEVELOPER_ERRORS, f6197Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "Can't bridge an event without a referral Pixel ID. Check your webview Pixel configuration");
                return;
            }
            InternalAppEventsLogger Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = InternalAppEventsLogger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InternalAppEventsLogger.Companion, this.f6199Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, null, 2, null);
            Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str3);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.putString("_fb_pixel_referral_id", str);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
        }
    }
}
