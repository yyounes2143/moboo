package com.android.billingclient.api;

import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import android.os.ResultReceiver;
import androidx.activity.ComponentActivity;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.IntentSenderRequest;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.apps.common.proguard.UsedByReflection;
/* compiled from: Proguard */
@UsedByReflection("PlatformActivityProxy")
/* loaded from: classes3.dex */
public class ProxyBillingActivityV2 extends ComponentActivity {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ResultReceiver f2374Wwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ResultReceiver f2375Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ActivityResultLauncher f2376Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ActivityResultLauncher f2377Wwwwwwwwwwwwwwwwwwwwwwwww;

    @VisibleForTesting
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(ActivityResult activityResult) {
        Bundle extras;
        Intent data = activityResult.getData();
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = com.google.android.gms.internal.play_billing.zze.zzf(data, "ProxyBillingActivityV2").Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        ResultReceiver resultReceiver = this.f2374Wwwwwwwwwwwwwwwwwwwwww;
        if (resultReceiver != null) {
            if (data == null) {
                extras = null;
            } else {
                extras = data.getExtras();
            }
            resultReceiver.send(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, extras);
        }
        if (activityResult.getResultCode() != -1 || Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != 0) {
            com.google.android.gms.internal.play_billing.zze.zzl("ProxyBillingActivityV2", String.format("External offer dialog finished with resultCode: %s and billing's responseCode: %s", Integer.valueOf(activityResult.getResultCode()), Integer.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)));
        }
        finish();
    }

    @VisibleForTesting
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(ActivityResult activityResult) {
        Bundle extras;
        Intent data = activityResult.getData();
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = com.google.android.gms.internal.play_billing.zze.zzf(data, "ProxyBillingActivityV2").Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        ResultReceiver resultReceiver = this.f2375Wwwwwwwwwwwwwwwwwwwwwww;
        if (resultReceiver != null) {
            if (data == null) {
                extras = null;
            } else {
                extras = data.getExtras();
            }
            resultReceiver.send(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, extras);
        }
        if (activityResult.getResultCode() != -1 || Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != 0) {
            int resultCode = activityResult.getResultCode();
            com.google.android.gms.internal.play_billing.zze.zzl("ProxyBillingActivityV2", "Alternative billing only dialog finished with resultCode " + resultCode + " and billing's responseCode: " + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        }
        finish();
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        this.f2377Wwwwwwwwwwwwwwwwwwwwwwwww = registerForActivityResult(new ActivityResultContracts.StartIntentSenderForResult(), new ActivityResultCallback() { // from class: com.android.billingclient.api.zzct
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                ProxyBillingActivityV2.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwww((ActivityResult) obj);
            }
        });
        this.f2376Wwwwwwwwwwwwwwwwwwwwwwww = registerForActivityResult(new ActivityResultContracts.StartIntentSenderForResult(), new ActivityResultCallback() { // from class: com.android.billingclient.api.zzcu
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                ProxyBillingActivityV2.this.Wwwwwwwwwwwwwwwwwwwwwwwwwww((ActivityResult) obj);
            }
        });
        if (bundle == null) {
            com.google.android.gms.internal.play_billing.zze.zzk("ProxyBillingActivityV2", "Launching Play Store billing dialog");
            if (getIntent().hasExtra("ALTERNATIVE_BILLING_ONLY_DIALOG_INTENT")) {
                this.f2375Wwwwwwwwwwwwwwwwwwwwwww = (ResultReceiver) getIntent().getParcelableExtra("alternative_billing_only_dialog_result_receiver");
                this.f2377Wwwwwwwwwwwwwwwwwwwwwwwww.launch(new IntentSenderRequest.Builder((PendingIntent) getIntent().getParcelableExtra("ALTERNATIVE_BILLING_ONLY_DIALOG_INTENT")).build());
            } else if (getIntent().hasExtra("external_payment_dialog_pending_intent")) {
                this.f2374Wwwwwwwwwwwwwwwwwwwwww = (ResultReceiver) getIntent().getParcelableExtra("external_payment_dialog_result_receiver");
                this.f2376Wwwwwwwwwwwwwwwwwwwwwwww.launch(new IntentSenderRequest.Builder((PendingIntent) getIntent().getParcelableExtra("external_payment_dialog_pending_intent")).build());
            }
        } else if (bundle.containsKey("alternative_billing_only_dialog_result_receiver")) {
            this.f2375Wwwwwwwwwwwwwwwwwwwwwww = (ResultReceiver) bundle.getParcelable("alternative_billing_only_dialog_result_receiver");
        } else if (bundle.containsKey("external_payment_dialog_result_receiver")) {
            this.f2374Wwwwwwwwwwwwwwwwwwwwww = (ResultReceiver) bundle.getParcelable("external_payment_dialog_result_receiver");
        }
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        ResultReceiver resultReceiver = this.f2375Wwwwwwwwwwwwwwwwwwwwwww;
        if (resultReceiver != null) {
            bundle.putParcelable("alternative_billing_only_dialog_result_receiver", resultReceiver);
        }
        ResultReceiver resultReceiver2 = this.f2374Wwwwwwwwwwwwwwwwwwwwww;
        if (resultReceiver2 != null) {
            bundle.putParcelable("external_payment_dialog_result_receiver", resultReceiver2);
        }
    }
}
