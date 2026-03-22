package app.meedu.flutter_facebook_auth;

import androidx.annotation.NonNull;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class FlutterFacebookAuthPlugin implements FlutterPlugin, MethodChannel.MethodCallHandler, ActivityAware {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public MethodChannel f1764Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ActivityPluginBinding f1765Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final FacebookAuth f1766Wwwwwwwwwwwwwwwwwwwwwwwww = new FacebookAuth();

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f1765Wwwwwwwwwwwwwwwwwwwwwwww.removeActivityResultListener(this.f1766Wwwwwwwwwwwwwwwwwwwwwwwww.f1756Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        this.f1765Wwwwwwwwwwwwwwwwwwwwwwww = null;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ActivityPluginBinding activityPluginBinding) {
        this.f1765Wwwwwwwwwwwwwwwwwwwwwwww = activityPluginBinding;
        activityPluginBinding.addActivityResultListener(this.f1766Wwwwwwwwwwwwwwwwwwwwwwwww.f1756Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(@NonNull ActivityPluginBinding activityPluginBinding) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(activityPluginBinding);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(@NonNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        MethodChannel methodChannel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "app.meedu/flutter_facebook_auth");
        this.f1764Wwwwwwwwwwwwwwwwwwwwwww = methodChannel;
        methodChannel.setMethodCallHandler(this);
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(@NonNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.f1764Wwwwwwwwwwwwwwwwwwwwwww.setMethodCallHandler(null);
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(@NonNull MethodCall methodCall, @NonNull MethodChannel.Result result) {
        String str = methodCall.method;
        str.getClass();
        char c = 65535;
        switch (str.hashCode()) {
            case -1682957889:
                if (str.equals("getAccessToken")) {
                    c = 0;
                    break;
                }
                break;
            case -1097360022:
                if (str.equals("logOut")) {
                    c = 1;
                    break;
                }
                break;
            case 103149417:
                if (str.equals("login")) {
                    c = 2;
                    break;
                }
                break;
            case 1120441817:
                if (str.equals("expressLogin")) {
                    c = 3;
                    break;
                }
                break;
            case 1810935691:
                if (str.equals("getUserData")) {
                    c = 4;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                this.f1766Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(result);
                return;
            case 1:
                this.f1766Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(result);
                return;
            case 2:
                this.f1766Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww((String) methodCall.argument("loginBehavior"));
                this.f1766Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f1765Wwwwwwwwwwwwwwwwwwwwwwww.getActivity(), (List) methodCall.argument("permissions"), result);
                return;
            case 3:
                this.f1766Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f1765Wwwwwwwwwwwwwwwwwwwwwwww.getActivity(), result);
                return;
            case 4:
                this.f1766Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((String) methodCall.argument("fields"), result);
                return;
            default:
                result.notImplemented();
                return;
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(@NonNull ActivityPluginBinding activityPluginBinding) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(activityPluginBinding);
    }
}
