package com.android.billingclient.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.ResultReceiver;
import java.lang.ref.WeakReference;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
final class zzbd extends com.google.android.gms.internal.play_billing.zzab {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ResultReceiver f2480Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final WeakReference f2481Wwwwwwwwwwwwwwwwwwwwwwwww;

    public /* synthetic */ zzbd(WeakReference weakReference, ResultReceiver resultReceiver, zzbl zzblVar) {
        this.f2481Wwwwwwwwwwwwwwwwwwwwwwwww = weakReference;
        this.f2480Wwwwwwwwwwwwwwwwwwwwwwww = resultReceiver;
    }

    @Override // com.google.android.gms.internal.play_billing.zzac
    public final void zza(Bundle bundle) throws RemoteException {
        if (bundle == null) {
            this.f2480Wwwwwwwwwwwwwwwwwwwwwwww.send(6, null);
        } else if (!bundle.containsKey("RESPONSE_CODE")) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "Response bundle doesn't contain a response code");
            this.f2480Wwwwwwwwwwwwwwwwwwwwwwww.send(6, bundle);
        } else {
            int zzb = com.google.android.gms.internal.play_billing.zze.zzb(bundle, "BillingClient");
            if (zzb != 0) {
                com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "Unable to launch intent for alternative billing only dialog" + zzb);
                this.f2480Wwwwwwwwwwwwwwwwwwwwwwww.send(zzb, bundle);
                return;
            }
            PendingIntent pendingIntent = (PendingIntent) bundle.getParcelable("ALTERNATIVE_BILLING_ONLY_DIALOG_INTENT");
            if (pendingIntent == null) {
                com.google.android.gms.internal.play_billing.zze.zzk("BillingClient", "User has acknowledged the alternative billing only dialog before.");
                this.f2480Wwwwwwwwwwwwwwwwwwwwwwww.send(0, bundle);
                return;
            }
            try {
                Activity activity = (Activity) this.f2481Wwwwwwwwwwwwwwwwwwwwwwwww.get();
                Intent intent = new Intent(activity, ProxyBillingActivityV2.class);
                intent.putExtra("alternative_billing_only_dialog_result_receiver", this.f2480Wwwwwwwwwwwwwwwwwwwwwwww);
                intent.putExtra("ALTERNATIVE_BILLING_ONLY_DIALOG_INTENT", pendingIntent);
                activity.startActivity(intent);
            } catch (RuntimeException e) {
                com.google.android.gms.internal.play_billing.zze.zzm("BillingClient", "Runtime error while launching intent for alternative billing only dialog.", e);
                Bundle bundle2 = new Bundle();
                bundle2.putInt("RESPONSE_CODE", 6);
                bundle2.putString("DEBUG_MESSAGE", "An internal error occurred.");
                bundle2.putInt("INTERNAL_LOG_ERROR_REASON", 75);
                bundle2.putString("INTERNAL_LOG_ERROR_ADDITIONAL_DETAILS", String.format("%s: %s", e.getClass().getName(), com.google.android.gms.internal.play_billing.zzbf.zzb(e.getMessage())));
                this.f2480Wwwwwwwwwwwwwwwwwwwwwwww.send(6, bundle2);
            }
        }
    }
}
