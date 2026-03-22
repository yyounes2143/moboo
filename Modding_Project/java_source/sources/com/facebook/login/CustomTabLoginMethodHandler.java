package com.facebook.login;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.facebook.AccessTokenSource;
import com.facebook.CustomTabMainActivity;
import com.facebook.FacebookException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.FacebookSdk;
import com.facebook.internal.CustomTab;
import com.facebook.internal.CustomTabUtils;
import com.facebook.internal.InstagramCustomTab;
import com.facebook.internal.Utility;
import com.facebook.login.LoginClient;
import com.vungle.ads.internal.ui.AdActivity;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 >2\u00020\u0001:\u0001>B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u0011\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0004\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0014¢\u0006\u0004\b\n\u0010\u000bJ\u0011\u0010\f\u001a\u0004\u0018\u00010\tH\u0014¢\u0006\u0004\b\f\u0010\u000bJ\u0017\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J)\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u000f2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u001f\u0010\"\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\u00062\u0006\u0010!\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\"\u0010#J!\u0010%\u001a\u00020\u001b2\b\u0010$\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b%\u0010&J\u0017\u0010)\u001a\u00020\u00162\u0006\u0010(\u001a\u00020'H\u0002¢\u0006\u0004\b)\u0010*R\u0018\u0010-\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u0018\u0010/\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010,R\u0016\u00100\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010,R\u001a\u00103\u001a\u00020\t8\u0016X\u0096D¢\u0006\f\n\u0004\b1\u0010,\u001a\u0004\b2\u0010\u000bR\u001a\u00109\u001a\u0002048\u0016X\u0096\u0004¢\u0006\f\n\u0004\b5\u00106\u001a\u0004\b7\u00108R\u0014\u0010;\u001a\u00020\t8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b:\u0010\u000bR\u0016\u0010=\u001a\u0004\u0018\u00010\t8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b<\u0010\u000b¨\u0006?"}, d2 = {"Lcom/facebook/login/CustomTabLoginMethodHandler;", "Lcom/facebook/login/WebLoginMethodHandler;", "Lcom/facebook/login/LoginClient;", "loginClient", "<init>", "(Lcom/facebook/login/LoginClient;)V", "Landroid/os/Parcel;", "source", "(Landroid/os/Parcel;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "Wwwwwwwwwwwwwwwww", "Lcom/facebook/login/LoginClient$Request;", AdActivity.REQUEST_KEY_EXTRA, "", "Wwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/login/LoginClient$Request;)I", "requestCode", "resultCode", "Landroid/content/Intent;", "data", "", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(IILandroid/content/Intent;)Z", "Lorg/json/JSONObject;", "param", "", "Wwwwwwwwwwwwwwwwwwwwwww", "(Lorg/json/JSONObject;)V", "describeContents", "()I", "dest", "flags", "writeToParcel", "(Landroid/os/Parcel;I)V", "url", "Wwwwwwwww", "(Ljava/lang/String;Lcom/facebook/login/LoginClient$Request;)V", "Landroid/os/Bundle;", "values", "Wwwwwww", "(Landroid/os/Bundle;)Z", "Wwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "currentPackage", "Wwwwwwwwwwwwwwwwwwwww", "expectedChallenge", "validRedirectURI", "Wwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "nameForLogging", "Lcom/facebook/AccessTokenSource;", "Wwwwwwwwwwwwwwwwww", "Lcom/facebook/AccessTokenSource;", "Wwwwwwwwwwwwwwww", "()Lcom/facebook/AccessTokenSource;", "tokenSource", "Wwwwwwwwww", "developerDefinedRedirectURI", "Wwwwwwwwwww", "chromePackage", "Companion", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class CustomTabLoginMethodHandler extends WebLoginMethodHandler {
    @JvmField

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static boolean f6913Wwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final AccessTokenSource f6914Wwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f6915Wwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f6916Wwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f6917Wwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f6918Wwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @JvmField
    @NotNull
    public static final Parcelable.Creator<CustomTabLoginMethodHandler> CREATOR = new Parcelable.Creator<CustomTabLoginMethodHandler>() { // from class: com.facebook.login.CustomTabLoginMethodHandler$Companion$CREATOR$1
        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public CustomTabLoginMethodHandler[] newArray(int i) {
            return new CustomTabLoginMethodHandler[i];
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public CustomTabLoginMethodHandler createFromParcel(@NotNull Parcel parcel) {
            return new CustomTabLoginMethodHandler(parcel);
        }
    };

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00020\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/facebook/login/CustomTabLoginMethodHandler$Companion;", "", "()V", "API_EC_DIALOG_CANCEL", "", "CHALLENGE_LENGTH", "CREATOR", "Landroid/os/Parcelable$Creator;", "Lcom/facebook/login/CustomTabLoginMethodHandler;", "CUSTOM_TAB_REQUEST_CODE", "OAUTH_DIALOG", "", "calledThroughLoggedOutAppSwitch", "", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public CustomTabLoginMethodHandler(@NotNull LoginClient loginClient) {
        super(loginClient);
        this.f6915Wwwwwwwwwwwwwwwwwww = "custom_tab";
        this.f6914Wwwwwwwwwwwwwwwwww = AccessTokenSource.CHROME_CUSTOM_TAB;
        this.f6917Wwwwwwwwwwwwwwwwwwwww = Utility.Wwwwwwwwwwwwwww(20);
        f6913Wwwwwwwwwwwwwwwww = false;
        CustomTabUtils customTabUtils = CustomTabUtils.INSTANCE;
        this.f6916Wwwwwwwwwwwwwwwwwwww = CustomTabUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwww());
    }

    public static final void Wwwwwwww(CustomTabLoginMethodHandler customTabLoginMethodHandler, LoginClient.Request request, Bundle bundle) {
        try {
            customTabLoginMethodHandler.Wwwwwwwwwwwwww(request, customTabLoginMethodHandler.Wwwwwwwwwwwwwwwwwwwwwwww(request, bundle), null);
        } catch (FacebookException e) {
            customTabLoginMethodHandler.Wwwwwwwwwwwwww(request, null, e);
        }
    }

    public final boolean Wwwwwww(Bundle bundle) {
        try {
            String string = bundle.getString("state");
            if (string == null) {
                return false;
            }
            return Intrinsics.areEqual(new JSONObject(string).getString("7_challenge"), this.f6917Wwwwwwwwwwwwwwwwwwwww);
        } catch (JSONException unused) {
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00c4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void Wwwwwwwww(java.lang.String r7, final com.facebook.login.LoginClient.Request r8) {
        /*
            r6 = this;
            if (r7 == 0) goto Ld1
            java.lang.String r0 = "fbconnect://cct."
            r1 = 0
            r2 = 2
            r3 = 0
            boolean r0 = kotlin.text.StringsKt.startsWith$default(r7, r0, r1, r2, r3)
            if (r0 != 0) goto L17
            java.lang.String r0 = super.Wwwwwwwwwwwwwwwwwwwwwwwwwwww()
            boolean r0 = kotlin.text.StringsKt.startsWith$default(r7, r0, r1, r2, r3)
            if (r0 == 0) goto Ld1
        L17:
            android.net.Uri r7 = android.net.Uri.parse(r7)
            com.facebook.internal.Utility r0 = com.facebook.internal.Utility.INSTANCE
            java.lang.String r0 = r7.getQuery()
            android.os.Bundle r0 = com.facebook.internal.Utility.Illlllllllllllllll(r0)
            java.lang.String r7 = r7.getFragment()
            android.os.Bundle r7 = com.facebook.internal.Utility.Illlllllllllllllll(r7)
            r0.putAll(r7)
            boolean r7 = r6.Wwwwwww(r0)
            if (r7 != 0) goto L41
            com.facebook.FacebookException r7 = new com.facebook.FacebookException
            java.lang.String r0 = "Invalid state parameter"
            r7.<init>(r0)
            super.Wwwwwwwwwwwwww(r8, r3, r7)
            return
        L41:
            java.lang.String r7 = "error"
            java.lang.String r7 = r0.getString(r7)
            if (r7 != 0) goto L4f
            java.lang.String r7 = "error_type"
            java.lang.String r7 = r0.getString(r7)
        L4f:
            java.lang.String r1 = "error_msg"
            java.lang.String r1 = r0.getString(r1)
            if (r1 != 0) goto L5d
            java.lang.String r1 = "error_message"
            java.lang.String r1 = r0.getString(r1)
        L5d:
            if (r1 != 0) goto L65
            java.lang.String r1 = "error_description"
            java.lang.String r1 = r0.getString(r1)
        L65:
            java.lang.String r2 = "error_code"
            java.lang.String r2 = r0.getString(r2)
            r4 = -1
            if (r2 != 0) goto L6f
            goto L74
        L6f:
            int r2 = java.lang.Integer.parseInt(r2)     // Catch: java.lang.NumberFormatException -> L74
            goto L75
        L74:
            r2 = r4
        L75:
            boolean r5 = com.facebook.internal.Utility.Kk(r7)
            if (r5 == 0) goto L9c
            boolean r5 = com.facebook.internal.Utility.Kk(r1)
            if (r5 == 0) goto L9c
            if (r2 != r4) goto L9c
            java.lang.String r7 = "access_token"
            boolean r7 = r0.containsKey(r7)
            if (r7 == 0) goto L8f
            super.Wwwwwwwwwwwwww(r8, r0, r3)
            return
        L8f:
            java.util.concurrent.Executor r7 = com.facebook.FacebookSdk.Wwwwwwwwwwwwww()
            com.facebook.login.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww r1 = new com.facebook.login.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            r1.<init>()
            r7.execute(r1)
            goto Ld1
        L9c:
            if (r7 == 0) goto Lb7
            java.lang.String r0 = "access_denied"
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r7, r0)
            if (r0 != 0) goto Lae
            java.lang.String r0 = "OAuthAccessDeniedException"
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r7, r0)
            if (r0 == 0) goto Lb7
        Lae:
            com.facebook.FacebookOperationCanceledException r7 = new com.facebook.FacebookOperationCanceledException
            r7.<init>()
            super.Wwwwwwwwwwwwww(r8, r3, r7)
            goto Ld1
        Lb7:
            r0 = 4201(0x1069, float:5.887E-42)
            if (r2 != r0) goto Lc4
            com.facebook.FacebookOperationCanceledException r7 = new com.facebook.FacebookOperationCanceledException
            r7.<init>()
            super.Wwwwwwwwwwwwww(r8, r3, r7)
            goto Ld1
        Lc4:
            com.facebook.FacebookRequestError r0 = new com.facebook.FacebookRequestError
            r0.<init>(r2, r7, r1)
            com.facebook.FacebookServiceException r7 = new com.facebook.FacebookServiceException
            r7.<init>(r0, r1)
            super.Wwwwwwwwwwwwww(r8, r3, r7)
        Ld1:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.login.CustomTabLoginMethodHandler.Wwwwwwwww(java.lang.String, com.facebook.login.LoginClient$Request):void");
    }

    public final String Wwwwwwwwww() {
        return super.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final String Wwwwwwwwwww() {
        String str = this.f6918Wwwwwwwwwwwwwwwwwwwwww;
        if (str != null) {
            return str;
        }
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = CustomTabUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f6918Wwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    @Override // com.facebook.login.WebLoginMethodHandler
    @NotNull
    public AccessTokenSource Wwwwwwwwwwwwwwww() {
        return this.f6914Wwwwwwwwwwwwwwwwww;
    }

    @Override // com.facebook.login.WebLoginMethodHandler
    @Nullable
    public String Wwwwwwwwwwwwwwwww() {
        return "chrome_custom_tab";
    }

    @Override // com.facebook.login.LoginMethodHandler
    public int Wwwwwwwwwwwwwwwwwwww(@NotNull LoginClient.Request request) {
        LoginClient Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww().length() == 0) {
            return 0;
        }
        Bundle Wwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwww(request), request);
        if (f6913Wwwwwwwwwwwwwwwww) {
            Wwwwwwwwwwwwwwwwwww2.putString("cct_over_app_switch", "1");
        }
        if (FacebookSdk.f5998Wwwwwwwwwwwwwwwwwww) {
            if (request.Wwwwwwwwwwwwwwwww()) {
                CustomTabPrefetchHelper.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InstagramCustomTab.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("oauth", Wwwwwwwwwwwwwwwwwww2));
            } else {
                CustomTabPrefetchHelper.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(CustomTab.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("oauth", Wwwwwwwwwwwwwwwwwww2));
            }
        }
        FragmentActivity Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return 0;
        }
        Intent intent = new Intent(Wwwwwwwwwwwwwwwwwwwwwwwwww2, CustomTabMainActivity.class);
        intent.putExtra(CustomTabMainActivity.f5958Wwwwwwwwwwwwwwwwwwwwwww, "oauth");
        intent.putExtra(CustomTabMainActivity.f5957Wwwwwwwwwwwwwwwwwwwwww, Wwwwwwwwwwwwwwwwwww2);
        intent.putExtra(CustomTabMainActivity.f5956Wwwwwwwwwwwwwwwwwwwww, Wwwwwwwwwww());
        intent.putExtra(CustomTabMainActivity.f5954Wwwwwwwwwwwwwwwwwww, request.Wwwwwwwwwwwwwwwwwwwwwwww().toString());
        Fragment Wwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            Wwwwwwwwwwwwwwwwwwwwwwww2.startActivityForResult(intent, 1);
        }
        return 1;
    }

    @Override // com.facebook.login.LoginMethodHandler
    public void Wwwwwwwwwwwwwwwwwwwwwww(@NotNull JSONObject jSONObject) throws JSONException {
        jSONObject.put("7_challenge", this.f6917Wwwwwwwwwwwwwwwwwwwww);
    }

    @Override // com.facebook.login.LoginMethodHandler
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2, @Nullable Intent intent) {
        if (intent != null && intent.getBooleanExtra(CustomTabMainActivity.f5952Wwwwwwwwwwwwwwwww, false)) {
            return super.Wwwwwwwwwwwwwwwwwwwwwwwww(i, i2, intent);
        }
        if (i != 1) {
            return super.Wwwwwwwwwwwwwwwwwwwwwwwww(i, i2, intent);
        }
        LoginClient.Request Wwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwww2 == null) {
            return false;
        }
        String str = null;
        if (i2 == -1) {
            if (intent != null) {
                str = intent.getStringExtra(CustomTabMainActivity.f5955Wwwwwwwwwwwwwwwwwwww);
            }
            Wwwwwwwww(str, Wwwwwwwwwwwwwwwwwwww2);
            return true;
        }
        super.Wwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwww2, null, new FacebookOperationCanceledException());
        return false;
    }

    @Override // com.facebook.login.LoginMethodHandler
    @NotNull
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6916Wwwwwwwwwwwwwwwwwwww;
    }

    @Override // com.facebook.login.LoginMethodHandler
    @NotNull
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6915Wwwwwwwwwwwwwwwwwww;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.login.LoginMethodHandler, android.os.Parcelable
    public void writeToParcel(@NotNull Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f6917Wwwwwwwwwwwwwwwwwwwww);
    }

    public CustomTabLoginMethodHandler(@NotNull Parcel parcel) {
        super(parcel);
        this.f6915Wwwwwwwwwwwwwwwwwww = "custom_tab";
        this.f6914Wwwwwwwwwwwwwwwwww = AccessTokenSource.CHROME_CUSTOM_TAB;
        this.f6917Wwwwwwwwwwwwwwwwwwwww = parcel.readString();
        CustomTabUtils customTabUtils = CustomTabUtils.INSTANCE;
        this.f6916Wwwwwwwwwwwwwwwwwwww = CustomTabUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwww());
    }
}
