package com.didi.drouter.router;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import java.util.Collection;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class Result extends DataExtras<Result> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f5734Wwwwwwwwwwwwwwwwwwwwwwwww = 200;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f5735Wwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public View f5736Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Fragment f5737Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f5738Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Class<?> f5739Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ResultAgent f5740Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public Result(@NonNull Request request, @NonNull Collection<Request> collection, int i, RouterCallback routerCallback) {
        this.f5740Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ResultAgent(request, collection, this, routerCallback);
        this.f5735Wwwwwwwwwwwwwwwwwwwwwwwwww = i;
    }
}
