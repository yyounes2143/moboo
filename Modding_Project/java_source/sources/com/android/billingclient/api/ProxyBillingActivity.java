package com.android.billingclient.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.ResultReceiver;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.apps.common.proguard.UsedByReflection;
import com.sensorsdata.analytics.android.sdk.SensorsDataInstrumented;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
/* compiled from: Proguard */
@UsedByReflection("PlatformActivityProxy")
@zzl
/* loaded from: classes3.dex */
public class ProxyBillingActivity extends Activity {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f2369Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f2370Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f2371Wwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ResultReceiver f2372Wwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ResultReceiver f2373Wwwwwwwwwwwwwwwwwwwwwwwww;

    public final Intent Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Intent intent = new Intent("com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED");
        intent.setPackage(getApplicationContext().getPackageName());
        return intent;
    }

    public final Intent Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        Intent intent = new Intent("com.android.vending.billing.ALTERNATIVE_BILLING");
        intent.setPackage(getApplicationContext().getPackageName());
        intent.putExtra("ALTERNATIVE_BILLING_USER_CHOICE_DATA", str);
        return intent;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0080  */
    @Override // android.app.Activity
    @com.android.billingclient.api.zzl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onActivityResult(int r8, int r9, @androidx.annotation.Nullable android.content.Intent r10) {
        /*
            Method dump skipped, instructions count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.billingclient.api.ProxyBillingActivity.onActivityResult(int, int, android.content.Intent):void");
    }

    @Override // android.app.Activity
    @zzl
    public void onCreate(@Nullable Bundle bundle) {
        PendingIntent pendingIntent;
        super.onCreate(bundle);
        if (bundle == null) {
            com.google.android.gms.internal.play_billing.zze.zzk("ProxyBillingActivity", "Launching Play Store billing flow");
            this.f2369Wwwwwwwwwwwwwwwwwwwww = 100;
            if (getIntent().hasExtra("BUY_INTENT")) {
                pendingIntent = (PendingIntent) getIntent().getParcelableExtra("BUY_INTENT");
                if (getIntent().hasExtra("IS_FLOW_FROM_FIRST_PARTY_CLIENT") && getIntent().getBooleanExtra("IS_FLOW_FROM_FIRST_PARTY_CLIENT", false)) {
                    this.f2370Wwwwwwwwwwwwwwwwwwwwww = true;
                    this.f2369Wwwwwwwwwwwwwwwwwwwww = 110;
                }
            } else if (getIntent().hasExtra("SUBS_MANAGEMENT_INTENT")) {
                pendingIntent = (PendingIntent) getIntent().getParcelableExtra("SUBS_MANAGEMENT_INTENT");
                this.f2373Wwwwwwwwwwwwwwwwwwwwwwwww = (ResultReceiver) getIntent().getParcelableExtra("result_receiver");
            } else if (getIntent().hasExtra("IN_APP_MESSAGE_INTENT")) {
                pendingIntent = (PendingIntent) getIntent().getParcelableExtra("IN_APP_MESSAGE_INTENT");
                this.f2372Wwwwwwwwwwwwwwwwwwwwwwww = (ResultReceiver) getIntent().getParcelableExtra("in_app_message_result_receiver");
                this.f2369Wwwwwwwwwwwwwwwwwwwww = 101;
            } else {
                pendingIntent = null;
            }
            try {
                this.f2371Wwwwwwwwwwwwwwwwwwwwwww = true;
                startIntentSenderForResult(pendingIntent.getIntentSender(), this.f2369Wwwwwwwwwwwwwwwwwwwww, new Intent(), 0, 0, 0);
                return;
            } catch (IntentSender.SendIntentException e) {
                com.google.android.gms.internal.play_billing.zze.zzm("ProxyBillingActivity", "Got exception while trying to start a purchase flow.", e);
                ResultReceiver resultReceiver = this.f2373Wwwwwwwwwwwwwwwwwwwwwwwww;
                if (resultReceiver != null) {
                    resultReceiver.send(6, null);
                } else {
                    ResultReceiver resultReceiver2 = this.f2372Wwwwwwwwwwwwwwwwwwwwwwww;
                    if (resultReceiver2 != null) {
                        resultReceiver2.send(0, null);
                    } else {
                        Intent Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        if (this.f2370Wwwwwwwwwwwwwwwwwwwwww) {
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.putExtra("IS_FIRST_PARTY_PURCHASE", true);
                        }
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.putExtra("RESPONSE_CODE", 6);
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.putExtra("DEBUG_MESSAGE", "An internal error occurred.");
                        sendBroadcast(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                    }
                }
                this.f2371Wwwwwwwwwwwwwwwwwwwwwww = false;
                finish();
                return;
            }
        }
        com.google.android.gms.internal.play_billing.zze.zzk("ProxyBillingActivity", "Launching Play Store billing flow from savedInstanceState");
        this.f2371Wwwwwwwwwwwwwwwwwwwwwww = bundle.getBoolean("send_cancelled_broadcast_if_finished", false);
        if (bundle.containsKey("result_receiver")) {
            this.f2373Wwwwwwwwwwwwwwwwwwwwwwwww = (ResultReceiver) bundle.getParcelable("result_receiver");
        } else if (bundle.containsKey("in_app_message_result_receiver")) {
            this.f2372Wwwwwwwwwwwwwwwwwwwwwwww = (ResultReceiver) bundle.getParcelable("in_app_message_result_receiver");
        }
        this.f2370Wwwwwwwwwwwwwwwwwwwwww = bundle.getBoolean("IS_FLOW_FROM_FIRST_PARTY_CLIENT", false);
        this.f2369Wwwwwwwwwwwwwwwwwwwww = bundle.getInt("activity_code", 100);
    }

    @Override // android.app.Activity
    @zzl
    public void onDestroy() {
        super.onDestroy();
        if (isFinishing() && this.f2371Wwwwwwwwwwwwwwwwwwwwwww) {
            Intent Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.putExtra("RESPONSE_CODE", 1);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.putExtra("DEBUG_MESSAGE", "Billing dialog closed.");
            int i = this.f2369Wwwwwwwwwwwwwwwwwwwww;
            if (i == 110 || i == 100) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.putExtra("INTENT_SOURCE", "LAUNCH_BILLING_FLOW");
            }
            sendBroadcast(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        }
    }

    @Override // android.app.Activity
    @SensorsDataInstrumented
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        PushAutoTrackHelper.onNewIntent(this, intent);
    }

    @Override // android.app.Activity
    @zzl
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        ResultReceiver resultReceiver = this.f2373Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (resultReceiver != null) {
            bundle.putParcelable("result_receiver", resultReceiver);
        }
        ResultReceiver resultReceiver2 = this.f2372Wwwwwwwwwwwwwwwwwwwwwwww;
        if (resultReceiver2 != null) {
            bundle.putParcelable("in_app_message_result_receiver", resultReceiver2);
        }
        bundle.putBoolean("send_cancelled_broadcast_if_finished", this.f2371Wwwwwwwwwwwwwwwwwwwwwww);
        bundle.putBoolean("IS_FLOW_FROM_FIRST_PARTY_CLIENT", this.f2370Wwwwwwwwwwwwwwwwwwwwww);
        bundle.putInt("activity_code", this.f2369Wwwwwwwwwwwwwwwwwwwww);
    }
}
