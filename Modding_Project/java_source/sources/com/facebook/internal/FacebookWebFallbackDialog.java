package com.facebook.internal;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.webkit.WebView;
import com.sensorsdata.analytics.android.sdk.jsbridge.JSHookAop;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B!\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\n\u001a\u00020\t2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eR\u0016\u0010\u0012\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0014"}, d2 = {"Lcom/facebook/internal/FacebookWebFallbackDialog;", "Lcom/facebook/internal/WebDialog;", "Landroid/content/Context;", "context", "", "url", "expectedRedirectUrl", "<init>", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V", "Landroid/os/Bundle;", "Wwwwwwwwwwww", "(Ljava/lang/String;)Landroid/os/Bundle;", "", "cancel", "()V", "", "Wwwwwwwwww", "Z", "waitingForDialogToClose", "Companion", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class FacebookWebFallbackDialog extends WebDialog {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* renamed from: Wwwwwwwww  reason: collision with root package name */
    public static final String f6657Wwwwwwwww = FacebookWebFallbackDialog.class.getName();

    /* renamed from: Wwwwwwwwww  reason: collision with root package name */
    public boolean f6658Wwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J'\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\n\u0010\u000bR\u0014\u0010\r\u001a\u00020\f8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u001c\u0010\u0010\u001a\n \u000f*\u0004\u0018\u00010\u00060\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/facebook/internal/FacebookWebFallbackDialog$Companion;", "", "<init>", "()V", "Landroid/content/Context;", "context", "", "url", "expectedRedirectUrl", "Lcom/facebook/internal/FacebookWebFallbackDialog;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/internal/FacebookWebFallbackDialog;", "", "OS_BACK_BUTTON_RESPONSE_TIMEOUT_MILLISECONDS", "I", "kotlin.jvm.PlatformType", "TAG", "Ljava/lang/String;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final FacebookWebFallbackDialog Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull String str, @NotNull String str2) {
            WebDialog.Wwwwwwwwwwwwwwww(context);
            return new FacebookWebFallbackDialog(context, str, str2, null);
        }

        public Companion() {
        }
    }

    public /* synthetic */ FacebookWebFallbackDialog(Context context, String str, String str2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, str, str2);
    }

    public static final void Www(FacebookWebFallbackDialog facebookWebFallbackDialog) {
        super.cancel();
    }

    @Override // com.facebook.internal.WebDialog
    @NotNull
    public Bundle Wwwwwwwwwwww(@Nullable String str) {
        Uri parse = Uri.parse(str);
        Utility utility = Utility.INSTANCE;
        Bundle Illlllllllllllllll = Utility.Illlllllllllllllll(parse.getQuery());
        String string = Illlllllllllllllll.getString("bridge_args");
        Illlllllllllllllll.remove("bridge_args");
        if (!Utility.Kk(string)) {
            try {
                Illlllllllllllllll.putBundle("com.facebook.platform.protocol.BRIDGE_ARGS", BundleJSONConverter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new JSONObject(string)));
            } catch (JSONException e) {
                Utility utility2 = Utility.INSTANCE;
                Utility.Illlllllllllllllllllll(f6657Wwwwwwwww, "Unable to parse bridge_args JSON", e);
            }
        }
        String string2 = Illlllllllllllllll.getString("method_results");
        Illlllllllllllllll.remove("method_results");
        if (!Utility.Kk(string2)) {
            try {
                Illlllllllllllllll.putBundle("com.facebook.platform.protocol.RESULT_ARGS", BundleJSONConverter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new JSONObject(string2)));
            } catch (JSONException e2) {
                Utility utility3 = Utility.INSTANCE;
                Utility.Illlllllllllllllllllll(f6657Wwwwwwwww, "Unable to parse bridge_args JSON", e2);
            }
        }
        Illlllllllllllllll.remove("version");
        Illlllllllllllllll.putInt("com.facebook.platform.protocol.PROTOCOL_VERSION", NativeProtocol.Wwwwwwwwwwww());
        return Illlllllllllllllll;
    }

    @Override // com.facebook.internal.WebDialog, android.app.Dialog, android.content.DialogInterface
    public void cancel() {
        WebView Wwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwww() && !Wwwwwwwwwwwwwww() && Wwwwwwwwwwwwwwwww2 != null && Wwwwwwwwwwwwwwwww2.isShown()) {
            if (this.f6658Wwwwwwwwww) {
                return;
            }
            this.f6658Wwwwwwwwww = true;
            String stringPlus = Intrinsics.stringPlus("javascript:", "(function() {  var event = document.createEvent('Event');  event.initEvent('fbPlatformDialogMustClose',true,true);  document.dispatchEvent(event);})();");
            Wwwwwwwwwwwwwwwww2.loadUrl(stringPlus);
            JSHookAop.loadUrl(Wwwwwwwwwwwwwwwww2, stringPlus);
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.facebook.internal.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    FacebookWebFallbackDialog.Www(FacebookWebFallbackDialog.this);
                }
            }, 1500L);
            return;
        }
        super.cancel();
    }

    public FacebookWebFallbackDialog(Context context, String str, String str2) {
        super(context, str);
        Wwwwwwww(str2);
    }
}
