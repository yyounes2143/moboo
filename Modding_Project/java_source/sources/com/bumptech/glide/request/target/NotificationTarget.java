package com.bumptech.glide.request.target;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.widget.RemoteViews;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.request.transition.Transition;
import com.bumptech.glide.util.Preconditions;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class NotificationTarget extends CustomTarget<Bitmap> {

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f5128Wwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Notification f5129Wwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f5130Wwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f5131Wwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Context f5132Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final RemoteViews f5133Wwwwwwwwwwwwwwwwwwwwww;

    private void Wwwwwwwwwwwwwwwwwwwwwwww() {
        ((NotificationManager) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((NotificationManager) this.f5132Wwwwwwwwwwwwwwwwwwwww.getSystemService("notification"))).notify(this.f5130Wwwwwwwwwwwwwwwwwww, this.f5131Wwwwwwwwwwwwwwwwwwww, this.f5129Wwwwwwwwwwwwwwwwww);
    }

    private void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Bitmap bitmap) {
        this.f5133Wwwwwwwwwwwwwwwwwwwwww.setImageViewBitmap(this.f5128Wwwwwwwwwwwwwwwww, bitmap);
        Wwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // com.bumptech.glide.request.target.Target
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Drawable drawable) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null);
    }

    @Override // com.bumptech.glide.request.target.Target
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Bitmap bitmap, @Nullable Transition<? super Bitmap> transition) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bitmap);
    }
}
