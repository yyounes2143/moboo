package app.meedu.flutter_facebook_auth;

import android.content.Intent;
import com.facebook.CallbackManager;
import com.facebook.FacebookCallback;
import com.facebook.FacebookException;
import com.facebook.login.LoginResult;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class FacebookLoginResultDelegate implements FacebookCallback<LoginResult>, PluginRegistry.ActivityResultListener {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public MethodChannel.Result f1762Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final CallbackManager f1763Wwwwwwwwwwwwwwwwwwwwwwwww;

    public FacebookLoginResultDelegate(CallbackManager callbackManager) {
        this.f1763Wwwwwwwwwwwwwwwwwwwwwwwww = callbackManager;
    }

    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result result) {
        if (this.f1762Wwwwwwwwwwwwwwwwwwwwwwww != null) {
            result.error("OPERATION_IN_PROGRESS", "The method login was called while another Facebook operation was in progress.", null);
            return false;
        }
        this.f1762Wwwwwwwwwwwwwwwwwwwwwwww = result;
        return true;
    }

    @Override // com.facebook.FacebookCallback
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public void onSuccess(LoginResult loginResult) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FacebookAuth.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(loginResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Object obj) {
        MethodChannel.Result result = this.f1762Wwwwwwwwwwwwwwwwwwwwwwww;
        if (result != null) {
            result.success(obj);
            this.f1762Wwwwwwwwwwwwwwwwwwwwwwww = null;
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, String str2) {
        MethodChannel.Result result = this.f1762Wwwwwwwwwwwwwwwwwwwwwwww;
        if (result != null) {
            result.error(str, str2, null);
            this.f1762Wwwwwwwwwwwwwwwwwwwwwwww = null;
        }
    }

    @Override // com.facebook.FacebookCallback
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FacebookException facebookException) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("FAILED", facebookException.getMessage());
    }

    @Override // io.flutter.plugin.common.PluginRegistry.ActivityResultListener
    public boolean onActivityResult(int i, int i2, Intent intent) {
        return this.f1763Wwwwwwwwwwwwwwwwwwwwwwwww.onActivityResult(i, i2, intent);
    }

    @Override // com.facebook.FacebookCallback
    public void onCancel() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("CANCELLED", "User has cancelled login with facebook");
    }
}
