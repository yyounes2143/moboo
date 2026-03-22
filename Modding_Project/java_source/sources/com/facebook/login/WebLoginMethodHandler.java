package com.facebook.login;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.text.TextUtils;
import android.webkit.CookieSyncManager;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.fragment.app.FragmentActivity;
import com.facebook.AccessToken;
import com.facebook.AccessTokenSource;
import com.facebook.FacebookException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.FacebookRequestError;
import com.facebook.FacebookSdk;
import com.facebook.FacebookServiceException;
import com.facebook.internal.Utility;
import com.facebook.login.LoginClient;
import com.facebook.login.LoginMethodHandler;
import com.google.android.gms.common.Scopes;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.unity3d.services.core.di.ServiceProvider;
import com.vungle.ads.internal.ui.AdActivity;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\b'\u0018\u0000 %2\u00020\u0001:\u0001%B\u0011\b\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u0011\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0004\u0010\bJ\u0011\u0010\n\u001a\u0004\u0018\u00010\tH\u0014¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\fH\u0014¢\u0006\u0004\b\u000f\u0010\u0010J\u001f\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\fH\u0014¢\u0006\u0004\b\u0012\u0010\u0013J+\u0010\u0018\u001a\u00020\u00172\u0006\u0010\r\u001a\u00020\f2\b\u0010\u0014\u001a\u0004\u0018\u00010\u000e2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0017¢\u0006\u0004\b\u0018\u0010\u0019J\u0011\u0010\u001a\u001a\u0004\u0018\u00010\tH\u0002¢\u0006\u0004\b\u001a\u0010\u000bJ\u0017\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\tH\u0002¢\u0006\u0004\b\u001c\u0010\u001dR\u0018\u0010 \u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0014\u0010$\u001a\u00020!8&X¦\u0004¢\u0006\u0006\u001a\u0004\b\"\u0010#¨\u0006&"}, d2 = {"Lcom/facebook/login/WebLoginMethodHandler;", "Lcom/facebook/login/LoginMethodHandler;", "Lcom/facebook/login/LoginClient;", "loginClient", "<init>", "(Lcom/facebook/login/LoginClient;)V", "Landroid/os/Parcel;", "source", "(Landroid/os/Parcel;)V", "", "Wwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "Lcom/facebook/login/LoginClient$Request;", AdActivity.REQUEST_KEY_EXTRA, "Landroid/os/Bundle;", "Wwwwwwwwwwwwwwwwww", "(Lcom/facebook/login/LoginClient$Request;)Landroid/os/Bundle;", "parameters", "Wwwwwwwwwwwwwwwwwww", "(Landroid/os/Bundle;Lcom/facebook/login/LoginClient$Request;)Landroid/os/Bundle;", "values", "Lcom/facebook/FacebookException;", "error", "", "Wwwwwwwwwwwwww", "(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V", "Wwwwwwwwwwwwwww", BidResponsed.KEY_TOKEN, "Wwwwwwwwwwwww", "(Ljava/lang/String;)V", "Wwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "e2e", "Lcom/facebook/AccessTokenSource;", "Wwwwwwwwwwwwwwww", "()Lcom/facebook/AccessTokenSource;", "tokenSource", "Companion", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes4.dex */
public abstract class WebLoginMethodHandler extends LoginMethodHandler {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f7041Wwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/facebook/login/WebLoginMethodHandler$Companion;", "", "()V", "WEB_VIEW_AUTH_HANDLER_STORE", "", "WEB_VIEW_AUTH_HANDLER_TOKEN_KEY", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public WebLoginMethodHandler(@NotNull LoginClient loginClient) {
        super(loginClient);
    }

    public final void Wwwwwwwwwwwww(String str) {
        Context Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwww2 = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww();
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwww2.getSharedPreferences("com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY", 0).edit().putString("TOKEN", str).apply();
    }

    @VisibleForTesting(otherwise = 4)
    public void Wwwwwwwwwwwwww(@NotNull LoginClient.Request request, @Nullable Bundle bundle, @Nullable FacebookException facebookException) {
        String message;
        String str;
        LoginClient.Result Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        LoginClient Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f7041Wwwwwwwwwwwwwwwwwwwwwww = null;
        if (bundle != null) {
            if (bundle.containsKey("e2e")) {
                this.f7041Wwwwwwwwwwwwwwwwwwwwwww = bundle.getString("e2e");
            }
            try {
                LoginMethodHandler.Companion companion = LoginMethodHandler.Companion;
                AccessToken Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(request.Wwwwwwwwwwwwwwwwwwwww(), bundle, Wwwwwwwwwwwwwwww(), request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = LoginClient.Result.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle, request.Wwwwwwwwwwwwwwwwwwwwww()));
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww() != null) {
                    try {
                        CookieSyncManager.createInstance(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww()).sync();
                    } catch (Exception unused) {
                    }
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                        Wwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwww());
                    }
                }
            } catch (FacebookException e) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = LoginClient.Result.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoginClient.Result.Companion, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwww(), null, e.getMessage(), null, 8, null);
            }
        } else if (facebookException instanceof FacebookOperationCanceledException) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = LoginClient.Result.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwww(), "User canceled log in.");
        } else {
            this.f7041Wwwwwwwwwwwwwwwwwwwwwww = null;
            if (facebookException == null) {
                message = null;
            } else {
                message = facebookException.getMessage();
            }
            if (facebookException instanceof FacebookServiceException) {
                FacebookRequestError requestError = ((FacebookServiceException) facebookException).getRequestError();
                str = String.valueOf(requestError.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                message = requestError.toString();
            } else {
                str = null;
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = LoginClient.Result.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwww(), null, message, str);
        }
        Utility utility = Utility.INSTANCE;
        if (!Utility.Kk(this.f7041Wwwwwwwwwwwwwwwwwwwwwww)) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwww(this.f7041Wwwwwwwwwwwwwwwwwwwwwww);
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
    }

    public final String Wwwwwwwwwwwwwww() {
        Context Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwww2 = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww();
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwww2.getSharedPreferences("com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY", 0).getString("TOKEN", "");
    }

    @NotNull
    public abstract AccessTokenSource Wwwwwwwwwwwwwwww();

    @Nullable
    public String Wwwwwwwwwwwwwwwww() {
        return null;
    }

    @NotNull
    public Bundle Wwwwwwwwwwwwwwwwww(@NotNull LoginClient.Request request) {
        String Wwwwwwwwwwwwwwwwwwwwww2;
        Bundle bundle = new Bundle();
        Utility utility = Utility.INSTANCE;
        if (!Utility.Illllllllllllllllllllllllllll(request.Wwwwwwwwwwwwwwwwwwwww())) {
            String join = TextUtils.join(",", request.Wwwwwwwwwwwwwwwwwwwww());
            bundle.putString("scope", join);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("scope", join);
        }
        DefaultAudience Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = request.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = DefaultAudience.NONE;
        }
        bundle.putString("default_audience", Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.getNativeProtocolAudience());
        bundle.putString("state", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
        AccessToken Wwwwwwwwwwwwwwwwwwwwwwwwwwww3 = AccessToken.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww3 == null) {
            Wwwwwwwwwwwwwwwwwwwwww2 = null;
        } else {
            Wwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww3.Wwwwwwwwwwwwwwwwwwwwww();
        }
        String str = "0";
        if (Wwwwwwwwwwwwwwwwwwwwww2 != null && Intrinsics.areEqual(Wwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwww())) {
            bundle.putString("access_token", Wwwwwwwwwwwwwwwwwwwwww2);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("access_token", "1");
        } else {
            FragmentActivity Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                Utility.Wwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwww2);
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("access_token", "0");
        }
        bundle.putString("cbt", String.valueOf(System.currentTimeMillis()));
        if (FacebookSdk.Wwwwwwwwwwwwwwwwwww()) {
            str = "1";
        }
        bundle.putString("ies", str);
        return bundle;
    }

    @NotNull
    public Bundle Wwwwwwwwwwwwwwwwwww(@NotNull Bundle bundle, @NotNull LoginClient.Request request) {
        String name;
        String str;
        bundle.putString("redirect_uri", Wwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (request.Wwwwwwwwwwwwwwwww()) {
            bundle.putString("app_id", request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        } else {
            bundle.putString("client_id", request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        }
        bundle.putString("e2e", LoginClient.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (request.Wwwwwwwwwwwwwwwww()) {
            bundle.putString("response_type", "token,signed_request,graph_domain,granted_scopes");
        } else {
            if (request.Wwwwwwwwwwwwwwwwwwwww().contains(Scopes.OPEN_ID)) {
                bundle.putString("nonce", request.Wwwwwwwwwwwwwwwwwwwwww());
            }
            bundle.putString("response_type", "id_token,token,signed_request,graph_domain");
        }
        bundle.putString("code_challenge", request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        CodeChallengeMethod Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            name = null;
        } else {
            name = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.name();
        }
        bundle.putString("code_challenge_method", name);
        bundle.putString("return_scopes", "true");
        bundle.putString("auth_type", request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        bundle.putString("login_behavior", request.Wwwwwwwwwwwwwwwwwwwwwwwww().name());
        bundle.putString(ServiceProvider.NAMED_SDK, Intrinsics.stringPlus("android-", FacebookSdk.Wwwwww()));
        if (Wwwwwwwwwwwwwwwww() != null) {
            bundle.putString("sso", Wwwwwwwwwwwwwwwww());
        }
        String str2 = "0";
        if (!FacebookSdk.f5998Wwwwwwwwwwwwwwwwwww) {
            str = "0";
        } else {
            str = "1";
        }
        bundle.putString("cct_prefetching", str);
        if (request.Wwwwwwwwwwwwwwwwww()) {
            bundle.putString("fx_app", request.Wwwwwwwwwwwwwwwwwwwwwwww().toString());
        }
        if (request.Wwwwwwww()) {
            bundle.putString("skip_dedupe", "true");
        }
        if (request.Wwwwwwwwwwwwwwwwwwwwwww() != null) {
            bundle.putString("messenger_page_id", request.Wwwwwwwwwwwwwwwwwwwwwww());
            if (request.Wwwwwwwwwwwwwwwwwwww()) {
                str2 = "1";
            }
            bundle.putString("reset_messenger_state", str2);
        }
        return bundle;
    }

    public WebLoginMethodHandler(@NotNull Parcel parcel) {
        super(parcel);
    }
}
