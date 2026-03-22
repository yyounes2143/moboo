package com.facebook.login;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import androidx.activity.result.ActivityResultLauncher;
import androidx.annotation.VisibleForTesting;
import androidx.fragment.app.Fragment;
import com.facebook.AccessTokenSource;
import com.facebook.FacebookException;
import com.facebook.FacebookRequestError;
import com.facebook.FacebookSdk;
import com.facebook.FacebookServiceException;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.Utility;
import com.facebook.login.LoginClient;
import com.facebook.login.LoginMethodHandler;
import com.vungle.ads.internal.ui.AdActivity;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\b'\u0018\u00002\u00020\u0001B\u0011\b\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u0011\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0004\u0010\bJ)\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J7\u0010\u0018\u001a\u00020\u00172\b\u0010\u0012\u001a\u0004\u0018\u00010\u00112\b\u0010\u0014\u001a\u0004\u0018\u00010\u00132\b\u0010\u0015\u001a\u0004\u0018\u00010\u00132\b\u0010\u0016\u001a\u0004\u0018\u00010\u0013H\u0014¢\u0006\u0004\b\u0018\u0010\u0019J\u001f\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u001aH\u0014¢\u0006\u0004\b\u001c\u0010\u001dJ!\u0010\u001e\u001a\u00020\u00172\b\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\r\u001a\u00020\fH\u0014¢\u0006\u0004\b\u001e\u0010\u001fJ\u001b\u0010 \u001a\u0004\u0018\u00010\u00132\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0014¢\u0006\u0004\b \u0010!J\u001b\u0010\"\u001a\u0004\u0018\u00010\u00132\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0014¢\u0006\u0004\b\"\u0010!J!\u0010$\u001a\u00020\u000e2\b\u0010#\u001a\u0004\u0018\u00010\f2\u0006\u0010\n\u001a\u00020\tH\u0014¢\u0006\u0004\b$\u0010%J\u001f\u0010&\u001a\u00020\u00172\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u001aH\u0002¢\u0006\u0004\b&\u0010\u001dJ\u0019\u0010)\u001a\u00020\u00172\b\u0010(\u001a\u0004\u0018\u00010'H\u0002¢\u0006\u0004\b)\u0010*J\u0017\u0010+\u001a\u00020\u000e2\u0006\u0010#\u001a\u00020\fH\u0002¢\u0006\u0004\b+\u0010,R\u001a\u00102\u001a\u00020-8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b.\u0010/\u001a\u0004\b0\u00101¨\u00063"}, d2 = {"Lcom/facebook/login/NativeAppLoginMethodHandler;", "Lcom/facebook/login/LoginMethodHandler;", "Lcom/facebook/login/LoginClient;", "loginClient", "<init>", "(Lcom/facebook/login/LoginClient;)V", "Landroid/os/Parcel;", "source", "(Landroid/os/Parcel;)V", "", "requestCode", "resultCode", "Landroid/content/Intent;", "data", "", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(IILandroid/content/Intent;)Z", "Lcom/facebook/login/LoginClient$Request;", AdActivity.REQUEST_KEY_EXTRA, "", "error", "errorMessage", "errorCode", "", "Wwwwwwwwwwwww", "(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "Landroid/os/Bundle;", "extras", "Wwwwwwwwwwww", "(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V", "Wwwwwwwwwwwwww", "(Lcom/facebook/login/LoginClient$Request;Landroid/content/Intent;)V", "Wwwwwwwwwwwwwwwww", "(Landroid/os/Bundle;)Ljava/lang/String;", "Wwwwwwwwwwwwwwww", "intent", "Wwwwwwww", "(Landroid/content/Intent;I)Z", "Wwwwwwwwww", "Lcom/facebook/login/LoginClient$Result;", "outcome", "Wwwwwwwwwwwwwwwwww", "(Lcom/facebook/login/LoginClient$Result;)V", "Wwwwwwwwwww", "(Landroid/content/Intent;)Z", "Lcom/facebook/AccessTokenSource;", "Wwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/AccessTokenSource;", "Wwwwwwwwwwwwwww", "()Lcom/facebook/AccessTokenSource;", "tokenSource", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@VisibleForTesting(otherwise = 3)
/* loaded from: classes4.dex */
public abstract class NativeAppLoginMethodHandler extends LoginMethodHandler {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final AccessTokenSource f7040Wwwwwwwwwwwwwwwwwwwwwww;

