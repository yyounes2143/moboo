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
final class zzbf extends com.google.android.gms.internal.play_billing.zzaf {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ResultReceiver f2485Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final WeakReference f2486Wwwwwwwwwwwwwwwwwwwwwwwww;

    public /* synthetic */ zzbf(WeakReference weakReference, ResultReceiver resultReceiver, zzbl zzblVar) {
        this.f2486Wwwwwwwwwwwwwwwwwwwwwwwww = weakReference;
        this.f2485Wwwwwwwwwwwwwwwwwwwwwwww = resultReceiver;
    }

    @Override // com.google.android.gms.internal.play_billing.zzag
    public final void zza(Bundle bundle) throws RemoteException {
        if (bundle == null) {
            this.f2485Wwwwwwwwwwwwwwwwwwwwwwww.send(6, null);
        } else if (!bundle.containsKey("RESPONSE_CODE")) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "Response bundle doesn't contain a response code");
            this.f2485Wwwwwwwwwwwwwwwwwwwwwwww.send(6, bundle);
        } else {
            int zzb = com.google.android.gms.internal.play_billing.zze.zzb(bundle, "BillingClient");
            if (zzb != 0) {
                com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "Unable to launch intent for external offer dialog" + zzb);
                this.f2485Wwwwwwwwwwwwwwwwwwwwwwww.send(zzb, bundle);
                return;
            }
            PendingIntent pendingIntent = (PendingIntent) bundle.getParcelable("EXTERNAL_PAYMENT_DIALOG_INTENT");
            if (pendingIntent == null) {
                com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "The PendingIntent for the external offer dialog is null");
                Bundle bundle2 = new Bundle();
                bundle2.putInt("RESPONSE_CODE", 6);
                bundle2.putString("DEBUG_MESSAGE", "An internal error occurred.");
                this.f2485Wwwwwwwwwwwwwwwwwwwwwwww.send(6, bundle2);
                return;
            }
            try {
                Activity activity = (Activity) this.f2486Wwwwwwwwwwwwwwwwwwwwwwwww.get();
                Intent intent = new Intent(activity, ProxyBillingActivityV2.class);
                intent.putExtra("external_payment_dialog_result_receiver", this.f2485Wwwwwwwwwwwwwwwwwwwwwwww);
                intent.putExtra("external_payment_dialog_pending_intent", pendingIntent);
                activity.startActivity(intent);
            } catch (RuntimeException e) {
                com.google.android.gms.internal.play_billing.zze.zzm("BillingClient", "Runtime error while launching intent for the external offer dialog.", e);
                Bundle bundle3 = new Bundle();
                bundle3.putInt("RESPONSE_CODE", 6);
                bundle3.putString("DEBUG_MESSAGE", "An internal error occurred.");
                bundle3.putInt("INTERNAL_LOG_ERROR_REASON", 98);
                bundle3.putString("INTERNAL_LOG_ERROR_ADDITIONAL_DETAILS", String.format("%s: %s", e.getClass().getName(), com.google.android.gms.internal.play_billing.zzbf.zzb(e.getMessage())));
                this.f2485Wwwwwwwwwwwwwwwwwwwwwwww.send(6, bundle3);
            }
        }
    }
}
