package com.changdu.component.core;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.changdu.component.core.googleadid.GoogleAdId;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class a implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Context f5299a;
    public final /* synthetic */ CDComponentConfigs b;

    public a(CDComponentConfigs cDComponentConfigs, Context context) {
        this.b = cDComponentConfigs;
        this.f5299a = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        long currentTimeMillis = System.currentTimeMillis();
        SharedPreferences sharedPreferences = this.f5299a.getSharedPreferences("cdComponent", 0);
        this.b.y = sharedPreferences.getString("gaid", "");
        CDComponentConfigs cDComponentConfigs = this.b;
        if (cDComponentConfigs.z == -1 && !TextUtils.isEmpty(cDComponentConfigs.y)) {
            this.b.z = System.currentTimeMillis() - currentTimeMillis;
        }
        String googleAdId = GoogleAdId.getGoogleAdId(this.f5299a);
        CDComponentConfigs cDComponentConfigs2 = this.b;
        if (cDComponentConfigs2.z == -1) {
            cDComponentConfigs2.z = System.currentTimeMillis() - currentTimeMillis;
        }
        if (!TextUtils.isEmpty(googleAdId)) {
            this.b.y = googleAdId;
            sharedPreferences.edit().putString("gaid", this.b.y).commit();
        }
    }
}
