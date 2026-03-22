package app.meedu.flutter_facebook_auth;

import android.app.Activity;
import android.os.Bundle;
import com.facebook.AccessToken;
import com.facebook.CallbackManager;
import com.facebook.GraphRequest;
import com.facebook.GraphResponse;
import com.facebook.LoginStatusCallback;
import com.facebook.login.LoginBehavior;
import com.facebook.login.LoginManager;
import com.google.ads.mediation.vungle.VungleConstants;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import io.flutter.plugin.common.MethodChannel;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class FacebookAuth {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public FacebookLoginResultDelegate f1756Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final LoginManager f1757Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public FacebookAuth() {
        LoginManager Wwwwwwwwwwwwwwwwwwwww2 = LoginManager.Wwwwwwwwwwwwwwwwwwwww();
        this.f1757Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwww2;
        CallbackManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = CallbackManager.Factory.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        FacebookLoginResultDelegate facebookLoginResultDelegate = new FacebookLoginResultDelegate(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        this.f1756Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = facebookLoginResultDelegate;
        Wwwwwwwwwwwwwwwwwwwww2.Wwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, facebookLoginResultDelegate);
    }

    public static HashMap<String, Object> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AccessToken accessToken) {
        return new HashMap<String, Object>() { // from class: app.meedu.flutter_facebook_auth.FacebookAuth.3
            {
                put(BidResponsed.KEY_TOKEN, AccessToken.this.Wwwwwwwwwwwwwwwwwwwwww());
                put(VungleConstants.KEY_USER_ID, AccessToken.this.Wwwwwwwwwwwwwwwwwwwww());
                put("expires", Long.valueOf(AccessToken.this.Wwwwwwwwwwwwwwwwwwwwwwwwwww().getTime()));
                put("applicationId", AccessToken.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                put("lastRefresh", Long.valueOf(AccessToken.this.Wwwwwwwwwwwwwwwwwwwwwwwww().getTime()));
                put("isExpired", Boolean.valueOf(AccessToken.this.Wwwwwwwwwwwwwwwwwwww()));
                put("grantedPermissions", new ArrayList(AccessToken.this.Wwwwwwwwwwwwwwwwwwwwwwww()));
                put("declinedPermissions", new ArrayList(AccessToken.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
                put("dataAccessExpirationTime", Long.valueOf(AccessToken.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().getTime()));
            }
        };
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        LoginBehavior loginBehavior;
        str.getClass();
        char c = 65535;
        switch (str.hashCode()) {
            case -2088866749:
                if (str.equals("DIALOG_ONLY")) {
                    c = 0;
                    break;
                }
                break;
            case -361463084:
                if (str.equals("NATIVE_ONLY")) {
                    c = 1;
                    break;
                }
                break;
            case 93577687:
                if (str.equals("WEB_ONLY")) {
                    c = 2;
                    break;
                }
                break;
            case 639074801:
                if (str.equals("DEVICE_AUTH")) {
                    c = 3;
                    break;
                }
                break;
            case 1052231445:
                if (str.equals("KATANA_ONLY")) {
                    c = 4;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                loginBehavior = LoginBehavior.DIALOG_ONLY;
                break;
            case 1:
                loginBehavior = LoginBehavior.NATIVE_ONLY;
                break;
            case 2:
                loginBehavior = LoginBehavior.WEB_ONLY;
                break;
            case 3:
                loginBehavior = LoginBehavior.DEVICE_AUTH;
                break;
            case 4:
                loginBehavior = LoginBehavior.KATANA_ONLY;
                break;
            default:
                loginBehavior = LoginBehavior.NATIVE_WITH_FALLBACK;
                break;
        }
        this.f1757Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Kkkkkkkkkkkkkkkkkkkkk(loginBehavior);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Activity activity, List<String> list, MethodChannel.Result result) {
        if (AccessToken.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != null) {
            this.f1757Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwww();
        }
        if (this.f1756Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(result)) {
            this.f1757Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwww(activity, list);
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result result) {
        if (AccessToken.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != null) {
            this.f1757Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwww();
        }
        result.success(null);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, final MethodChannel.Result result) {
        GraphRequest Wwwwwww2 = GraphRequest.Wwwwwww(AccessToken.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), new GraphRequest.GraphJSONObjectCallback() { // from class: app.meedu.flutter_facebook_auth.FacebookAuth.2
            @Override // com.facebook.GraphRequest.GraphJSONObjectCallback
            public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JSONObject jSONObject, GraphResponse graphResponse) {
                try {
                    result.success(jSONObject.toString());
                } catch (Exception e) {
                    result.error("FAILED", e.getMessage(), null);
                }
            }
        });
        Bundle bundle = new Bundle();
        bundle.putString("fields", str);
        Wwwwwww2.Kkkkkkkkkkkkkkkkkkkkkkkk(bundle);
        Wwwwwww2.Wwwwwwwwwwwwwwwwwwwwwww();
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodChannel.Result result) {
        AccessToken Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = AccessToken.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && !Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwww()) {
            result.success(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AccessToken.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
        } else {
            result.success(null);
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Activity activity, final MethodChannel.Result result) {
        LoginManager.Wwwwwwwwwwwwwwwwwwwww().Wwww(activity, new LoginStatusCallback() { // from class: app.meedu.flutter_facebook_auth.FacebookAuth.1
            @Override // com.facebook.LoginStatusCallback
            public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Exception exc) {
                result.error("FAILED", exc.getMessage(), null);
            }

            @Override // com.facebook.LoginStatusCallback
            public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AccessToken accessToken) {
                result.success(FacebookAuth.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(accessToken));
            }

            @Override // com.facebook.LoginStatusCallback
            public void onFailure() {
                result.error("CANCELLED", "User has cancelled login with facebook", null);
            }
        });
    }
}
