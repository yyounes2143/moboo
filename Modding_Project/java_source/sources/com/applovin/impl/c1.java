package com.applovin.impl;

import android.content.Context;
import com.applovin.impl.sdk.l;
import com.google.android.gms.appset.AppSet;
import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.tasks.OnSuccessListener;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class c1 {

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a implements OnSuccessListener {
        @Override // com.google.android.gms.tasks.OnSuccessListener
        /* renamed from: a */
        public void onSuccess(AppSetIdInfo appSetIdInfo) {
            com.applovin.impl.sdk.l.a(new l.b(appSetIdInfo.getId(), appSetIdInfo.getScope()));
        }
    }

    public static void a(final Context context) {
        new Thread(new Runnable() { // from class: com.applovin.impl.Wwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                c1.b(context);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(Context context) {
        com.applovin.impl.sdk.l.a(u.b(context));
        if (z6.a("com.google.android.gms.appset.AppSet")) {
            try {
                AppSet.getClient(context).getAppSetIdInfo().addOnSuccessListener(new a());
            } catch (Throwable unused) {
            }
        }
    }
}