    public NativeAppLoginMethodHandler(@NotNull LoginClient loginClient) {
        super(loginClient);
        this.f7040Wwwwwwwwwwwwwwwwwwwwwww = AccessTokenSource.FACEBOOK_APPLICATION_WEB;
    }

    public static final void Wwwwwwwww(NativeAppLoginMethodHandler nativeAppLoginMethodHandler, LoginClient.Request request, Bundle bundle) {
        try {
            nativeAppLoginMethodHandler.Wwwwwwwwwwww(request, nativeAppLoginMethodHandler.Wwwwwwwwwwwwwwwwwwwwwwww(request, bundle));
        } catch (FacebookServiceException e) {
            FacebookRequestError requestError = e.getRequestError();
            nativeAppLoginMethodHandler.Wwwwwwwwwwwww(request, requestError.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), requestError.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), String.valueOf(requestError.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
        } catch (FacebookException e2) {
            nativeAppLoginMethodHandler.Wwwwwwwwwwwww(request, null, e2.getMessage(), null);
        }
    }

    public boolean Wwwwwwww(@Nullable Intent intent, int i) {
        LoginFragment loginFragment;
        ActivityResultLauncher<Intent> Wwwwwwwwwwwwwwwwwwwwwwwww2;
        if (intent == null || !Wwwwwwwwwww(intent)) {
            return false;
        }
        Fragment Wwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwww();
        Unit unit = null;
        if (Wwwwwwwwwwwwwwwwwwwwwwww2 instanceof LoginFragment) {
            loginFragment = (LoginFragment) Wwwwwwwwwwwwwwwwwwwwwwww2;
        } else {
            loginFragment = null;
        }
        if (loginFragment != null && (Wwwwwwwwwwwwwwwwwwwwwwwww2 = loginFragment.Wwwwwwwwwwwwwwwwwwwwwwwww()) != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwww2.launch(intent);
            unit = Unit.INSTANCE;
        }
        if (unit == null) {
            return false;
        }
        return true;
    }

