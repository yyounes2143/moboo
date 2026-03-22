package com.facebook.login;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RestrictTo;
import androidx.fragment.app.FragmentActivity;
import com.facebook.AccessTokenSource;
import com.facebook.FacebookException;
import com.facebook.internal.FacebookDialogFragment;
import com.facebook.internal.Utility;
import com.facebook.internal.WebDialog;
import com.facebook.login.LoginClient;
import com.vungle.ads.internal.ui.AdActivity;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\b\b\u0017\u0018\u0000 82\u00020\u0001:\u000298B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u0011\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0004\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J)\u0010\u0018\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000f2\b\u0010\u0015\u001a\u0004\u0018\u00010\u00142\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u001f\u0010\u001e\u001a\u00020\f2\u0006\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u001e\u0010\u001fR$\u0010'\u001a\u0004\u0018\u00010 8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R$\u0010/\u001a\u0004\u0018\u00010(8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\u001a\u00101\u001a\u00020(8\u0016X\u0096D¢\u0006\f\n\u0004\b\u0012\u0010*\u001a\u0004\b0\u0010,R\u001a\u00107\u001a\u0002028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b3\u00104\u001a\u0004\b5\u00106¨\u0006:"}, d2 = {"Lcom/facebook/login/WebViewLoginMethodHandler;", "Lcom/facebook/login/WebLoginMethodHandler;", "Lcom/facebook/login/LoginClient;", "loginClient", "<init>", "(Lcom/facebook/login/LoginClient;)V", "Landroid/os/Parcel;", "source", "(Landroid/os/Parcel;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "Lcom/facebook/login/LoginClient$Request;", AdActivity.REQUEST_KEY_EXTRA, "", "Wwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/login/LoginClient$Request;)I", "Landroid/os/Bundle;", "values", "Lcom/facebook/FacebookException;", "error", "Wwwwwwwwwwww", "(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V", "describeContents", "()I", "dest", "flags", "writeToParcel", "(Landroid/os/Parcel;I)V", "Lcom/facebook/internal/WebDialog;", "Wwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/internal/WebDialog;", "getLoginDialog", "()Lcom/facebook/internal/WebDialog;", "setLoginDialog", "(Lcom/facebook/internal/WebDialog;)V", "loginDialog", "", "Wwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "getE2e", "()Ljava/lang/String;", "setE2e", "(Ljava/lang/String;)V", "e2e", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "nameForLogging", "Lcom/facebook/AccessTokenSource;", "Wwwwwwwwwwwwwwwwwww", "Lcom/facebook/AccessTokenSource;", "Wwwwwwwwwwwwwwww", "()Lcom/facebook/AccessTokenSource;", "tokenSource", "Companion", "AuthDialogBuilder", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes4.dex */
public class WebViewLoginMethodHandler extends WebLoginMethodHandler {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final AccessTokenSource f7042Wwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f7043Wwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f7044Wwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public WebDialog f7045Wwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @JvmField
    @NotNull
    public static final Parcelable.Creator<WebViewLoginMethodHandler> CREATOR = new Parcelable.Creator<WebViewLoginMethodHandler>() { // from class: com.facebook.login.WebViewLoginMethodHandler$Companion$CREATOR$1
        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public WebViewLoginMethodHandler[] newArray(int i) {
            return new WebViewLoginMethodHandler[i];
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public WebViewLoginMethodHandler createFromParcel(@NotNull Parcel parcel) {
            return new WebViewLoginMethodHandler(parcel);
        }
    };

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0010\b\u0086\u0004\u0018\u00002\u00020\u0001B!\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0019\u0010\f\u001a\u00060\u0000R\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0004¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u0010\u001a\u00060\u0000R\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u0019\u0010\u0013\u001a\u00060\u0000R\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0004¢\u0006\u0004\b\u0013\u0010\rJ\u0019\u0010\u0016\u001a\u00060\u0000R\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u0019\u0010\u001a\u001a\u00060\u0000R\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b\u001a\u0010\u001bJ\u0019\u0010\u001d\u001a\u00060\u0000R\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u000e¢\u0006\u0004\b\u001d\u0010\u0011J\u0019\u0010\u001f\u001a\u00060\u0000R\u00020\u000b2\u0006\u0010\u001e\u001a\u00020\u000e¢\u0006\u0004\b\u001f\u0010\u0011J\u000f\u0010!\u001a\u00020 H\u0016¢\u0006\u0004\b!\u0010\"R\u0016\u0010%\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u0016\u0010\u0015\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'R\u0016\u0010\u0019\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0016\u0010\u001c\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010*R\u0016\u0010,\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010*R\"\u0010\n\u001a\u00020\u00048\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\f\u0010$\u001a\u0004\b(\u0010-\"\u0004\b.\u0010/R\"\u0010\u0012\u001a\u00020\u00048\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b.\u0010$\u001a\u0004\b&\u0010-\"\u0004\b+\u0010/¨\u00060"}, d2 = {"Lcom/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;", "Lcom/facebook/internal/WebDialog$Builder;", "Landroid/content/Context;", "context", "", "applicationId", "Landroid/os/Bundle;", "parameters", "<init>", "(Lcom/facebook/login/WebViewLoginMethodHandler;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V", "e2e", "Lcom/facebook/login/WebViewLoginMethodHandler;", "Wwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Lcom/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;", "", "isChromeOS", "Wwwwwwwwwwwwwwwwwww", "(Z)Lcom/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;", "authType", "Wwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/login/LoginBehavior;", "loginBehavior", "Wwwwwwwwwwwwwwwwww", "(Lcom/facebook/login/LoginBehavior;)Lcom/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;", "Lcom/facebook/login/LoginTargetApp;", "targetApp", "Wwwwwwwwwwwwwwwww", "(Lcom/facebook/login/LoginTargetApp;)Lcom/facebook/login/WebViewLoginMethodHandler$AuthDialogBuilder;", "isFamilyLogin", "Wwwwwwwwwwwwwwwwwwww", "shouldSkip", "Wwwwwwwwwwwwwwww", "Lcom/facebook/internal/WebDialog;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/internal/WebDialog;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "redirect_uri", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/login/LoginBehavior;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/login/LoginTargetApp;", "Z", "Wwwwwwwwwwwwwwwwwwwwwww", "shouldSkipDedupe", "()Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)V", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public final class AuthDialogBuilder extends WebDialog.Builder {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f7047Wwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f7048Wwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f7049Wwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f7050Wwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public LoginTargetApp f7051Wwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public LoginBehavior f7052Wwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f7053Wwwwwwwwwwwwwwwwwwwwwwwwwww;

        public AuthDialogBuilder(@NotNull Context context, @NotNull String str, @NotNull Bundle bundle) {
            super(context, str, "oauth", bundle);
            this.f7053Wwwwwwwwwwwwwwwwwwwwwwwwwww = "fbconnect://success";
            this.f7052Wwwwwwwwwwwwwwwwwwwwwwwwww = LoginBehavior.NATIVE_WITH_FALLBACK;
            this.f7051Wwwwwwwwwwwwwwwwwwwwwwwww = LoginTargetApp.FACEBOOK;
        }

        @NotNull
        public final AuthDialogBuilder Wwwwwwwwwwwwwwww(boolean z) {
            this.f7049Wwwwwwwwwwwwwwwwwwwwwww = z;
            return this;
        }

        @NotNull
        public final AuthDialogBuilder Wwwwwwwwwwwwwwwww(@NotNull LoginTargetApp loginTargetApp) {
            this.f7051Wwwwwwwwwwwwwwwwwwwwwwwww = loginTargetApp;
            return this;
        }

        @NotNull
        public final AuthDialogBuilder Wwwwwwwwwwwwwwwwww(@NotNull LoginBehavior loginBehavior) {
            this.f7052Wwwwwwwwwwwwwwwwwwwwwwwwww = loginBehavior;
            return this;
        }

        @NotNull
        public final AuthDialogBuilder Wwwwwwwwwwwwwwwwwww(boolean z) {
            String str;
            if (z) {
                str = "fbconnect://chrome_os_success";
            } else {
                str = "fbconnect://success";
            }
            this.f7053Wwwwwwwwwwwwwwwwwwwwwwwwwww = str;
            return this;
        }

        @NotNull
        public final AuthDialogBuilder Wwwwwwwwwwwwwwwwwwww(boolean z) {
            this.f7050Wwwwwwwwwwwwwwwwwwwwwwww = z;
            return this;
        }

        public final void Wwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
            this.f7048Wwwwwwwwwwwwwwwwwwwwww = str;
        }

        @NotNull
        public final AuthDialogBuilder Wwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
            Wwwwwwwwwwwwwwwwwwwww(str);
            return this;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
            this.f7047Wwwwwwwwwwwwwwwwwwwww = str;
        }

