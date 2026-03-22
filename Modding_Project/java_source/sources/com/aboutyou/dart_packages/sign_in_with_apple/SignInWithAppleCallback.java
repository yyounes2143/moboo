package com.aboutyou.dart_packages.sign_in_with_apple;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.aboutyou.dart_packages.sign_in_with_apple.SignInWithApplePlugin;
import com.sensorsdata.analytics.android.sdk.SensorsDataInstrumented;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import io.flutter.Log;
import io.flutter.plugin.common.MethodChannel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\t\b\u0016¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014¨\u0006\b"}, d2 = {"Lcom/aboutyou/dart_packages/sign_in_with_apple/SignInWithAppleCallback;", "Landroid/app/Activity;", "<init>", "()V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "sign_in_with_apple_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SignInWithAppleCallback extends Activity {
    @Override // android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        String str;
        Uri data;
        super.onCreate(bundle);
        SignInWithApplePlugin.Companion companion = SignInWithApplePlugin.Companion;
        MethodChannel.Result Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            Intent intent = getIntent();
            if (intent != null && (data = intent.getData()) != null) {
                str = data.toString();
            } else {
                str = null;
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.success(str);
            companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null);
        } else {
            companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null);
            Log.e(SignInWithApplePluginKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), "Received Sign in with Apple callback, but 'lastAuthorizationRequestResult' function was `null`");
        }
        Function0<Unit> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.invoke();
            companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null);
        } else {
            Log.e(SignInWithApplePluginKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), "Received Sign in with Apple callback, but 'triggerMainActivityToHideChromeCustomTab' function was `null`");
        }
        finish();
    }

    @Override // android.app.Activity
    @SensorsDataInstrumented
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        PushAutoTrackHelper.onNewIntent(this, intent);
    }
}