    public final void Wwwwwwwwww(final LoginClient.Request request, final Bundle bundle) {
        if (bundle.containsKey("code")) {
            Utility utility = Utility.INSTANCE;
            if (!Utility.Kk(bundle.getString("code"))) {
                FacebookSdk.Wwwwwwwwwwwwww().execute(new Runnable() { // from class: com.facebook.login.Wwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        NativeAppLoginMethodHandler.Wwwwwwwww(NativeAppLoginMethodHandler.this, request, bundle);
                    }
                });
                return;
            }
        }
        Wwwwwwwwwwww(request, bundle);
    }

    public final boolean Wwwwwwwwwww(Intent intent) {
        return !FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww().getPackageManager().queryIntentActivities(intent, 65536).isEmpty();
    }

    public void Wwwwwwwwwwww(@NotNull LoginClient.Request request, @NotNull Bundle bundle) {
        try {
            LoginMethodHandler.Companion companion = LoginMethodHandler.Companion;
            Wwwwwwwwwwwwwwwwww(LoginClient.Result.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(request, companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(request.Wwwwwwwwwwwwwwwwwwwww(), bundle, Wwwwwwwwwwwwwww(), request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()), companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle, request.Wwwwwwwwwwwwwwwwwwwwww())));
        } catch (FacebookException e) {
            Wwwwwwwwwwwwwwwwww(LoginClient.Result.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoginClient.Result.Companion, request, null, e.getMessage(), null, 8, null));
        }
    }

    public void Wwwwwwwwwwwww(@Nullable LoginClient.Request request, @Nullable String str, @Nullable String str2, @Nullable String str3) {
        if (str != null && Intrinsics.areEqual(str, "logged_out")) {
            CustomTabLoginMethodHandler.f6913Wwwwwwwwwwwwwwwww = true;
            Wwwwwwwwwwwwwwwwww(null);
        } else if (CollectionsKt.contains(ServerProtocol.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), str)) {
            Wwwwwwwwwwwwwwwwww(null);
        } else if (CollectionsKt.contains(ServerProtocol.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), str)) {
            Wwwwwwwwwwwwwwwwww(LoginClient.Result.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(request, null));
        } else {
            Wwwwwwwwwwwwwwwwww(LoginClient.Result.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(request, str, str2, str3));
        }
    }

    public void Wwwwwwwwwwwwww(@Nullable LoginClient.Request request, @NotNull Intent intent) {
        Object obj;
        Bundle extras = intent.getExtras();
        String Wwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwww(extras);
        String str = null;
        if (extras != null && (obj = extras.get("error_code")) != null) {
            str = obj.toString();
        }
        if (Intrinsics.areEqual(ServerProtocol.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), str)) {
            Wwwwwwwwwwwwwwwwww(LoginClient.Result.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(request, Wwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwww(extras), str));
        } else {
            Wwwwwwwwwwwwwwwwww(LoginClient.Result.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(request, Wwwwwwwwwwwwwwwww2));
        }
    }

    @NotNull
    public AccessTokenSource Wwwwwwwwwwwwwww() {
        return this.f7040Wwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public String Wwwwwwwwwwwwwwww(@Nullable Bundle bundle) {
        String string;
        if (bundle == null) {
            string = null;
        } else {
            string = bundle.getString("error_message");
        }
        if (string == null) {
            if (bundle == null) {
                return null;
            }
            return bundle.getString("error_description");
        }
        return string;
    }

    @Nullable
    public String Wwwwwwwwwwwwwwwww(@Nullable Bundle bundle) {
        String string;
        if (bundle == null) {
            string = null;
        } else {
            string = bundle.getString("error");
        }
        if (string == null) {
            if (bundle == null) {
                return null;
            }
            return bundle.getString("error_type");
        }
        return string;
    }

    public final void Wwwwwwwwwwwwwwwwww(LoginClient.Result result) {
        if (result != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwww(result);
        } else {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwww();
        }
    }

    @Override // com.facebook.login.LoginMethodHandler
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2, @Nullable Intent intent) {
        String obj;
        LoginClient.Request Wwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwww();
        if (intent == null) {
            Wwwwwwwwwwwwwwwwww(LoginClient.Result.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwww2, "Operation canceled"));
        } else if (i2 == 0) {
            Wwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwww2, intent);
        } else if (i2 != -1) {
            Wwwwwwwwwwwwwwwwww(LoginClient.Result.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoginClient.Result.Companion, Wwwwwwwwwwwwwwwwwwww2, "Unexpected resultCode from authorization.", null, null, 8, null));
        } else {
            Bundle extras = intent.getExtras();
            if (extras == null) {
                Wwwwwwwwwwwwwwwwww(LoginClient.Result.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoginClient.Result.Companion, Wwwwwwwwwwwwwwwwwwww2, "Unexpected null from returned authorization data.", null, null, 8, null));
                return true;
            }
            String Wwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwww(extras);
            Object obj2 = extras.get("error_code");
            if (obj2 == null) {
                obj = null;
            } else {
                obj = obj2.toString();
            }
            String Wwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwww(extras);
            String string = extras.getString("e2e");
            if (!Utility.Kk(string)) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwww(string);
            }
            if (Wwwwwwwwwwwwwwwww2 == null && obj == null && Wwwwwwwwwwwwwwww2 == null && Wwwwwwwwwwwwwwwwwwww2 != null) {
                Wwwwwwwwww(Wwwwwwwwwwwwwwwwwwww2, extras);
            } else {
                Wwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwww2, obj);
            }
        }
        return true;
    }

    public NativeAppLoginMethodHandler(@NotNull Parcel parcel) {
        super(parcel);
        this.f7040Wwwwwwwwwwwwwwwwwwwwwww = AccessTokenSource.FACEBOOK_APPLICATION_WEB;
    }
}
