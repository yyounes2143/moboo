package com.bumptech.glide.request.target;

import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.widget.RemoteViews;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.request.transition.Transition;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class AppWidgetTarget extends CustomTarget<Bitmap> {

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f5096Wwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Context f5097Wwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final RemoteViews f5098Wwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ComponentName f5099Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int[] f5100Wwwwwwwwwwwwwwwwwwwwww;

    public final void Wwwwwwwwwwwwwwwwwwwwwwww() {
        AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(this.f5097Wwwwwwwwwwwwwwwwwww);
        ComponentName componentName = this.f5099Wwwwwwwwwwwwwwwwwwwww;
        if (componentName != null) {
            appWidgetManager.updateAppWidget(componentName, this.f5098Wwwwwwwwwwwwwwwwwwww);
        } else {
            appWidgetManager.updateAppWidget(this.f5100Wwwwwwwwwwwwwwwwwwwwww, this.f5098Wwwwwwwwwwwwwwwwwwww);
        }
    }

    @Override // com.bumptech.glide.request.target.Target
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Drawable drawable) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Bitmap bitmap) {
        this.f5098Wwwwwwwwwwwwwwwwwwww.setImageViewBitmap(this.f5096Wwwwwwwwwwwwwwwwww, bitmap);
        Wwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // com.bumptech.glide.request.target.Target
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Bitmap bitmap, @Nullable Transition<? super Bitmap> transition) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bitmap);
    }
}
