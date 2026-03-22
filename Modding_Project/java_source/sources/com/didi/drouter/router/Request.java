package com.didi.drouter.router;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.activity.result.ActivityResultLauncher;
import androidx.annotation.NonNull;
import androidx.lifecycle.Lifecycle;
import com.didi.drouter.api.DRouter;
import com.didi.drouter.api.Strategy;
import com.didi.drouter.router.IRouterInterceptor;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class Request extends DataExtras<Request> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final AtomicInteger f5723Wwwwwwwwwwwwwwwwwwwww = new AtomicInteger(0);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ActivityResultLauncher<Intent> f5724Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public IRouterInterceptor.IInterceptor f5726Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f5728Wwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f5729Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Strategy f5730Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Lifecycle f5731Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Context f5732Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Uri f5733Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f5725Wwwwwwwwwwwwwwwwwwwwwww = true;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f5727Wwwwwwwwwwwwwwwwwwwwwwwww = String.valueOf(f5723Wwwwwwwwwwwwwwwwwwwww.getAndIncrement());

    public Request(@NonNull Uri uri) {
        this.f5733Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = uri;
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww("router_request_build_uri", uri.toString());
    }

    public static Request Wwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        Uri parse;
        if (str == null) {
            parse = Uri.EMPTY;
        } else {
            parse = Uri.parse(str);
        }
        return new Request(parse);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwww(Context context, RouterCallback routerCallback) {
        if (context == null) {
            context = DRouter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        this.f5732Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = context;
        RouterLoader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, routerCallback).Wwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwww() {
        Wwwwwwwwwwwwwwwwwwwwwww(null, null);
    }

    @NonNull
    public Uri Wwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5733Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public String Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5727Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public Context Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5732Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // com.didi.drouter.router.DataExtras
    public /* bridge */ /* synthetic */ String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        return super.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
    }

    @Override // com.didi.drouter.router.DataExtras
    public /* bridge */ /* synthetic */ Parcelable Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        return super.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
    }

    @Override // com.didi.drouter.router.DataExtras
    public /* bridge */ /* synthetic */ int[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        return super.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
    }

    @Override // com.didi.drouter.router.DataExtras
    public /* bridge */ /* synthetic */ int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        return super.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
    }

    @Override // com.didi.drouter.router.DataExtras
    @NonNull
    public /* bridge */ /* synthetic */ Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return super.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }
}
