package com.changdu.component.core;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.provider.Settings;
import android.util.DisplayMetrics;
import android.view.WindowManager;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class CDComponentConfigs {

    /* renamed from: a  reason: collision with root package name */
    public String f5298a = "";
    public String b = "";
    public String c = "";
    public String d = "";
    public final String e = "4";
    public int f = 0;
    public String g = "";
    public String h = "";
    public String i = "";
    public String j = "";
    public String k = "";
    public String l = "";
    public String m = "";
    public String n = "";
    public int o = 350;
    public int p = 46;
    public final String q = Build.MODEL;
    public int r = 0;
    public int s = 0;
    public final String t = Build.VERSION.RELEASE;
    public String u = "";
    public String v = "";
    public int w = 0;
    public String x = "";
    public String y = "";
    public long z = -1;
    public String A = "";
    public Long B = -1L;

    public final void a(Context context) {
        new Thread(new a(this, context), "CDComponent-GoogleAdId").start();
        try {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRealMetrics(displayMetrics);
            this.r = displayMetrics.widthPixels;
            this.s = displayMetrics.heightPixels;
        } catch (Exception unused) {
            DisplayMetrics displayMetrics2 = context.getResources().getDisplayMetrics();
            this.r = displayMetrics2.widthPixels;
            this.s = displayMetrics2.heightPixels;
        }
        PackageManager packageManager = context.getPackageManager();
        this.u = context.getApplicationInfo().loadLabel(packageManager).toString();
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(context.getPackageName(), 1);
            this.v = packageInfo.versionName;
            this.w = packageInfo.versionCode;
        } catch (Exception unused2) {
        }
        this.x = Settings.Secure.getString(context.getContentResolver(), "android_id");
    }

    public String getGoogleAdId() {
        return this.y;
    }

    public long getGoogleAdIdTimeConsuming() {
        return this.z;
    }

    public String getSendId() {
        return this.A;
    }

    public CDComponentConfigs setAppId(String str) {
        this.f5298a = str;
        return this;
    }

    public CDComponentConfigs setAppIdKey(String str, String str2) {
        this.f5298a = str;
        this.b = str2;
        return this;
    }

    public CDComponentConfigs setAppKey(String str) {
        this.b = str;
        return this;
    }

    public CDComponentConfigs setChannel(String str) {
        this.g = str;
        return this;
    }

    public CDComponentConfigs setCoreVersion(String str) {
        this.d = str;
        return this;
    }

    public void setGoogleAdId(String str) {
        this.y = str;
    }

    public CDComponentConfigs setGuid(String str) {
        this.h = str;
        return this;
    }

    public CDComponentConfigs setLangId(int i) {
        this.f = i;
        return this;
    }

    public CDComponentConfigs setProductId(Long l) {
        this.B = l;
        return this;
    }

    public CDComponentConfigs setProductX(String str) {
        this.c = str;
        return this;
    }

    public CDComponentConfigs setSendId(String str) {
        this.A = str;
        return this;
    }

    public CDComponentConfigs setServerProtocolVersion(int i) {
        this.o = i;
        return this;
    }

    public CDComponentConfigs setSid(String str) {
        this.i = str;
        return this;
    }

    public CDComponentConfigs setUserAccountName(String str) {
        this.k = str;
        return this;
    }

    public CDComponentConfigs setUserHeadFrameUrl(String str) {
        this.n = str;
        return this;
    }

    public CDComponentConfigs setUserHeadUrl(String str) {
        this.m = str;
        return this;
    }

    public CDComponentConfigs setUserId(String str) {
        this.j = str;
        return this;
    }

    public CDComponentConfigs setUserNickname(String str) {
        this.l = str;
        return this;
    }
}
