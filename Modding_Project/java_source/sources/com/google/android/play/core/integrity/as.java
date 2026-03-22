package com.google.android.play.core.integrity;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.VisibleForTesting;
import androidx.media3.common.C;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.core.common.PlayCoreDialogWrapperActivity;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
final class as extends com.google.android.play.integrity.internal.q {
    @VisibleForTesting

    /* renamed from: a  reason: collision with root package name */
    final TaskCompletionSource f7697a;
    @VisibleForTesting
    final com.google.android.play.integrity.internal.ae b;
    private final com.google.android.play.integrity.internal.s c = new com.google.android.play.integrity.internal.s("RequestDialogCallbackImpl");
    private final String d;
    private final k e;
    private final Activity f;

    public as(Context context, k kVar, Activity activity, TaskCompletionSource taskCompletionSource, com.google.android.play.integrity.internal.ae aeVar) {
        this.d = context.getPackageName();
        this.e = kVar;
        this.f7697a = taskCompletionSource;
        this.f = activity;
        this.b = aeVar;
    }

    @Override // com.google.android.play.integrity.internal.r
    public final void b(Bundle bundle) {
        this.b.v(this.f7697a);
        this.c.d("onRequestDialog(%s)", this.d);
        ApiException a2 = this.e.a(bundle);
        if (a2 != null) {
            this.f7697a.trySetException(a2);
            return;
        }
        PendingIntent pendingIntent = (PendingIntent) bundle.getParcelable("dialog.intent");
        if (pendingIntent == null) {
            this.c.b("onRequestDialog(%s): got null dialog intent", this.d);
            this.f7697a.trySetResult(0);
            return;
        }
        Intent intent = new Intent(this.f, PlayCoreDialogWrapperActivity.class);
        intent.putExtra("confirmation_intent", pendingIntent);
        intent.setFlags(C.BUFFER_FLAG_LAST_SAMPLE);
        intent.putExtra("result_receiver", new ar(this, this.b.c()));
        this.c.a("Starting dialog intent...", new Object[0]);
        this.f.startActivityForResult(intent, 0);
    }
}