        @NotNull
        public final AuthDialogBuilder Wwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
            Wwwwwwwwwwwwwwwwwwwwwww(str);
            return this;
        }

        @NotNull
        public final String Wwwwwwwwwwwwwwwwwwwwwwwww() {
            String str = this.f7048Wwwwwwwwwwwwwwwwwwwwww;
            str.getClass();
            return str;
        }

        @NotNull
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwww() {
            String str = this.f7047Wwwwwwwwwwwwwwwwwwwww;
            str.getClass();
            return str;
        }

        @Override // com.facebook.internal.WebDialog.Builder
        @NotNull
        public WebDialog Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            String str;
            Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.putString("redirect_uri", this.f7053Wwwwwwwwwwwwwwwwwwwwwwwwwww);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.putString("client_id", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.putString("e2e", Wwwwwwwwwwwwwwwwwwwwwwwww());
                if (this.f7051Wwwwwwwwwwwwwwwwwwwwwwwww == LoginTargetApp.INSTAGRAM) {
                    str = "token,signed_request,graph_domain,granted_scopes";
                } else {
                    str = "token,signed_request,graph_domain";
                }
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.putString("response_type", str);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.putString("return_scopes", "true");
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.putString("auth_type", Wwwwwwwwwwwwwwwwwwwwwwwwww());
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.putString("login_behavior", this.f7052Wwwwwwwwwwwwwwwwwwwwwwwwww.name());
                if (this.f7050Wwwwwwwwwwwwwwwwwwwwwwww) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.putString("fx_app", this.f7051Wwwwwwwwwwwwwwwwwwwwwwwww.toString());
                }
                if (this.f7049Wwwwwwwwwwwwwwwwwwwwwww) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.putString("skip_dedupe", "true");
                }
                WebDialog.Companion companion = WebDialog.Companion;
                Context Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                    return companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, "oauth", Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwww(), this.f7051Wwwwwwwwwwwwwwwwwwwwwwwww, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                }
                throw new NullPointerException("null cannot be cast to non-null type android.content.Context");
            }
            throw new NullPointerException("null cannot be cast to non-null type android.os.Bundle");
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/facebook/login/WebViewLoginMethodHandler$Companion;", "", "()V", "CREATOR", "Landroid/os/Parcelable$Creator;", "Lcom/facebook/login/WebViewLoginMethodHandler;", "OAUTH_DIALOG", "", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public WebViewLoginMethodHandler(@NotNull LoginClient loginClient) {
        super(loginClient);
        this.f7043Wwwwwwwwwwwwwwwwwwww = "web_view";
        this.f7042Wwwwwwwwwwwwwwwwwww = AccessTokenSource.WEB_VIEW;
    }

    public final void Wwwwwwwwwwww(@NotNull LoginClient.Request request, @Nullable Bundle bundle, @Nullable FacebookException facebookException) {
        super.Wwwwwwwwwwwwww(request, bundle, facebookException);
    }

    @Override // com.facebook.login.WebLoginMethodHandler
    @NotNull
    public AccessTokenSource Wwwwwwwwwwwwwwww() {
        return this.f7042Wwwwwwwwwwwwwwwwwww;
    }

    @Override // com.facebook.login.LoginMethodHandler
    public int Wwwwwwwwwwwwwwwwwwww(@NotNull final LoginClient.Request request) {
        Bundle Wwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwww(request);
        WebDialog.OnCompleteListener onCompleteListener = new WebDialog.OnCompleteListener() { // from class: com.facebook.login.WebViewLoginMethodHandler$tryAuthorize$listener$1
            @Override // com.facebook.internal.WebDialog.OnCompleteListener
            public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Bundle bundle, @Nullable FacebookException facebookException) {
                WebViewLoginMethodHandler.this.Wwwwwwwwwwww(request, bundle, facebookException);
            }
        };
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = LoginClient.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f7044Wwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("e2e", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        FragmentActivity Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return 0;
        }
        boolean Kkkkkkkk2 = Utility.Kkkkkkkk(Wwwwwwwwwwwwwwwwwwwwwwwwww2);
        AuthDialogBuilder authDialogBuilder = new AuthDialogBuilder(Wwwwwwwwwwwwwwwwwwwwwwwwww2, request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwww2);
        String str = this.f7044Wwwwwwwwwwwwwwwwwwwww;
        if (str != null) {
            this.f7045Wwwwwwwwwwwwwwwwwwwwww = authDialogBuilder.Wwwwwwwwwwwwwwwwwwwwww(str).Wwwwwwwwwwwwwwwwwww(Kkkkkkkk2).Wwwwwwwwwwwwwwwwwwwwwwww(request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()).Wwwwwwwwwwwwwwwwww(request.Wwwwwwwwwwwwwwwwwwwwwwwww()).Wwwwwwwwwwwwwwwww(request.Wwwwwwwwwwwwwwwwwwwwwwww()).Wwwwwwwwwwwwwwwwwwww(request.Wwwwwwwwwwwwwwwwww()).Wwwwwwwwwwwwwwww(request.Wwwwwwww()).Wwwwwwwwwwwwwwwwwwwwwwwwwww(onCompleteListener).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            FacebookDialogFragment facebookDialogFragment = new FacebookDialogFragment();
            facebookDialogFragment.setRetainInstance(true);
            facebookDialogFragment.Wwwwwwwwwwwwwwwwwwwwwww(this.f7045Wwwwwwwwwwwwwwwwwwwwww);
            facebookDialogFragment.show(Wwwwwwwwwwwwwwwwwwwwwwwwww2.getSupportFragmentManager(), "FacebookDialogFragment");
            return 1;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
    }

    @Override // com.facebook.login.LoginMethodHandler
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        return true;
    }

    @Override // com.facebook.login.LoginMethodHandler
    @NotNull
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7043Wwwwwwwwwwwwwwwwwwww;
    }

    @Override // com.facebook.login.LoginMethodHandler
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        WebDialog webDialog = this.f7045Wwwwwwwwwwwwwwwwwwwwww;
        if (webDialog != null) {
            if (webDialog != null) {
                webDialog.cancel();
            }
            this.f7045Wwwwwwwwwwwwwwwwwwwwww = null;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.login.LoginMethodHandler, android.os.Parcelable
    public void writeToParcel(@NotNull Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f7044Wwwwwwwwwwwwwwwwwwwww);
    }

    public WebViewLoginMethodHandler(@NotNull Parcel parcel) {
        super(parcel);
        this.f7043Wwwwwwwwwwwwwwwwwwww = "web_view";
        this.f7042Wwwwwwwwwwwwwwwwwww = AccessTokenSource.WEB_VIEW;
        this.f7044Wwwwwwwwwwwwwwwwwwwww = parcel.readString();
    }
}
