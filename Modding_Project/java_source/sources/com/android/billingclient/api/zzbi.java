package com.android.billingclient.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.ResultReceiver;
import java.lang.ref.WeakReference;
import java.util.concurrent.CancellationException;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
final class zzbi extends com.google.android.gms.internal.play_billing.zzao {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ResultReceiver f2493Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final WeakReference f2494Wwwwwwwwwwwwwwwwwwwwwwwww;

    public /* synthetic */ zzbi(WeakReference weakReference, ResultReceiver resultReceiver, zzbl zzblVar) {
        this.f2494Wwwwwwwwwwwwwwwwwwwwwwwww = weakReference;
        this.f2493Wwwwwwwwwwwwwwwwwwwwwwww = resultReceiver;
    }

    @Override // com.google.android.gms.internal.play_billing.zzap
    public final void zza(Bundle bundle) throws RemoteException {
        ResultReceiver resultReceiver = this.f2493Wwwwwwwwwwwwwwwwwwwwwwww;
        if (resultReceiver == null) {
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "Unable to send result for in-app messaging");
        } else if (bundle == null) {
            resultReceiver.send(0, null);
        } else {
            Activity activity = (Activity) this.f2494Wwwwwwwwwwwwwwwwwwwwwwwww.get();
            PendingIntent pendingIntent = (PendingIntent) bundle.getParcelable("KEY_LAUNCH_INTENT");
            if (activity != null && pendingIntent != null) {
                try {
                    Intent intent = new Intent(activity, ProxyBillingActivity.class);
                    intent.putExtra("in_app_message_result_receiver", this.f2493Wwwwwwwwwwwwwwwwwwwwwwww);
                    intent.putExtra("IN_APP_MESSAGE_INTENT", pendingIntent);
                    activity.startActivity(intent);
                    return;
                } catch (CancellationException e) {
                    this.f2493Wwwwwwwwwwwwwwwwwwwwwwww.send(0, null);
                    com.google.android.gms.internal.play_billing.zze.zzm("BillingClient", "Exception caught while launching intent for in-app messaging.", e);
                    return;
                }
            }
            this.f2493Wwwwwwwwwwwwwwwwwwwwwwww.send(0, null);
            com.google.android.gms.internal.play_billing.zze.zzl("BillingClient", "Unable to launch intent for in-app messaging");
        }
    }
}
