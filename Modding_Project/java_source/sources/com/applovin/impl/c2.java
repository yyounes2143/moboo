package com.applovin.impl;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sensorsdata.analytics.android.sdk.SensorsDataInstrumented;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class c2 {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f3086a;
    private final Activity b;
    private AlertDialog c;
    private a d;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface a {
        void a();

        void b();
    }

    public c2(Activity activity, com.applovin.impl.sdk.k kVar) {
        this.f3086a = kVar;
        this.b = activity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SensorsDataInstrumented
    public /* synthetic */ void b(DialogInterface dialogInterface, int i) {
        this.d.a();
        SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c() {
        AlertDialog alertDialog = this.c;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d() {
        this.c = new AlertDialog.Builder(this.b).setTitle((CharSequence) this.f3086a.a(l4.c1)).setMessage((CharSequence) this.f3086a.a(l4.d1)).setCancelable(false).setPositiveButton((CharSequence) this.f3086a.a(l4.f1), new DialogInterface.OnClickListener() { // from class: com.applovin.impl.Wwwwwwwwwwwwwwwwwwww
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                c2.this.a(dialogInterface, i);
            }
        }).setNegativeButton((CharSequence) this.f3086a.a(l4.e1), new DialogInterface.OnClickListener() { // from class: com.applovin.impl.Wwwwwwwwwwwwwwwwwww
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                c2.this.b(dialogInterface, i);
            }
        }).show();
    }

    public void a(a aVar) {
        this.d = aVar;
    }

    public void e() {
        this.b.runOnUiThread(new Runnable() { // from class: com.applovin.impl.Wwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                c2.this.d();
            }
        });
    }

    public void a() {
        this.b.runOnUiThread(new Runnable() { // from class: com.applovin.impl.Wwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                c2.this.c();
            }
        });
    }

    public boolean b() {
        AlertDialog alertDialog = this.c;
        if (alertDialog != null) {
            return alertDialog.isShowing();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SensorsDataInstrumented
    public /* synthetic */ void a(DialogInterface dialogInterface, int i) {
        this.d.b();
        SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i);
    }
}
